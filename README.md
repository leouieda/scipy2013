# Modeling the Earth with Fatiando a Terra

**Authors**:
[Leonardo Uieda](http://fatiando.org/people/uieda),
[Vanderlei C. Oliveira Jr](http://fatiando.org/people/oliveira-jr),
[Valéria C. F. Barbosa](http://lattes.cnpq.br/0391036221142471)

**Slides**: You can view the slides for the presentation in HTML [here](http://leouieda.github.io/scipy2013/?theme=night#/).
Just use the keyboard arrow keys to navigate.

## Summary

Solid Earth geophysics
is the science of
using physical observations of the Earth
to infer its inner structure.
Generally, this is done
with a variety of
numerical modeling techniques
and inverse problems.
The development of new algorithms
usually involves
copy and pasting of code,
which leads to errors
and poor code reuse.
Added to this is
a modeling pipeline
composed of various tools
that don't communicate with each other
(Fortran/C for computations,
large complicated I/O files,
Matlab/VTK for visualization, etc).
Fatiando a Terra is
a Python library that
aims to unify the modeling pipeline
inside of the Python language.
This allows users to replace
the traditional shell scripting
with more versatile and powerful
Python scripting.
Together with
the new IPython notebook,
Fatiando a Terra can integrate
all stages of
the geophysical modeling process,
like data pre-processing,
inversion,
statistical analysis,
and visualization.
However,
the library can also
be used for
quickly developing stand-alone programs
that can be integrated
into existing pipelines.
Plus,
because functions
inside Fatiando a Terra use
a common data and mesh format,
existing algorithms
can be combined
and new ideas can
build upon existing functionality.
This flexibility facilitates
reproducible computations,
prototyping of new algorithms,
and interactive teaching exercises.
Although the project has
so far focused
on potential field methods
(gravity and magnetics),
some numerical tools
for other geophysical methods
have been developed as well.
The library already contains:
fast implementations
of forward modeling algorithms
(using Numpy and Cython),
generic inverse problem solvers,
unified geometry classes
(prism meshes, polygons, etc),
functions to automate
repetitive plotting tasks with
Matplotlib
(automatic griding,
simple GUIs,
picking,
projections, etc)
and Mayavi
(automatic conversion of geometry classes to VTK,
drawing continents,
etc).
In the future,
we plan to continuously implement
classic and state-of-the-art algorithms
as well as sample problems
to help teach geophysics.

## Author Bios

**Leonardo Uieda**
is a PhD student of Geophysics
at the Observatorio Nacional, Brazil,
where he develops
open-source software
for geophysical modeling and inversion.
In 2010,
he started the development
of Fatiando a Terra
as a way to test and explore
things learned in the class room and scholarly articles.

**Vanderlei C. Oliveira Jr**
obtained a PhD in Geophysics at the Observatório Nacional, Brazil,
with emphasis in potential field methods
(gravity and magnetics) and inverse problems.
He is currently developing
methods for processing and
inverting potential field data.

**Valéria C. F. Barbosa**
is a researcher at
the Observatorio Nacional, Brazil,
working mainly on
inverse problems
in potential field methods.

## Submission References

* [Project website](http://fatiando.org)
* [Documentation](http://fatiando.readthedocs.org)
* [Source code on Github](https://github.com/leouieda/fatiando)
* Slides and posters from the various talks I've given are
  [available at figshare](http://figshare.com/authors/Leonardo_Uieda/97471)
