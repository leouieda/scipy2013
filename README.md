# Modeling the Earth with Fatiando a Terra

**Authors**:
[Leonardo Uieda](http://fatiando.org/people/uieda),
Valéria C. F. Barbosa

## Summary

Solid Earth geophysics
is the science of
using physical observations of the Earth
to infer it's inner structure.
This is done
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
large complicated IO files,
Matlab/VTK for visualization, etc).
Fatiando a Terra is
a Python library that
aims to unify the modeling pipeline
inside of the powerful Python language
and provide a framework
to build upon
existing algorithms.
This allows users to replace
the traditional shell scripting
with more versatile Python scripting.
Together with
the new IPython notebook,
Fatiando a Terra facilitates
reproducible computations
by integrating all stages
of the modeling process
with the output figures.
So far,
the project has focused
on potential field methods
(gravity and magnetics)
but the library already contains:
fast implementations
of forward modeling algorithms
(using Numpy and Cython),
generic inverse problem solvers,
unified geometry classes
(prism meshes, polygons, etc),
functions to automate
plotting with Matplotlib
(automatic griding,
simple GUIs,
picking,
projections, etc)
and Mayavi
(automatic conversion of geometry classes to VTK,
drawing continents,
etc).


## Author Bios

**Leonardo Uieda** has a Bachelor's and Master's degree in Geophysics. Has
developed open-source software for geophysical modeling throughout his
Bachelor's, Master's, and current PhD at the Observatorio Nacional, Brazil.
In 2010, started the development of Fatiando a Terra as way to test and explore
things learned in the class room or scholarly articles. Over time, it developed
into the framework used for his Master's dissertation and practically all
future work.

## Submission References

* [Project website](http://fatiando.org)
* [Source code on Github](https://github.com/leouieda/fatiando)
* Slides and posters from the various talks I've given are
  [available at figshare](http://figshare.com/authors/Leonardo_Uieda/97471)
