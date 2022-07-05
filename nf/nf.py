#!/usr/bin/env python3

import sys
import os
import re
import datetime
from jinja2 import Template 

def cfile():
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
        else:
            os.system('touch ' + filename)
        
        os.system('clear')
        print("File Created : ",os.path.join(os.getcwd(),filename))
    else:
        print("argv not enough")

