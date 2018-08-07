CC=gcc

SDL_LIBS = -lSDLmain -lSDL -lSDL_mixer 
LINK_OPTIONS = -Wl,-u,_WinMain@16
# OTHER_LIBS = -L/lib -lmingw32

CFLAGS2 = -Wall -O2
# SDL_FLAGS = -Dmain=SDL_main -DWIN32 -DHAVE_OPENGL
# SDL_HEADERS = -I/include -I/usr/local/include -I/usr/include/mingw 
# OTHER_CFLAGS = -mwindows -m32

C_FILES=src\ag.c src\ag_core.c src\dlb.c src\linked.c src\sprite.c
OBJ_FILES=src\ag.o src\ag_core.o src\dlb.o src\linked.o src\sprite.o
H_FILES=src\ag.h src\dlb.h src\linked.h src\sprite.h src\unittest.h
H_COMP_FILES=src\ag.h.gch src\dlb.h.gch src\linked.h.gch src\sprite.h.gch src\unittest.h.gch

OUT_FILE=Anagramarama_Game.exe

all:ag

ag: $(OBJ_FILES)
	$(CC) $(OBJ_FILES) -o $(OUT_FILE) $(SDL_LIBS) $(LINK_OPTIONS)
#	$(CC) $(OBJ_FILES) -o $(OUT_FILE) $(SDL_LIBS) $(LINK_OPTIONS) $(OTHER_LIBS)

src/ag.o: src/ag.c
	$(CC) $(CFLAGS2) -c -o $@ $^
#	$(CC) $(CFLAGS2) -c $(SDL_FLAGS) $(SDL_HEADERS) $(OTHER_CFLAGS) -o $@ $^

src/ag_core.o: src/ag_core.c
	$(CC) $(CFLAGS2) -c -o $@ $^
#	$(CC) $(CFLAGS2) -c $(SDL_FLAGS) $(SDL_HEADERS) $(OTHER_CFLAGS) -o $@ $^

src/dlb.o: src/dlb.c
	$(CC) $(CFLAGS2) -c -o $@ $^
#	$(CC) $(CFLAGS2) -c $(SDL_FLAGS) $(SDL_HEADERS) $(OTHER_CFLAGS) -o $@ $^

src/linked.o: src/linked.c
	$(CC) $(CFLAGS2) -c -o $@ $^
#	$(CC) $(CFLAGS2) -c $(SDL_FLAGS) $(SDL_HEADERS) $(OTHER_CFLAGS) -o $@ $^

src/sprite.o: src/sprite.c
	$(CC) $(CFLAGS2) -c -o $@ $^
#	$(CC) $(CFLAGS2) -c $(SDL_FLAGS) $(SDL_HEADERS) $(OTHER_CFLAGS) -o $@ $^

simple: $(C_FILES)
	$(CC) $(C_FILES) -o $(OUT_FILE) $(SDL_LIBS) $(LINK_OPTIONS)

clean: 
	del $(H_COMP_FILES) $(OUT_FILE) $(OBJ_FILES)