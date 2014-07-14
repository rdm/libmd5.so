To build:

make

To test:

make test

-------------------------------------------------
Requirements (assuming Ubuntu):

sudo apt-get install gcc-multilib lib32gcc1

-------------------------------------------------

Change -m32 in Makefile to -m64 for 64 bit version.

-------------------------------------------------

If jconsole is not defined, you may edit the makefile to refer to another J interpreter. However, it's probably better to build a script to serve in its place. For example:

#!/bin/sh
exec $HOME/j602/bin/jconsole "$@"

or

#!/bin/sh
exec /usr/bin/ijconsole "$@"

Note that the effective result of these steps would be to put jconsole in your computer's path. But no one can actually advise what you need for that to happen without knowing how your computer is set up.
