from django.shortcuts import redirect

class LoginRequired:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        '''code to be executed for each request before the view and later middleware are called'''
        response = self.get_response(request)
        
        '''code to be executed for each request after the view is called'''
        return response

    def process_view(self, request, view_func, *view_args, **view_kargs):
        '''called just before django calls the view. return either none or httpresponse'''
        if request.session['logged_user_id']:
            return redirect('home')