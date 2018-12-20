from django import forms


class UploadFileForm(forms.Form):
  file = forms.FileField()


class DisplayForm(forms.Form):
  outline = forms.CharField(widget=forms.Textarea(attrs={'cols': 100, 'rows': 150}))
