CXX = 	g++

CXXFLAGS =	-O2 -g -Wall 

OBJS =	PA3.o matrix.o 

LIBS =

TARGET =	PA3

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)


matrix.o: matrix.h matrix.cpp
		$(CXX) $(CXXFLAGS) -c matrix.cpp
		

PA3.o: main.cpp matrix.h
		$(CXX) $(CXXFLAGS) -c main.cpp -o PA3.o
		
clean:
	rm -f $(OBJS) $(TARGET)