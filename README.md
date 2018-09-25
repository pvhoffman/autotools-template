# GNU Autotools Starter Project Template

A simple starter template for a C++ project using [GNU autotools](https://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html ) to create a build system and [Catch2](https://github.com/catchorg/Catch2) for unit testing. The hope for this template is to simplify the process of creating a build system for with autotools (autoconf, automake, etc.). 

## Getting Started

Follow the step below to start a new autotools project from this template:
1.  Clone this repository:  `git clone https://github.com/pvhoffman/autotools-template.git`.
2.  Change into the newly cloned directory: `cd autotools-template`.
3.  Execute autogen.sh with --path parameter to specify the path of the new project and the --name parameter to specify the name of the new project.  For example, to create a project named 'foo' at '~/bar' execute: `./autogen.sh --path ~/bar --name foo`.
4.  Change to the directory specified by the --path parameter and execute `./configure`, `make`, and `make check`.
5.  Create a new git repository at the new project path if necessary/required.

