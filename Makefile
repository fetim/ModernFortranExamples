# Testing Makefile
# source:https://www.embarcados.com.br/introducao-ao-makefile/
# author: @fetim

# Name of project
PROJ_NAME=ModernFortranOOP

# .f03 files
F03_SOURCE=$(wildcard *.f03)

# .mod files
MOD_SOURCE=$(wildcar *.mod)

# Object files
OBJ=$(F03_SOURCE:.c=.o)

# Compiler
FC=gfortran

#Flags for compiler
FC_FLAGS=-c               #\ #flag to create object files
#        -otherflag		  #\ # use backslash to break lines

#
# Compilation and linking
#
all: $(PROJ_NAME)

$(PROJ_NAME): $(OBJ)
	$(FC) -o $@ $^
%.o: %.f03
	$(FC) -o $@ $< $(FC_FLAGS)

clean:
	rm -rf *.o *.mod $(PROJ_NAME) *~

run:
	./$(PROJ_NAME)
