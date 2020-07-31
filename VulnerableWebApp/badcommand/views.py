from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
import subprocess

from .models import Command


def index(request):
    if request.method == 'POST':
        command = request.POST.get('command')
        command = str(command)
        response = subprocess.call(command, stderr=subprocess.STDOUT)

        if response == 0:
                output = "Website is online"
        else:
                output = "Website is offline"
        context = {
                'output': output,
            }
        return render(request, 'badcommand/results.html', context)

    else:
        context = {
        }
        return render(request, 'badcommand/index.html', context )
















def results(request, command_id):
    command = Command.objects.get(pk=1)
    command = str(command)
    response = subprocess.call(command, stderr=subprocess.STDOUT)
    template = loader.get_template('badcommand/results.html')

    if response == 0:
        output = "Website is online"
    else:
        output = "Website is offline"
    context = {
        'output': output,
    }
    return HttpResponse(template.render(context, request))
