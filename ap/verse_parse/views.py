from django.http import HttpResponse
from django.shortcuts import render
from django.template import Context, loader
from django.template.context_processors import csrf
from io import StringIO
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfinterp import PDFPageInterpreter, PDFResourceManager
from pdfminer.pdfpage import PDFPage
from verse_parse import outline, references
from verse_parse.forms import UploadFileForm


def handle_uploaded_file(f):
  '''
  Takes uploaded pdf file, returns outline of verse references.
  Gets verse text from references.
  Basically gets all needed data for HTML template.
  '''
  data = pdf_to_text(f)
  partition = data.partition('Scripture Reading:')
  title = outline.get_title(partition[0])
  ref_outline = outline.extract_references(partition[2])

  for i in range(len(ref_outline)):
    outline_pt = ref_outline[i]

    for ref in outline_pt['refs']:
      ref['string'] = references.reference_to_string(ref)

      if ref['chapter'] is not None:
        ref['repeat'] = outline.find_repeat(ref_outline, ref, i)

        if ref['repeat'] is False:
          ref['verses'] = references.get_verses(ref)
  return (title, ref_outline)


def upload_file(request):
  if request.method == 'POST':
    form = UploadFileForm(request.POST, request.FILES)

    if form.is_valid():
      (title, ref_outline) = handle_uploaded_file(request.FILES['file'])

      display_template = loader.get_template('verse_parse/verse_sheet.html')
      context = Context(
        {'outline': ref_outline,
         'title': title})
      return HttpResponse(display_template.render(context))

    else:
      c = {'form': form}
      c.update(csrf(request))

      return render(request, 'verse_parse/upload.html', c)
  else:
    form = UploadFileForm()

  c = {'form': form}
  c.update(csrf(request))

  return render(request, 'verse_parse/upload.html', c)


def pdf_to_text(fname):

  # input option
  password = ''
  pagenos = set()
  maxpages = 0
  codec = 'utf-8'
  caching = True
  # showpageno = True
  laparams = LAParams()

  rsrcmgr = PDFResourceManager(caching=caching)
  outfp = StringIO()
  device = TextConverter(rsrcmgr, outfp, codec=codec, laparams=laparams)

  interpreter = PDFPageInterpreter(rsrcmgr, device)
  for page in PDFPage.get_pages(fname, pagenos, maxpages=maxpages, password=password, caching=caching, check_extractable=True):
    interpreter.process_page(page)
  device.close()
  return outfp.getvalue()
