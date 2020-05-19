# Simple-List-Prolog-to-List-Prolog
Converts Simple List Prolog algorithms to List Prolog algorithms


# Installation from List Prolog Package Manager (LPPM)

* Optionally, you can install from LPPM by installing <a href="https://www.swi-prolog.org/build/">SWI-Prolog</a> for your machine, downloading the <a href="https://github.com/luciangreen/List-Prolog-Package-Manager">LPPM Repository</a>, loading LPPM with `['lppm'].` then installing the package by running `lppm_install("luciangreen","Simple-List-Prolog-to-List-Prolog").`.

Install:
Load each file into SWI-Prolog using ['slp2lp.pl'].

Run:

Convert Simple List Prolog code to List Prolog code by running:
```
?- slp2lp([[f1,[a,b,c,d,e],(:-),[[+,[a,b,f]],[+,[c,f,g]],[+,[d,g,h]],[=,[e,h]]]]],Algorithm2),writeln1(Algorithm2).
[[[n,f1],[[v,a],[v,b],[v,c],[v,d],[v,e]],":-",[[[n,+],[[v,a],[v,b],[v,f]]],[[n,+],[[v,c],[v,f],[v,g]]],[[n,+],[[v,d],[v,g],[v,h]]],[[n,=],[[v,e],[v,h]]]]]]
```