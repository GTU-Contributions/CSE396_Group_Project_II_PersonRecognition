# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/sveyda/Desktop/SvmTrain&Detect"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/sveyda/Desktop/SvmTrain&Detect/build"

# Include any dependencies generated for this target.
include CMakeFiles/detect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/detect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detect.dir/flags.make

CMakeFiles/detect.dir/detect.cpp.o: CMakeFiles/detect.dir/flags.make
CMakeFiles/detect.dir/detect.cpp.o: ../detect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/sveyda/Desktop/SvmTrain&Detect/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/detect.dir/detect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detect.dir/detect.cpp.o -c "/home/sveyda/Desktop/SvmTrain&Detect/detect.cpp"

CMakeFiles/detect.dir/detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detect.dir/detect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/sveyda/Desktop/SvmTrain&Detect/detect.cpp" > CMakeFiles/detect.dir/detect.cpp.i

CMakeFiles/detect.dir/detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detect.dir/detect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/sveyda/Desktop/SvmTrain&Detect/detect.cpp" -o CMakeFiles/detect.dir/detect.cpp.s

CMakeFiles/detect.dir/detect.cpp.o.requires:

.PHONY : CMakeFiles/detect.dir/detect.cpp.o.requires

CMakeFiles/detect.dir/detect.cpp.o.provides: CMakeFiles/detect.dir/detect.cpp.o.requires
	$(MAKE) -f CMakeFiles/detect.dir/build.make CMakeFiles/detect.dir/detect.cpp.o.provides.build
.PHONY : CMakeFiles/detect.dir/detect.cpp.o.provides

CMakeFiles/detect.dir/detect.cpp.o.provides.build: CMakeFiles/detect.dir/detect.cpp.o


# Object files for target detect
detect_OBJECTS = \
"CMakeFiles/detect.dir/detect.cpp.o"

# External object files for target detect
detect_EXTERNAL_OBJECTS =

../detect: CMakeFiles/detect.dir/detect.cpp.o
../detect: CMakeFiles/detect.dir/build.make
../detect: /usr/local/lib/libopencv_xphoto.so.3.1.0
../detect: /usr/local/lib/libopencv_xobjdetect.so.3.1.0
../detect: /usr/local/lib/libopencv_tracking.so.3.1.0
../detect: /usr/local/lib/libopencv_surface_matching.so.3.1.0
../detect: /usr/local/lib/libopencv_structured_light.so.3.1.0
../detect: /usr/local/lib/libopencv_stereo.so.3.1.0
../detect: /usr/local/lib/libopencv_saliency.so.3.1.0
../detect: /usr/local/lib/libopencv_rgbd.so.3.1.0
../detect: /usr/local/lib/libopencv_reg.so.3.1.0
../detect: /usr/local/lib/libopencv_plot.so.3.1.0
../detect: /usr/local/lib/libopencv_optflow.so.3.1.0
../detect: /usr/local/lib/libopencv_line_descriptor.so.3.1.0
../detect: /usr/local/lib/libopencv_hdf.so.3.1.0
../detect: /usr/local/lib/libopencv_fuzzy.so.3.1.0
../detect: /usr/local/lib/libopencv_dpm.so.3.1.0
../detect: /usr/local/lib/libopencv_dnn.so.3.1.0
../detect: /usr/local/lib/libopencv_datasets.so.3.1.0
../detect: /usr/local/lib/libopencv_ccalib.so.3.1.0
../detect: /usr/local/lib/libopencv_bioinspired.so.3.1.0
../detect: /usr/local/lib/libopencv_bgsegm.so.3.1.0
../detect: /usr/local/lib/libopencv_aruco.so.3.1.0
../detect: /usr/local/lib/libopencv_videostab.so.3.1.0
../detect: /usr/local/lib/libopencv_superres.so.3.1.0
../detect: /usr/local/lib/libopencv_stitching.so.3.1.0
../detect: /usr/local/lib/libopencv_photo.so.3.1.0
../detect: /usr/local/lib/libopencv_text.so.3.1.0
../detect: /usr/local/lib/libopencv_face.so.3.1.0
../detect: /usr/local/lib/libopencv_ximgproc.so.3.1.0
../detect: /usr/local/lib/libopencv_xfeatures2d.so.3.1.0
../detect: /usr/local/lib/libopencv_shape.so.3.1.0
../detect: /usr/local/lib/libopencv_video.so.3.1.0
../detect: /usr/local/lib/libopencv_objdetect.so.3.1.0
../detect: /usr/local/lib/libopencv_calib3d.so.3.1.0
../detect: /usr/local/lib/libopencv_features2d.so.3.1.0
../detect: /usr/local/lib/libopencv_ml.so.3.1.0
../detect: /usr/local/lib/libopencv_highgui.so.3.1.0
../detect: /usr/local/lib/libopencv_videoio.so.3.1.0
../detect: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
../detect: /usr/local/lib/libopencv_imgproc.so.3.1.0
../detect: /usr/local/lib/libopencv_flann.so.3.1.0
../detect: /usr/local/lib/libopencv_core.so.3.1.0
../detect: CMakeFiles/detect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/sveyda/Desktop/SvmTrain&Detect/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../detect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detect.dir/build: ../detect

.PHONY : CMakeFiles/detect.dir/build

CMakeFiles/detect.dir/requires: CMakeFiles/detect.dir/detect.cpp.o.requires

.PHONY : CMakeFiles/detect.dir/requires

CMakeFiles/detect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detect.dir/clean

CMakeFiles/detect.dir/depend:
	cd "/home/sveyda/Desktop/SvmTrain&Detect/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/sveyda/Desktop/SvmTrain&Detect" "/home/sveyda/Desktop/SvmTrain&Detect" "/home/sveyda/Desktop/SvmTrain&Detect/build" "/home/sveyda/Desktop/SvmTrain&Detect/build" "/home/sveyda/Desktop/SvmTrain&Detect/build/CMakeFiles/detect.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/detect.dir/depend

