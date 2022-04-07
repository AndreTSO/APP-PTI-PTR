"""
Definition of views.
"""

from django.shortcuts import render
from django.http import HttpRequest
from django.template import RequestContext
from datetime import datetime

def home(request):
    """Renders the home page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'layout.html',
        {
            'title':'Home Page',
            'year':datetime.now().year,
        }
    )
    
def layout(request):
    """Renders the home page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'layout.html',
        {
            'title':'Home Page',
            'year':datetime.now().year,
        }
    )

def index(request):
    """Renders the home page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'index.html',
        {
            'title':'index Page',
            'year':datetime.now().year,
        }
    )

def contact(request):
    """Renders the contact page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'contact.html',
        {
            'title':'Contact',
            'message':'Your contact page.',
            'year':datetime.now().year,
        }
    )

def cart(request):
    """Renders the cart page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'cart.html',
        {
            'title':'Cart',
            'message':'Shopping cart',
            'year':datetime.now().year,
        }
    )

def checkout(request):
    """Renders the checkout page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'checkout.html',
        {
            'title':'Checkout',
            'message':'Your checkout page',
            'year':datetime.now().year,
        }
    )    

def about(request):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'about.html',
        {
            'title':'About',
            'message':'Your application description page.',
            'year':datetime.now().year,
        }
    )
