CC = gcc
CFLAGS = -Wall -Wextra -g

OBJS = \
	main.o \
	tracer.o \
	syscall.o \
	memory.o \
	file_monitor.o \
	process_monitor.o \
	memory_monitor.o \
	network_monitor.o \
	fd_tables.o \
	report.o 

all: sandbox target nettarget multitarget

sandbox: $(OBJS)
	$(CC) $(CFLAGS) -o sandbox $(OBJS)

target: basic_target.c
	$(CC) $(CFLAGS) -o basic_target basic_target.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

tracer.o: tracer.c
	$(CC) $(CFLAGS) -c tracer.c

syscall.o: syscall.c
	$(CC) $(CFLAGS) -c syscall.c

memory.o: memory.c
	$(CC) $(CFLAGS) -c memory.c

file_monitor.o: file_monitor.c
	$(CC) $(CFLAGS) -c file_monitor.c

process_monitor.o: process_monitor.c
	$(CC) $(CFLAGS) -c process_monitor.c

memory_monitor.o: memory_monitor.c
	$(CC) $(CFLAGS) -c memory_monitor.c

network_monitor.o: network_monitor.c
	$(CC) $(CFLAGS) -c network_monitor.c

fd_tables.o: fd_tables.c
	$(CC) $(CFLAGS) -c fd_tables.c

report.o: report.c
	$(CC) $(CFLAGS) -c report.c

clean:
	rm -f *.o sandbox target nettarget multitarget