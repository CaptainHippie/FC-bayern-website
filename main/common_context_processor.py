from .models import Bayern

def bayern_data(request):
	bayern = Bayern.objects.first()
	return {'bayern' : bayern} 
