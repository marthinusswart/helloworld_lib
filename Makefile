# the compiler to use
CXX = clang++

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CXXFLAGS  = -Wall -Werror -fpic
 
LD = clang++ -o
LDFLAGS = -shared

SRCDIR = src
OBJDIR = obj
BINDIR = bin

SOURCES   := $(wildcard $(SRCDIR)/*.cpp)
INCLUDES  := $(wildcard $(SRCDIR)/*.h)
OBJECTS   := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

# the name to use for both the target source file, and the output file:
TARGET = helloworld_lib

$(BINDIR)/$(TARGET): $(OBJECTS)	
	@$(LD) $@.so $(LDFLAGS) $(OBJECTS)
	@echo "Linking complete!"

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	@echo "test"
	@$(CXX) $(CXXFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"	
  
all: $(TARGET)
  
#$(TARGET): $(TARGET).cpp
#	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp $(LFLAGS)