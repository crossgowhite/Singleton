GCC	:= gcc
GPP	:= g++
CFLAGS	:= -g -std=c++11 -Wall -fpic -DARCH_CPU_64_BITS -D__linux__

DIR_INC	:= ./inc
DIR_OBJ	:= ./obj
DIR_LIB	:= ./lib

TARGET = test
SRC	:= $(wildcard *.cc)
OBJ	:= $(patsubst %.cc, ${DIR_OBJ}/%.o, $(notdir ${SRC}))

all:$(TARGET)

$(TARGET):$(OBJ)
	$(GPP) -o $@ $(OBJ)

$(OBJ):$(SRC)
	@echo ${SRC}
	$(GCC) $(CFLAGS) -c $(patsubst %.o,./%.cc,$(notdir $@)) -o $@

clean:
	rm -rf $(DIR_OBJ)/*.o $(DIR_LIB)/*.so $(DIR_LIB)/*.a
