CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanHelloWorld: Main.cpp
	g++ $(CFLAGS) -o VulkanHelloWorld Main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanHelloWorld
	./VulkanHelloWorld

clean:
	rm -f VulkanHelloWorld