SRC = ./src
OBJ = ./obj
INCLUDE = ./include

all: obj_path
	# mpicc -c $(SRC)/arg_parse.c -I $(INCLUDE) -o $(OBJ)/arg_parse.o
	# mpicc -c $(SRC)/ifstats.c -I $(INCLUDE) -o $(OBJ)/ifstats.o
	# mpicc -c $(SRC)/kernel_stats.c -I $(INCLUDE) -o $(OBJ)/kernel_stats.o
	mpicc -c $(SRC)/perf_status.c -I $(INCLUDE) -o $(OBJ)/perf_status.o

obj_path:
	mkdir -p $(OBJ)

clean:
	rm -rf $(OBJ)
