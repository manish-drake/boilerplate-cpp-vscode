CFLAGS = -c -std=c++11

LDFLAGS = 

DEBUG = -g

TARGET = target

BUILDIR = build

INCLUDE = -I.

SQLITECORE_HEADERS = 

SQLITECORE_SOURCES = 

SOURCES = 	main.cpp \
			$(SQLITECORE_SOURCES) \

OBJECTS = 	$(addprefix $(BUILDIR)/, \
			main.o)

all: $(OBJECTS)
	$(CXX) $(DEBUG) $(OBJECTS) -o $(BUILDIR)/$(TARGET)

$(BUILDIR)/main.o: 
	$(CXX) $(DEBUG) $(CFLAGS) $(INCLUDE) main.cpp -o $@

clean:
	$(RM) $(BUILDIR)/*