"""
Definition of urls for python_webapp_django.
"""

from datetime import datetime
from django.urls import path
#from django.conf.urls import url
import django.contrib.auth.views
from django.contrib.auth.views import LoginView
from django.views.static import serve


from django.conf import settings

import app.forms
import app.views

# Uncomment the next lines to enable the admin:
# from django.conf.urls import include
# from django.contrib import admin
# admin.autodiscover()


urlpatterns = [
    # Examples:
    path('', app.views.home, name='home'),
    path('layout/', app.views.layout, name='layout'),
    path('contact/', app.views.contact, name='contact'),
    path('cart/', app.views.cart, name='cart'),
    path('checkout/', app.views.checkout, name='checkout'),
    path('about/', app.views.about, name='about'),

    # path(
    #     'login/$',
    #     LoginView.as_view({ 
    #         'template_name': 'login.html',
    #         'authentication_form': app.forms.BootstrapAuthenticationForm,
    #         'extra_context':{
    #             'title': 'Log in',
    #             'year': datetime.now().year,
    #         }
    #     }), 
    #     name='login'),
    
    
    
    # path('logout$',
    #     django.contrib.auth.views.logout,
    #     {
    #         'next_page': '/',
    #     },
    #     name='logout'),



    # path('login/',
    #     django.contrib.auth.views.login,
    #     {
    #         'template_name': 'login.html',
    #         'authentication_form': app.forms.BootstrapAuthenticationForm,
    #         'extra_context':
    #         {
    #             'title': 'Log in',
    #             'year': datetime.now().year,
    #         }
    #     },
    #     name='login'),
    # path('logout$',
    #     django.contrib.auth.views.logout,
    #     {
    #         'next_page': '/',
    #     },
    #     name='logout'),
    path('static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
]
