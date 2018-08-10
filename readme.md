# Anagramarama

## Windows 7 64-bit (7+?) Build Instructions

The source code was compiled using __gcc__ (v6.3.0) on MinGW (http://www.mingw.org/), and requires __SDL__ version 1.2.14 and __SDL__ __Mixer__ version 1.2.12 (https://www.libsdl.org/projects/SDL_mixer/release-1.2.html).  For convenience, these dependencies have been included since they are rather outdated.  `SDL.dll` and `SDL_mixer.dll` are required to run the program's executable while the rest is needed to compile the source code.

Assuming you have MinGW installed with SDL, and any other necessary dependencies that I have yet to realize were not default on my system, then **Anagramarama** can be easily built using the provided makefile and the following make command,
	`mingw32-make -f makefile.WIN32.mak` .
The game can be played with the resulting executable.

### Installer

Additionally, you can also build the installer program if you have the __NullSoft__ __installer__ __compiler__ installed on your system.  This step is not required to actually build and run the game, but it does simplify distributing the game to the end-user.
