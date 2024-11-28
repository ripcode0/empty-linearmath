# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm")
  file(MAKE_DIRECTORY "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm")
endif()
file(MAKE_DIRECTORY
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm-build"
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm"
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/tmp"
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm-stamp"
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src"
  "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/@github/@ripcode0/empty-linearmath/build/dep/glm/src/glm-stamp${cfgdir}") # cfgdir has leading slash
endif()
