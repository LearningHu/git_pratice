# 编译器设置
CXX = g++
CXXFLAGS = -std=c++11 -Wall -O2

# 源代码文件夹和目标文件夹
SRC_DIR = src
OBJ_DIR = obj

# 源文件和目标文件
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SOURCES))

# 可执行文件名
EXECUTABLE = my_program

# 默认目标
all: $(EXECUTABLE)

# 生成可执行文件
$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(EXECUTABLE)

# 编译源文件为目标文件
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 清理生成的文件
.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(EXECUTABLE)