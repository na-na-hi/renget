# C Builds and Libraries for the Inexperienced

This guide was made for [/agdg/](https://boards.4channel.org/vg/catalog#s=agdg),  [/gedg/](https://boards.4channel.org/g/catalog#s=gedg), and [/chad/](https://boards.4channel.org/g/catalog#s=chad)! If you see any glaring errors, feel free to tell FroggyGreen !!UYKMqlVW9eC, he would appreciate the criticism to make this tutorial better.

In this world if anything is eternal, it is the learning curve of building C projects. The problem is that, like any subject, people turn something easy into something hard by skipping fundamental steps. This might not be your fault. You might ask: "How do I use a library?", and someone answers with "CMake". And while CMake is useful, it is NOT what you should be using for libraries the very first time you learn about them. It is important to build and link a simple library using the compiler before trying it in CMake. That being said, you might have to do a lot of reading, but none of this is actually hard to do.

This tutorial assumes you already know how to build and run small programs like "Hello World"  from the command line and that you understand how to read and write code in the C language. The reader should definitely have some command line literacy and be able to clone repositories with git. 

I also assume you are using a GNU/Linux distro and the programs listed.  If not, you will need to find the equivalent programs and follow the equivalent steps in those programs. I don't assume you've built a project that used a library, outside of the standard library, which your typical compiler handles for you automatically.

We will do different build methods for many of the sections in this order:

1. gcc, the GNU compiler collection
2. CMake

I recommend that you read the whole thing. (Even the first section, trust me.)

***

[TOC2]

***

## Howdy World

In the command line run
 
```bash
mkdir "Howdy World" && cd "Howdy World"
mkdir src
vim src/main.c
```

wherever you like to keep your projects. If you don't want to use vim, then use your preferred text editor. The contents of the file should look like this:

```C
// include input and output header from the standard library
#include <stdio.h>

/*
What you guys are referring to as Linux, is in fact, GNU/Linux, or as I've recently taken to calling it, GNU plus Linux.
Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX.
Many computer users run a modified version of the GNU system every day, without realizing it. 
Through a peculiar turn of events, the version of GNU which is widely used today is often called "Linux", and many of its users are not aware that it is basically the GNU system, developed by the GNU Project.

There really is a Linux, and these people are using it, but it is just a part of the system they use. Linux is the kernel: the program in the system that allocates the machine's resources to the other programs that you run. 
The kernel is an essential part of an operating system, but useless by itself; it can only function in the context of a complete operating system. 
Linux is normally used in combination with the GNU operating system: the whole system is basically GNU with Linux added, or GNU/Linux. 
All the so-called "Linux" distributions are really distributions of GNU/Linux.
*/

// entry point
int main(void)
{
        /* print */
        printf("Howdy World!\n");

        // return zero
        return(0);
}
```

### gcc

The gcc compiler goes through four stages in order to build the program.

1. Preprocessing

	* Removes comments in the code.
	* Handles preprocessor directives that start with '#' such as including header files (.h) and macros.

	To stop after preprocessing, type out

	```bash
	gcc src/main.c -E
	```
	and you'll see a long-ass output that I won't even bother pasting. What you observe is all the code in the included header file and the main file we made, without comments and macros, all together.

2. Compiling

	To stop after compiling, do

	```bash
	gcc src/main.c -S
	```
	and the code is transcribed into an intermediate representation. Lets print it out for fun.

	```bash
	cat main.s
	```

	yields
 
	```
	.file	"main.c"
		.text
		.section	.rodata
	.LC0:
		.string	"Howdy World!"
		.text
		.globl	main
		.type	main, @function
	main:
	.LFB0:
		.cfi_startproc
		pushq	%rbp
		.cfi_def_cfa_offset 16
		.cfi_offset 6, -16
		movq	%rsp, %rbp
		.cfi_def_cfa_register 6
		leaq	.LC0(%rip), %rax
		movq	%rax, %rdi
		call	puts@PLT
		movl	$0, %eax
		popq	%rbp
		.cfi_def_cfa 7, 8
		ret
		.cfi_endproc
	.LFE0:
		.size	main, .-main
		.ident	"GCC: (GNU) 12.2.1 20230201"
		.section	.note.GNU-stack,"",@progbits
	```

	Now lets clean up that file with 

	```bash
	rm main.s
	```

	Sometimes people refer to the whole build process as compiling, which can make things confusing.

3. Assembling

	Assembling takes the intermediate representation, and converts it into machine language, saved in what is called an object file.
	
	To stop building after the assembling stage:

	```bash
	mkdir obj
	gcc src/main.c -c -o obj/main.o
	```

	This time, we are using the ```-o``` output flag which needs to take in a path. With the goal of organization, we want to place the object file in a directory instead of just spawning it wherever we run the command. Keep in mind that the other compiler stage flags that we've seen so far ('-E', '-S', '-c') don't have an input. So you might also see it typed like ```-c src/main.c``` for example. 

4. Linking

	Here we glob all the object files together and produce a binary. In this case, gcc automatically links the object code of the standard library with the object code we made. So lets link our object file from the previous step.

	```bash
	mkdir bin
	gcc obj/main.o -o bin/"Howdy World"
	```

	Now run the program with
    
	```./bin/"Howdy World"```

	which prints
	
	```bash
	Howdy World!
	```

	If you want, you can delete the object file with ```rm -r obj``` after you have your binary. 

People often skip step by step compilation without ever trying it once.

THIS IS BAD!

When we discuss libraries later, we'll see the importance of stopping the build process before the linking stage. Of course, now that you understand that the compiler has these different stages, there is no harm running
	
```bash
gcc main.c
./a.out
```

to do all four steps and then run the program, printing the same result. For our purposes, if there is anything you need to take away from this, it's that it is useful to understand how to stop the build process before the linking stage.
	
### CMake

In order to make the build process easier for large projects, makefiles can be used to specify build details. The reason why you would want one is not obvious yet, because so far this program compiles easily in one line. A cool thing about makefiles is that you can break a project up so that only the files that are altered have to be recompiled.  I won't go through creating makefiles from scratch, but we will use CMake to create makefiles for us.  If you want an idea of how a makefile works, you can look at an example with C++ [here](https://youtu.be/_r7i5X0rXJk). For an in depth look, I refer you to the official [GNU Make documentation](https://www.gnu.org/software/make/manual/).

CMake involves the use of high-level 'targets' that represent libraries and binaries as well as our own custom targets. To get our feet wet, we should try using CMake for the most basic of examples. First lets clean up what we built with gcc.

```bash
rm -r bin obj
```
Next, we need to create a CMakeLists file.

```bash
vim CMakeLists.txt
```

The contents are

```
make_minimum_required(VERSION 3.20)
project(HowDWorld C)
add_executable(HowdyWorld src/main.c)
```

* [Specify the minimum required version](https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html) at the very top of the file. You can check your current CMake version by typing ``` cmake -version``` in the command line.

* Now look at the second line. CMake gives us access to a top-level [project name](https://cmake.org/cmake/help/latest/variable/CMAKE_PROJECT_NAME.html) variable separate from the executable target. This makes sense because a CMake project can be a collection of different targets.

* The [last line](https://cmake.org/cmake/help/latest/command/add_executable.html) creates an executable target. This allows us to make our binary. CMake by default identifies the 'build tree' in the directory where you run the ```cmake``` command. ```CMakeCache.txt	``` is generated in this directory, and it is also the default location for the binary .

Now lets build the project!

```bash
cmake .
make
```
The dot is used to tell CMake to look in the current directory for ```CMakeLists.txt```. Specifying the location of this file is required with CMake, and you can not have more than one CMakeLists file in a single directory.  On the other hand, make will automatically search in the current directory for the makefile.

If we run the binary with

```
./HowdyWorld
```

we get a familiar message. Now you might notice that a lot of things about this setup are crappy.  Let us print the contents of the project directory.

```
ls
```

The output

```
CMakeFiles  src  CMakeCache.txt  cmake_install.cmake  CMakeLists.txt  HowdyWorld  Makefile
```

is not very pretty. That's because our build tree is just sitting in the same directory as everything else. Let's clean up all this clutter.

```bash
rm -r CMakeFiles/ CMakeCache.txt cmake_install.cmake HowdyWorld Makefile
```

We want CMake to do its business somewhere else.  Try

```bash
mkdir build
cd build
cmake ../
make
cd ..
```

Now all that junk will be isolated to our build directory. We run ```cmake ../``` in the build directory so that CMake identifies the build directory as the location of the build tree, but searches for```CMakeLists.txt``` in the parent directory. However, now the binary is located in the build folder. Instead you may want to put that binary in a different, dedicated place. Lets edit our CMakeLists to see how we do that.

```
cmake_minimum_required(VERSION 3.20)
project(HowDWorld C)
add_executable(app src/main.c)
set_target_properties(app PROPERTIES OUTPUT_NAME "${PROJECT_SOURCE_DIR}/bin/Howdy World")
```

Notice the additional line. By default, the binary is given the same name as the executable target. However, there are certain rules about the allowed characters in a CMake target name. For example, we can't put a space in the name or use '/' for a different path. Fortunately, we can explicitly set the binary's output path by [setting the target's properties](https://cmake.org/cmake/help/latest/command/set_target_properties.html?highlight=set_target_pro#command:set_target_properties). For the ```OUTPUT_NAME``` property, we specify the full path relative to the [ project source directory](https://cmake.org/cmake/help/v3.0/variable/PROJECT_SOURCE_DIR.html). Now CMake knows where to put the binary, regardless of where the build tree is located. 

Make sure to remove the old binary and then make a directory for the new binary. It's time to repeat the build process.

```bash
rm build/HowdyWorld
mkdir bin
cd build
cmake ../
make
cd ..
```

Nice! Looks like things are organized now. However, typing all these commands over and over again to rebuild the project is annoying. We would have to type all those commands anytime we changed the source code! It would behoove us to automate these commands with a script. On GNU/Linux, you can make a build script in bash and give it permission to execute.

```
touch build.sh
chmod +x build.sh
vim build.sh
```

The contents should look like this:

```bash
#!/bin/bash
# Build script for the application.

# cd to the script directory so you can run it anywhere
cd "$(dirname "$0")"

mkdir -p build
mkdir -p bin
cd build
cmake ../
make
```
With scripts we don't have to ```cd``` back to where we started.  Next delete the binary and build directories, then try running the script from some arbitrary directory to make sure it works.

```bash
rm -r bin build
cd /path/to/some/directory/of/your/choice
./path/to/the/project/"Howdy World"/build.sh
./path/to/the/project/"Howdy World"/bin/"Howdy World"
```

## Project with Two Source Files and a Header File

In the terminal, ```cd``` to wherever you like to keep your projects, and run the following:
 
```bash
mkdir sum && cd sum
mkdir src include
touch src/main.c src/add.c include/add.h
```

While I personally don't like putting my headers in another directory, some people do. We are also doing this so we can understand how to include header files from some other directory, a skill we'll need once we get to libraries anyways. Using a text editor, add the following contents to the appropriate files.

```include/add.h```
```C
#pragma once
float add(float x, float y);
```

```src/add.c```
```C
#include "add.h"
float add(float x, float y) { return x + y; }
```

```src/main.c```
```C
#include <stdio.h>
#include "add.h"

int main(void)
{
        printf("%f + %f = %f\n", 4.0f, 5.0f, add(4.0f, 5.0f));
        return 0;
}
```

Note that we instructed the source files to include ```add.h``` not ```../include/add.h```. We are going to give build instructions to handle this.

### gcc

Keep in mind, we are not linking with any library other than the C standard library, so we can choose to do the whole build process in one command.

```bash
mkdir bin
gcc src/add.c src/main.c -I include -o bin/add
```

We use the flag ```-I``` to specify that the contents of the directory ```include``` should be treated as if they were in the same directory as every source file. Some people prefer ```-Iinclude``` over ```-I include```; the flag ignores the space, so do what you want.

Now run the program with ```./bin/add```, and see that 4 + 5 = 9.

### CMake

Copy over your reliable CMake build script ```"Howdy World"/build.sh``` to ```sum/build.sh``` so you can reuse it. After copying, make sure you are in ```sum``` before we start. Now lets create our CMakeLists file. 

```bash
vim CMakeLists.txt
```
Inside, you should have

```CMakeLists.txt```
```
cmake_minimum_required(VERSION 3.20)
project(Sum C)

add_executable(app src/main.c src/add.c)
set_target_properties(app PROPERTIES OUTPUT_NAME "${PROJECT_SOURCE_DIR}/bin/add")

target_include_directories(app PRIVATE include)
```

It is important that you use [target_include_directories](https://cmake.org/cmake/help/latest/command/target_include_directories.html) after you create the executable target. We are setting the include directories just like the ```-I``` flag we used with gcc. Now build and run the program.

```bash
./build.sh
./bin/add
```

and see that  4 + 5 = 9 yet again.

Before moving forward I think its a good idea to touch on a big benefit of using CMake. Imagine instead of our two source files, we had a hundred, all included in our source directory or some subdirectory. And so you likely automate the build process with a script, which, to be fair is easy to do or Google how to do. Lets also say that your program needs to be used on more than one operating system. So when you make changes to your build you'll have to reimplement that bullshit all over again for the other OS that you are likely less familiar with.

However, CMake is cross-platform, and you can just make short scripts to build for each platform, or even just have the user do it themselves without a convenience script (which is very common). And even if you aren't trying to make something cross-platform, we'll see in a later section that other libraries often use it.  CMake will allow you to easily use those libraries in your own project.

The following CMakeLists will search recursively through every file in the directory and every potential subdirectory for all source files. Which means anytime you add a source file to that directory, you just need to rebuild with ```build.sh```.

```CMakeLists.txt```
```
cmake_minimum_required(VERSION 3.20)
project(Sum C)

file(GLOB_RECURSE source_files "src/*.c")

add_executable(app ${source_files})
set_target_properties(app PROPERTIES OUTPUT_NAME "${PROJECT_SOURCE_DIR}/bin/add")

target_include_directories(app PRIVATE include)
```

Try moving your main source file to some subdirectory.

```bash
mkdir -p src/bacon/cake/pizza
mv src/main.c src/bacon/cake/pizza/main.c
```

Rebuild and rerun the program to make sure it works!  

```bash
./build.sh
./bin/add
```

Then clean up.

```bash
mv src/bacon/cake/pizza/main.c src/main.c
rm -r src/bacon/cake/pizza
```


## One Function Static Library

Before moving forward I highly recommend watching the video below. In particular, watch it to get an idea about what libraries are and how we use them.

https://youtu.be/JbHmin2Wtmc
https://youtu.be/\_kIa4D7kQ8I
https://stackoverflow.com/a/9688536

We are going to reuse all the C code from earlier, and just move things around. In your projects directory 

```bash
mkdir sumlib && cd sumlib
mkdir -p src lib/src lib/include
```

Now copy files from the last project into the new project.

* ```sum/src/main.c```  into  ```sumlib/src/main.c```
* ```sum/src/add.c```  into  ```sumlib/lib/src/add.c```
* ```sum/include/add.h```  into  ```sumlib/lib/include/add.h```

What we are going to be making is a static library. The idea is to seperately compile and archive some object code that we can link with other object code that contains the entry point (the ```main()``` function). For static libraries, a copy of the library exists within the final binary. 

### gcc

After copying the files make sure you are in ```sumlib``` before we start. First lets make the object file for our entry point; so we need to stop before the linking stage in the build process. Do you remember how we did things in the 'Howdy World' program?

```bash
mkdir bin obj
gcc src/main.c -c -I lib/include -o obj/main.o
``` 

Remember, we include ```add.h``` in ```main.c``` as if they were in the same directory, so we have to use the flag ```-I```.

To build a library we archive all the library's object files (in this example we only have one) together with ```ar```.  If you've ever compressed a file into a zip,rar or whatever, this should be somewhat familiar. 

```bash
gcc lib/src/add.c -c -I lib/include -o obj/sum.o
ar rcs obj/libsum.a obj/sum.o
```

An important rule of C libraries is that they must start with 'lib'! For a static library, make sure to use the '.a' extension.

Now we can link it! To link a library, use  the ```-l``` flag followed by the name of the library. To tell the compiler where to find libraries, use the ```-L``` flag.

```bash
gcc obj/main.o -L obj -l sum -o bin/add
```
Note that when we want to link  'libsum.a' we just type out 'sum'.  Because we linked a static library, the library code has been incorporated into our binary. If we want we can get rid of it and all the other object files.

```bash
./bin/add
ls obj
rm obj/main.o obj/sum.o
./bin/add
ls obj
rm -r obj
./bin/add
```

The program will run all three times. Keep this in your head for when we move on to shared libraries after this next CMake section.

### CMake

Now copy the build script from the earlier project```sum/build.sh```  into  ```sumlib/build.sh``` and clean up.

```bash
rm -r bin
```

The way we'll handle things is by creating two CMakelists files, a main file and a file in the ```lib``` directory.

```bash
touch CMakeLists.txt lib/CMakeLists.txt
```

The contents are

```lib/CMakeLists.txt```
```CMake
add_library(sum src/add.c)
target_include_directories(sum PRIVATE include)
```

```CMakeLists.txt```
```
cmake_minimum_required(VERSION 3.20)
project(Sum C)

add_executable(app src/main.c)
set_target_properties(app PROPERTIES OUTPUT_NAME "${PROJECT_SOURCE_DIR}/bin/add")

target_include_directories(app PRIVATE "${PROJECT_SOURCE_DIR}/lib/include")

add_subdirectory(lib)
target_link_directories(app PRIVATE lib)
target_link_libraries(app sum)
```

The CMakeList file in the directory ```lib``` creates a CMake library target. Then we tell the main CMakeLists file where to find the other file with ```add_subdirectory```. The last two lines of the main file tells us where to find the libraries and which libraries to link. This should remind you of the ```-L``` and ```-l``` gcc flags.

```bash
./build.sh
./bin/add
```
yields the familiar result. Take a peak in ```build/lib``` and you should see the library. Try deleting it and running the program again to see that the program still runs. Keep this in mind for the next section.

## One Function Shared Library

In your project directory duplicate the static library project

```bash
cp - r sumlib/shared_sumlib/
cd shared_sumlib/
```

### gcc

This is a Linux leaning guide, so in this gcc section we'll just cover shared libraries (.so) and not dlls. We start by compiling main.o.

```bash
mkdir obj bin
gcc src/main.c -c -I lib/include -o obj/main.o
```
Next we create the shared library.

```bash
gcc lib/src/add.c -c  -fPIC -I lib/include -o obj/sum.o
mkdir bin/shared
gcc -shared obj/sum.o -o  bin/shared/libsum.so
```
Compare this to the similar step when creating the static library. Note that we use .so instead of .a, that we use gcc with the ```-shared``` flag instead of ```ar```, and finally notice that we use the flag ```-fPIC``` (position-independent code). Then we link the shared lib.

```bash
gcc obj/main.o -L bin/shared -l sum -o bin/add
```
Now if you are overeager and try running ```./bin/add``` you will get the following error:

```bash
./bin/add: error while loading shared libraries: libsum.so: cannot open shared object file: No such file or directory
```
That is because we need to indicate where the shared library is unless it is installed in some default location (like /usr/lib, for example). Try ```echo $LD_LIBRARY_PATH```, we need to set this environment variable to where our lib is. Try running the following in the command line and compare it to the static lib version of our lib.

```bash
LD_LIBRARY_PATH=$(pwd)/bin/shared ./bin/add
rm -r obj
LD_LIBRARY_PATH=$(pwd)/bin/shared ./bin/add
rm -r bin/shared
LD_LIBRARY_PATH=$(pwd)/bin/shared ./bin/add
```
The program only works the first two times. Unlike a static lib, we need the shared library at runtime!

### cmake

Now clean up from the previous section.

```bash
rm -r bin
```

We need to edit the the library CMakelists file that we copied over from the static lib project.

```lib/CMakeLists.txt```
```CMake
add_library(sum  SHARED src/add.c)
target_include_directories(sum PRIVATE include)
```

So easy, all we did is add 'SHARED' ! On Windows this will create a dll instead of a  non-Windows (.so) shared library.

```bash
./build.sh
./bin.sh
```

And just like that we go from a program with static linking to one with dynamic linking! Take a peak in ```build/lib``` and you should see the library. Try deleting it and running the program again to see that the program won't run. Compare this to when we deleted the static library previously.

## Howdy Window with raylib

Now lets use a library that someone else made. I'm choosing raylib because it shouldn't have any dependencies we have to worry about. raylib actually offers build options with a CMakeLists file or a makefile. A lot of libraries take into consideration the user and include some method to ease or automate the build process. For this tutorial, rather than use the makefile, we are just going to build everything with CMake. If we use what we've learned, it will be EZPZ. 

Go to your projects directory. Then

```bash
"Howdy Window" && cd "Howdy Window"
git clone https://github.com/raysan5/raylib
```

You should now have a directory called ```raylib```. Following the [basic example from the website](https://www.raylib.com/examples.html), lets have the window print something for us.

```bash
mkdir src
vim src/main.c
```
Inside the source file you should have

```C
#include "raylib.h"

int main(void)
{
    const int screenWidth = 800;
    const int screenHeight = 450;
    InitWindow(screenWidth, screenHeight, "raylib basic window");
    SetTargetFPS(60);

    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Howdy Window!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}
```

An investigation of the raylib source code and [this documentation](https://github.com/raysan5/raylib/wiki/Working-with-CMake) reveals that the header files and library can both be found in```raylib/src``` and the CMakeLists file is located in ```raylib```. 

So enter the command ```vim CMakeLists.txt```, and inside it add

```
cmake_minimum_required(VERSION 3.20)
project(HowDWindow C)

add_executable(app src/main.c)
set_target_properties(app PROPERTIES OUTPUT_NAME "${PROJECT_SOURCE_DIR}/bin/Howdy Window")

target_include_directories(app PRIVATE raylib/src)

add_subdirectory(raylib)
target_link_directories(app PRIVATE raylib/src)
target_link_libraries(app raylib)
```

Copy over the build script that we've been using this whole tutorial. Now run the build script and then run the binary to see your very own raylib window!
 
Note: Be careful, in this case the sub-directory and library have the same name. This often occurs with libraries if you don't alter the directory name after cloning. Please don't mix up these two CMake commands!

## Afterward

I didn't want this tutorial to be too long (at least not for those early drafts), but I'll add things as the ideas come to me.

TODO : 
* Preprocessor stuff, in particular defining macros with gcc and CMake. Maybe give an example on how to set up a build and debug configuration with a logger.
* System libraries and find_package()