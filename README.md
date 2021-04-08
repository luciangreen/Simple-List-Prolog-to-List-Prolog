# Simple-List-Prolog-to-List-Prolog

Converts Simple List Prolog algorithms to List Prolog algorithms

# Prerequisites

* Please download and install SWI-Prolog for your machine at `https://www.swi-prolog.org/build/`.

# 1. Install manually

Download <a href="http://github.com/luciangreen/Simple-List-Prolog-to-List-Prolog/">this repository</a>.

# 2. Or Install from List Prolog Package Manager (LPPM)

* Download the <a href="https://github.com/luciangreen/List-Prolog-Package-Manager">LPPM Repository</a>:

```
git clone https://github.com/luciangreen/List-Prolog-Package-Manager.git
cd List-Prolog-Package-Manager
swipl
['lppm'].
lppm_install("luciangreen","Simple-List-Prolog-to-List-Prolog")
halt
```

# Running

* In Shell:
`cd Simple-List-Prolog-to-List-Prolog`
`swipl`
`['slp2lp.pl'].`

* Convert Simple List Prolog code to List Prolog code by running:
```
?- slp2lp([[f1,[a,b,c,d,e],(:-),[[+,[a,b,f]],[+,[c,f,g]],[+,[d,g,h]],[=,[h,e]]]]],Algorithm2),writeln(Algorithm2).
Algorithm2=[[[n,f1],[[v,a],[v,b],[v,c],[v,d],[v,e]],":-",[[[n,+],[[v,a],[v,b],[v,f]]],[[n,+],[[v,c],[v,f],[v,g]]],[[n,+],[[v,d],[v,g],[v,h]]],[[n,=],[[v,h],[v,e]]]]]]
```
