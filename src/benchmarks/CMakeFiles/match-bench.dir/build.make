# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/TaxiBot/osrm-backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/TaxiBot

# Include any dependencies generated for this target.
include src/benchmarks/CMakeFiles/match-bench.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/benchmarks/CMakeFiles/match-bench.dir/compiler_depend.make

# Include the progress variables for this target.
include src/benchmarks/CMakeFiles/match-bench.dir/progress.make

# Include the compile flags for this target's objects.
include src/benchmarks/CMakeFiles/match-bench.dir/flags.make

src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o: src/benchmarks/CMakeFiles/match-bench.dir/flags.make
src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o: osrm-backend/src/benchmarks/match.cpp
src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o: src/benchmarks/CMakeFiles/match-bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/TaxiBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o"
	cd /root/TaxiBot/src/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o -MF CMakeFiles/match-bench.dir/match.cpp.o.d -o CMakeFiles/match-bench.dir/match.cpp.o -c /root/TaxiBot/osrm-backend/src/benchmarks/match.cpp

src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/match-bench.dir/match.cpp.i"
	cd /root/TaxiBot/src/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/TaxiBot/osrm-backend/src/benchmarks/match.cpp > CMakeFiles/match-bench.dir/match.cpp.i

src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/match-bench.dir/match.cpp.s"
	cd /root/TaxiBot/src/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/TaxiBot/osrm-backend/src/benchmarks/match.cpp -o CMakeFiles/match-bench.dir/match.cpp.s

# Object files for target match-bench
match__bench_OBJECTS = \
"CMakeFiles/match-bench.dir/match.cpp.o"

# External object files for target match-bench
match__bench_EXTERNAL_OBJECTS = \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/assert.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/conditional_restrictions.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/coordinate.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/coordinate_calculation.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/exception.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/fingerprint.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/geojson_debug_policies.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/guidance/bearing_class.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/guidance/entry_class.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/guidance/turn_lanes.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/log.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/opening_hours.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/timed_histogram.cpp.o" \
"/root/TaxiBot/CMakeFiles/UTIL.dir/src/util/timezones.cpp.o"

src/benchmarks/match-bench: src/benchmarks/CMakeFiles/match-bench.dir/match.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/assert.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/conditional_restrictions.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/coordinate.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/coordinate_calculation.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/exception.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/fingerprint.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/geojson_debug_policies.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/guidance/bearing_class.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/guidance/entry_class.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/guidance/turn_lanes.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/log.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/opening_hours.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/timed_histogram.cpp.o
src/benchmarks/match-bench: CMakeFiles/UTIL.dir/src/util/timezones.cpp.o
src/benchmarks/match-bench: src/benchmarks/CMakeFiles/match-bench.dir/build.make
src/benchmarks/match-bench: libosrm.a
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libtbb.so.12.5
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.74.0
src/benchmarks/match-bench: /usr/lib/x86_64-linux-gnu/libz.so
src/benchmarks/match-bench: src/benchmarks/CMakeFiles/match-bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/TaxiBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable match-bench"
	cd /root/TaxiBot/src/benchmarks && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/match-bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/benchmarks/CMakeFiles/match-bench.dir/build: src/benchmarks/match-bench
.PHONY : src/benchmarks/CMakeFiles/match-bench.dir/build

src/benchmarks/CMakeFiles/match-bench.dir/clean:
	cd /root/TaxiBot/src/benchmarks && $(CMAKE_COMMAND) -P CMakeFiles/match-bench.dir/cmake_clean.cmake
.PHONY : src/benchmarks/CMakeFiles/match-bench.dir/clean

src/benchmarks/CMakeFiles/match-bench.dir/depend:
	cd /root/TaxiBot && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/TaxiBot/osrm-backend /root/TaxiBot/osrm-backend/src/benchmarks /root/TaxiBot /root/TaxiBot/src/benchmarks /root/TaxiBot/src/benchmarks/CMakeFiles/match-bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/benchmarks/CMakeFiles/match-bench.dir/depend

