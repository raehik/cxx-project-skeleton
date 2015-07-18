C++ project structure
=====================

This is meant to act as a generic structure you can use for most C++
programs, small or large (though it could be considered overkill for
tiny programs).


Directories
-----------

### `include`

The `include` directory should store all headers inside another
directory with the project's name, because otherwise your source files
won't use the same includes as other source files outside of the project
using the project's library.
