from django.shortcuts import redirect
from django.core.exceptions import PermissionDenied


class UserCheckMixin(object):

    def check_user(self, user):
        return True

    def user_check_failed(self, request, *args, **kwargs):
        return redirect('login')

    def dispatch(self, request, *args, **kwargs):
        if not self.check_user(request.user):
            return self.user_check_failed(request, *args, **kwargs)
        return super(UserCheckMixin, self).dispatch(request, *args, **kwargs)