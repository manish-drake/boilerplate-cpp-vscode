CFLAGS = -c -std=c++11

LDFLAGS = 

DEBUG = -g

TARGET = target

BUILDIR = build

INCLUDE = -I. -I/usr/local/include

SQLITECORE_HEADERS = 

SQLITECORE_SOURCES = 

SOURCES = 	main.cpp \
			$(SQLITECORE_SOURCES) \

OBJECTS = 	$(addprefix $(BUILDIR)/, \
			main.o)

all: $(OBJECTS)
	$(CXX) -Wall $(DEBUG) $(OBJECTS) $(LDFLAGS) -o $(BUILDIR)/$(TARGET)

$(BUILDIR)/main.o: main.cpp
	$(CXX) $(CFLAGS) $(DEBUG) $(INCLUDE) main.cpp -o $@

clean:
	$(RM) $(BUILDIR)/*
