# --- Variables ---
# Directories
SRC = src
TGT = obj
INCLUDES = -Iinclude
DBGOUT = target/debug
UDOCDIR = DOC/assigned
# Compiler
CXX = clang++
CXXFLAGSDBG = -Weverything -std=c++17 -g -glldb $(INCLUDES)
SOURCES = $(wildcard $(SRC)/*.cpp)
DBGOBJS = $(addprefix $(TGT)/debug/, $(notdir $(SOURCES:.cpp=.o)))


# --- Rules ---

# All
## Build
all: debug run-debug
## Removes object files
clean: clean-dbg

# Debug
## Run
run-debug: debug
	$(DBGOUT)/scratch-Debug.bin
## Build
debug: $(TGT)/debug/scratch-DBG
$(TGT)/debug/%.o: $(SRC)/%.cpp
	$(CXX) $(CXXFLAGSDBG) -c $< -o $@
$(TGT)/debug/scratch-DBG: $(DBGOBJS)
	$(CXX) $(LDFLAGS) $(DBGOBJS) -o $(DBGOUT)/scratch-Debug.bin
## Removes Object Files
clean-dbg:
	rm -rf $(TGT)/debug/*.o $(DBGOUT)/*.bin
