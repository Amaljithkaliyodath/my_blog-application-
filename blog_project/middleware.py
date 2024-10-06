from django.http import HttpResponse
from django.core.exceptions import DisallowedHost

class IgnoreDisallowedHostMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        try:
            return self.get_response(request)
        except DisallowedHost:
            return HttpResponse(status=400)  # Return a 400 Bad Request response
