
# Install prefix
prefix = /usr

CC = gcc
CFLAGS = -O3 -Wall -I./src

progs = rsbep rsbep_chopper

rsbep_objs = rsbep.o rs.o

rsbep_chopper_objs = rsbep_chopper.o

VPATH = src

all: $(progs)

rsbep: $(rsbep_objs)
	$(CC) $(LDFLAGS) -o $@ $^

rsbep_chopper: $(rsbep_chopper_objs)
	$(CC) -o $@ $^

clean realclean:
	-rm -f $(progs) $(rsbep_objs) $(rsbep_chopper_objs)


install: $(progs)
	./install.sh $(prefix)


