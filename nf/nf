#!/usr/bin/env python3

import sys
import os
import re
import datetime
from jinja2 import Template 

## ---------------------
## vhdl Script Application Project
def vhdlfile():

    typ = input("Type: [Enter] Compoent, [pkg/p] package, [tb/t] testbench):")
    print()
    if typ == "pkg" or typ == 'p':
        template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','vhdlpackage.txt'))
        component = input('Package Name:')
    elif typ == "tb" or typ == 't':
        template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','vhdltestbench.txt'))
        component = input('Testbench Name:')
    else:
        template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','vhdl.txt'))
        component = input('Component Name:')
        
    with open(template) as f:
        contents = f.read()
        tm = Template(contents)
        # Get Information
        project = input('Project:')
        brief = input('Brief Description:')
        x = datetime.datetime.now()
        date = x.strftime("%c")
        data = tm.render(   filename=filename,
                            project = project,
                            date = date,
                            component = component,
                            brief = brief
                        )
        f = open(filename, "w")
        f.write(data)
        f.close()
## ---------------------
## ---------------------
## Python Script Application Project
def pyfile():
    template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','py.txt'))
    with open(template) as f:
        contents = f.read()
        
        tm = Template(contents)
        # Get Information
        print()
        project = input('Project:')
        brief = input('Brief Description:')
        x = datetime.datetime.now()
        date = x.strftime("%c")
        data = tm.render(   filename=filename,
                            project = project,
                            date = date,
                            brief = brief,
                            main = main
                        )
        f = open(filename, "w")
        f.write(data)
        f.close()
## ---------------------

## ---------------------
## Bash File 
def shfile():
    # template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','c.txt'))
    template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','sh.txt'))
    with open(template) as f:
        contents = f.read()
        
        tm = Template(contents)
        # Get Information
        print()
        project = input('Project:')
        brief = input('Brief Description:')
        x = datetime.datetime.now()
        date = x.strftime("%c")
        data = tm.render(   filename=filename,
                            project = project,
                            date = date,
                            brief = brief
                        )
        f = open(filename, "w")
        f.write(data)
        f.close()

## ---------------------
## C Application Project
def cfile():
    # template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','c.txt'))
    template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','c.txt'))
    with open(template) as f:
        contents = f.read()
        
        tm = Template(contents)
        # Get Information
        print()
        project = input('Project:')
        brief = input('Brief Description:')
        x = datetime.datetime.now()
        date = x.strftime("%c")
        data = tm.render(   filename=filename,
                            project = project,
                            date = date,
                            brief = brief,
                            main = main
                        )
        f = open(filename, "w")
        f.write(data)
        f.close()

def hfile():
    template = os.path.expanduser(os.path.join('~','.dotfiles','nf','templates','h.txt'))
    with open(template) as f:
        contents = f.read()
        
        tm = Template(contents)
        # Get Information
        print()
        project = input('Project:')
        brief = input('Brief Description:')
        x = datetime.datetime.now()
        date = x.strftime("%c")
        data = tm.render(   filename=filename,
                            project = project,
                            date = date,
                            brief = brief,
                            caps = filename.upper().replace('.','_')
                        )
        f = open(filename, "w")
        f.write(data)
        f.close()

## ---------------------
## ------ MAIN ----------
if __name__ == "__main__":
   
    n = len(sys.argv)

    if n > 1:
        global filename
        filename = sys.argv[1]

        global extension
        extension = re.findall("\.[\w]+", filename)

        # Check if filename is main
        global main
        if re.search("main",filename) :
            main = True
        else:
            main = False

        # Switch case file name
        if '.c' in extension:
            cfile()
        elif '.h' in extension:
            hfile()
        elif '.py' in extension:
            pyfile()
        elif '.vhdl' in extension:
            vhdlfile()
        elif '.sh' in extension:
            shfile()
        else:
            os.system('touch ' + filename)
        
        os.system('clear')
        print("File Created : ",os.path.join(os.getcwd(),filename))
    else:
        print("argv not enough")

