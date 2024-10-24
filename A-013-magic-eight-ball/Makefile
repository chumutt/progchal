##
# Name Generator
#
# @file Makefile
# @version 0.1

# Compiler to use
CXX = g++

# Compiler flags to run with
CXXFLAGS = -Wall -g

# Name of final product
TARGET = magic-eight-ball

# Source file(s)
SRCS = main.cpp

# Object file(s)
OBJS = $(SRCS:.cpp=.o)

# Rules to make executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile .cpp -> .o (object) files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

# Clean up object files and the executable
# (source code is safe)
clean:
	rm -f $(OBJS) $(TARGET)

# end
