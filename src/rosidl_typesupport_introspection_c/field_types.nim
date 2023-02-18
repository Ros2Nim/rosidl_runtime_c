##  #pragma c2nim reordertypes

##  #pragma c2nim importFuncDefines
##  #pragma c2nim importc
##  --importDefines        import C defines as procs or vars with ``{.importc.}``
##  --importFuncDefines    import C define funcs as procs with ``{.importc.}``

##  #pragma c2nim header

##  #pragma c2nim importc

##  #pragma c2nim render nobody

##  Copyright 2014-2015 Open Source Robotics Foundation, Inc.
##
##  Licensed under the Apache License, Version 2.0 (the "License");
##  you may not use this file except in compliance with the License.
##  You may obtain a copy of the License at
##
##      http://www.apache.org/licenses/LICENSE-2.0
##
##  Unless required by applicable law or agreed to in writing, software
##  distributed under the License is distributed on an "AS IS" BASIS,
##  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##  See the License for the specific language governing permissions and
##  limitations under the License.

type

  RosidlTypesupportIntrospectionCFieldTypes* {.size: sizeof(cint).} = enum ##
                              ##  Possible types for message fields on a ROS message
                              ##  The equivalent OMG IDL and C types of the different fields can be found
                              ##  at http://design.ros2.org/articles/idl_interface_definition.html#type-mapping
    ROS_TYPE_FLOAT = 1,         ##  Equivalent to double in C types.
    ROS_TYPE_DOUBLE = 2,        ##  Equivalent to long double in C types.
    ROS_TYPE_LONG_DOUBLE = 3,   ##  Equivalent to unsigned char in C types.
    ROS_TYPE_CHAR = 4,          ##  Equivalent to char16_t in C types.
    ROS_TYPE_WCHAR = 5,         ##  Equivalent to _Bool in C types.
    ROS_TYPE_BOOLEAN = 6,       ##  Equivalent to unsigned char in C types.
    ROS_TYPE_OCTET = 7,         ##  Equivalent to uint8_t in C types.
    ROS_TYPE_UINT8 = 8,         ##  Equivalent to int8_t in C types.
    ROS_TYPE_INT8 = 9,          ##  Equivalent to uint16_t in C types.
    ROS_TYPE_UINT16 = 10,       ##  Equivalent to int16_t in C types.
    ROS_TYPE_INT16 = 11,        ##  Equivalent to uint32_t in C types.
    ROS_TYPE_UINT32 = 12,       ##  Equivalent to int32_t in C types.
    ROS_TYPE_INT32 = 13,        ##  Equivalent to uint64_t in C types.
    ROS_TYPE_UINT64 = 14,       ##  Equivalent to int64_t in C types.
    ROS_TYPE_INT64 = 15,        ##  Equivalent to char * in C types.
    ROS_TYPE_STRING = 16,       ##  Equivalent to char16_t * in C types.
    ROS_TYPE_WSTRING = 17,      ##  An embedded message type.
    ROS_TYPE_MESSAGE = 18       ##  For backward compatibility only.

const
  ROS_TYPE_FLOAT32 = ROS_TYPE_FLOAT
  ROS_TYPE_FLOAT64 = ROS_TYPE_DOUBLE
  ROS_TYPE_BOOL = ROS_TYPE_BOOLEAN
  ROS_TYPE_BYTE = ROS_TYPE_OCTET
