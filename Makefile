CC = g++
CFLAGS = -Wall -std=c++11 -fPIC
LDFLAGS = -shared

SRCDIR = .
BUILDDIR = build
BINDIR = $(BUILDDIR)/bin

SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(patsubst $(SRCDIR)/%.cpp, $(BUILDDIR)/%.o, $(SOURCES))

TARGET = $(BINDIR)/calculator_app
LIBRARY = $(BINDIR)/libcalculator.so

all: $(TARGET) $(LIBRARY)

$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

$(LIBRARY): $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(LIBRARY) $(OBJECTS)

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm -rf $(BUILDDIR)


