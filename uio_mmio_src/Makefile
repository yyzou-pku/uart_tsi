
default: uio_mmio

# Source files
SRCS = uio_htif.cc uio_mmio_main.cc

# Include directories
INCLUDES = -I ../riscv-fesvr

# Compiler flags
CXXFLAGS = -O3 -std=c++17 -Wall

# Libraries
FESVR_LIB = ../riscv-fesvr/build/libfesvr.a
LIBS = $(FESVR_LIB) -lpthread

# Build target
uio_mmio: $(SRCS) $(FESVR_LIB)
	g++ $(CXXFLAGS) $(INCLUDES) -o $@ $(SRCS) $(LIBS)

# Clean
clean:
	rm -rf uio_mmio

.PHONY: default clean
