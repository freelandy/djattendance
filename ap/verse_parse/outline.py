import re

from .bible_re import scripture_re
from .references import InvalidReferenceException, normalize_reference


def get_title(text):
  """
  Returns message title (right now, just 'Message One', not the actual title)
  """
  p = re.compile(r'(?:Message\s*\w*)(?=\s*\n)')
  title = re.search(p, text).group()
  return title


def extract_references(text):
  """
  Extract from a block of text a list of 2-tuples
  containing an outline point and a list of verse references (represented as dictionaries) under that outline point.
  """
  outline = []
  for r in re.finditer(scripture_re, text):
    try:
      # find Roman numerals / outline points
      is_bullet = False
      for i in range(1, 5):
        if r.group(i):

          outline.append(
            {'string': r.group(i),
             'level': i,
             'refs': []})
          is_bullet = True

      if is_bullet is False:

        # if no outline points yet, verses are from Scripture Reading
        if len(outline) == 0:
          outline.append(
            {'string': 'Scripture Reading',
             'level': 0,
             'refs': []})

        if r.group('book'):  # reference contains book name
          outline[-1]['refs'].append(
            normalize_reference(bookname=r.group('book'), chapter=r.group('chapter'), verse=r.group('verse'),
                                end_chapter=r.group('end_chapter'), end_verse=r.group('end_verse'))
          )
          if r.group('more_verses'):  # reference contains multiple non-consecutive verse numbers
            verses = extract_more_verses(r.group('more_verses'))  # get extra verses in a list
            for verse in verses:  # append one reference for each extra verse
               outline[-1]['refs'].append(
                  normalize_reference(bookname=r.group('book'), chapter=r.group('chapter'), verse=verse[0], end_verse=verse[1]))
        else:
          # get book from previous reference
          i = -1
          while len(outline[i]['refs']) == 0:
            i -= 1
          book = outline[i]['refs'][-1]['book']
          if r.group('headless_chapter'):  # headless reference
            outline[-1]['refs'].append(
              normalize_reference(bookname=book, chapter=r.group('headless_chapter'), verse=r.group('headless_verse'),
                                  end_chapter=r.group('headless_end_chapter'), end_verse=r.group('headless_end_verse')))
            if r.group('more_headless_verses'):
              verses = extract_more_verses(r.group('more_headless_verses'))
              for verse in verses:
                outline[-1]['refs'].append(
                  normalize_reference(bookname=book, chapter=r.group('headless_chapter'),
                                      verse=verse[0], end_chapter=verse[1], end_verse=verse[2]))
          else:
            if r.group('lonely_verse'):
              i = -1
              while len(outline[i]['refs']) == 0:
                i -= 1
              chapter = outline[i]['refs'][-1]['chapter']
              outline[-1]['refs'].append(normalize_reference(bookname=book, chapter=chapter, verse=r.group('lonely_verse'), end_verse=r.group('lonely_end_verse')))

              if r.group('more_lonely_verses'):
                verses = extract_more_verses(r.group('more_lonely_verses'))
                for verse in verses:
                  outline[-1]['refs'].append(normalize_reference(bookname=book, chapter=chapter, verse=verse[0], end_chapter=verse[1], end_verse=verse[2]))

    except InvalidReferenceException:
      pass
  return outline


def extract_more_verses(text):
  """
  Extract a list of verse numbers from a string of verse numbers, i.e. '3, 7, 10-14, 16'.
  Returns a list of tuples: (verse, end_chapter, end_verse,).
  e.g. '3, 10-14, 16-5:9' --> [('3', '', '',), ('10', '', 14',), ('16', '5', '9',)]
  """
  verses = re.findall(re.compile(r'(?P<verse>\d{1,3})[a-z]?(?:\s*-\s*(?:(?P<end_chapter>\d{1,3}):)?(?P<end_verse>\d{1,3}))?'), text)
  return verses


def find_repeat(outline, reference, i):
  '''
  Finds the first occurrence of the given reference in the outline,
  from the beginning of the outline until outline[i].
  Returns False if there are no occurrences before outline[i],
  otherwise returns the outline point of the first occurrence as a string (e.g. 'II.A.').
  '''
  for j in range(i):
    outline_pt = outline[j]
    for ref in outline_pt['refs']:
      if ref['book'] == reference['book']:
        if ref['chapter'] == reference['chapter']:
          if ref['verse'] == reference['verse']:
            if ref['end_chapter'] == reference['end_chapter']:
              if ref['end_verse'] == reference['end_verse']:
                repeat_point = outline_pt['string']

                level = outline_pt['level']
                k = j - 1
                while level > 1 and k >= 0:
                  if outline[k]['level'] == level - 1:
                    repeat_point = outline[k]['string'].strip() + repeat_point
                    level = outline[k]['level']
                  k -= 1

                return repeat_point
  return False
