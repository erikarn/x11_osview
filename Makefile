default: x11_osview

CFLAGS=-g -ggdb -I/usr/local/include
LDFLAGS=-L/usr/local/lib
LDADD=-lX11
OBJS=osview.o

x11_osview: $(OBJS)
	$(CC) -o x11_osview $(OBJS) $(CFLAGS) $(LDFLAGS) $(LDADD)

clean:
	rm -f *.o x11_osview
