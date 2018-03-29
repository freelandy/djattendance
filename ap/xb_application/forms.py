from django import forms
from .models import XBApplication
from aputils.widgets import DatePicker


class XBApplicationForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(XBApplicationForm, self).__init__(*args, **kwargs)
    self.fields['name'].label = "Name (First and Last)"
    self.fields['address'].label = "Home address"
    self.fields['automobile'].label = "Do you plan to bring an automobile?"
    self.fields['seats'].label = "If yes, how many seats including driver"
    self.fields['grad_date'].label = "Graduation date"
    self.fields['loans'].label = "Do you have any significant student loans or other debt?"
    self.fields['first_church'].label = "Locality where you first contacted the church:"
    self.fields['first_church_date'].label = "Date when you first contacted the church:"
    self.fields['ftta_service'].label = "Areas of church service you have been involved in/designated services while attending FTTA:"
    self.fields['marital'].label = "Marital status"
    self.fields['date_marriage'].label = "Date of marriage"
    self.fields['spouse_attitude'].label = "Spouse's attitude towards the training"
    self.fields['narrative'].label = "Personal Statement"

    # Try to add Other textbox... see https://stackoverflow.com/questions/38473957/how-to-add-text-box-next-to-a-radio-button
    self.fields['citizenship'].widget = ListTextWidget(data_list=('US Citizen', 'US Permanent Resident'), name='option-list')

  class Meta:
    model = XBApplication
    exclude = ['trainee', 'submitted', 'date_submitted', 'last_updated']
    widgets = {
      "birthdate": DatePicker(),
      "date_saved": DatePicker(),
      "date_baptized": DatePicker(),
      "first_church_date": DatePicker(),
      "grad_date": DatePicker(),
      "date_marriage": DatePicker(),
      "narrative": forms.Textarea
    }


class ListTextWidget(forms.TextInput):
    def __init__(self, data_list, name, *args, **kwargs):
        super(ListTextWidget, self).__init__(*args, **kwargs)
        self._name = name
        self._list = data_list
        self.attrs.update({'list': 'list__%s' % self._name})

    def render(self, name, value, attrs=None):
        text_html = super(ListTextWidget, self).render(name, value, attrs=attrs)
        data_list = '<datalist id="list__%s">' % self._name
        for item in self._list:
            data_list += '<option value="%s">' % item
        data_list += '</datalist>'

        return (text_html + data_list)
