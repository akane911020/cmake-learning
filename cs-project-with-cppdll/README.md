# C# project with C++ dll project

This sample creates a Visual Studio solution which has a C# project and a C++
dll project. C++ hello world function is called from C# exe.

Please run CMakeGenerate.bat to create the solution.

```bat
cd build
CMakeGenerate.bat
```


## How do things work


### src/CMakeLists.txt

First of all, generating ZERO_CHECK project is suppressed by setting
CMAKE_SUPPRESS_REGENERATION true because it is not necessary for this sample.

Then, the name of this solution is defined. The solution has 2 build
configurations, Debug and Release. If CMAKE_CONFIGURATION_TYPES is not set
explicitly, some other build configurations such as MinSizeRel are added to the
solution.

In the next part, output directories are defined. It is important because in
this solution, the exe file and the dll file are expected to be in the same
directory to call C++ APIs from C# executable file.
CMAKE_RUNTIME_OUTPUT_DIRECTORY_<Config> is the property that specifies the path
to the direcotry in which exe files are output.
CMAKE_LIBRARY_OUTPUT_DIRECTORY_<Config> is same one for dlls. And if you want to
add some static library projects into this solution, you need to setup
CMAKE_ARCHIVE_OUTPUT_DIRECOTRY_<Config> also.

And then, 2 directoryes are added into this cmake project. These directories
contain source codes of exe and dll. Both directories have each CMakeLists file
to define their VS project details.

Finally, DllCaller is set as the start up project.


### src/DllCaller/CMakeLists.txt

This file defines the VS project to create C# exe file.
It enables C# language and adds source code file.


### src/HelloWorldDll/CmakeLists.txt

This file defines the VS project to create C++ dll file.
It enables C++ language and adds source codes. The second argument of
add_library (SHARE) means that this project creates dll file.

Finally, DLL_EXPORT is defined. DLL_EXPORT is a compile switch which is used in
helloworld.h. This switches the declarations of APIs are to import or to export.
In this project, DLL_EXPORT must be defined to export APIs.
