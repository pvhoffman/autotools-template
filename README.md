# GNU Autotools Starter Project Template

A simple starter template for a C++ project using [GNU autotools](https://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html ) to create a build system and [Catch2](https://github.com/catchorg/Catch2) for unit testing. The hope for this template is to simplify the process of creating a build system for with autotools (autoconf, automake, etc.). 

## Getting Started

Follow the step below to start a project from this template:
1.  Close this repository:  `git clone https://github.com/pvhoffman/autotools-template.git`
2.  Edit **configure.ac**:
        - Change **project_name** in the **AC_INIT** macro to your actual project name.
        - Change the email address to your email address in the **AC_INIT** macro.
        - Change the C++ version, if necessary, in the **AX_CXX_STDCXX** macro.  Valid values are 11, 14, and 17, depending supported version of your compiler.
3.  Edit **src/Makefile.am**:
        - Change **project_name** in the **bin_PROGRAMS** configuration to your actual project name.
        - Change the **project_name** portion of the **project_name_SOURCES** configuration to your actual project name.
        - Add additional source file names to the *SOURCES* configuration if necessary.
4.  Edit  **test/Makefile.am**:
        - Change **project_name_tests** in the **TESTS** configuration to your test project name.
        - Change the **check_PROGRAMS** configuration to your test project name, same as above.
        - Change the **project_name_tests** portion of the **project_name_tests_SOURCES** configuration to your test project name.
5.  Execute `autoreconf --install` from the top level directory to generate the configure script and create the required files for autotools.
6.  Execute the configure script, e.g. `./configure`, to generate the make files.
7.  Execute `make` to compile your project.
8.  To run unit tests execute `make check`.
9.  Remove the .git directory and create a new repository with `git init`, `git add .`, etc.

