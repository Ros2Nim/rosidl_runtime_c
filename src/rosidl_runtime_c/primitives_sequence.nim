##  #pragma c2nim nep1

##  #pragma c2nim reordertypes

##  #pragma c2nim importFuncDefines
##  #pragma c2nim importc
##  --importDefines        import C defines as procs or vars with ``{.importc.}``
##  --importFuncDefines    import C define funcs as procs with ``{.importc.}``

##  #pragma c2nim header

##  #pragma c2nim importc

##  #pragma c2nim render nobody

##  Copyright 2015 Open Source Robotics Foundation, Inc.
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

  float_Sequence* {.importc: "rosidl_runtime_c__float__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object ##
                              ##  sequence types for all basic types
    data* {.importc: "data".}: ptr cfloat ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  double_Sequence* {.importc: "rosidl_runtime_c__double__Sequence",
                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  long_double_Sequence* {.importc: "rosidl_runtime_c__long_double__Sequence",
                          header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr clongdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  char_Sequence* {.importc: "rosidl_runtime_c__char__Sequence",
                   header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cchar ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  wchar_Sequence* {.importc: "rosidl_runtime_c__wchar__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  boolean_Sequence* {.importc: "rosidl_runtime_c__boolean__Sequence",
                      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr bool ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  octet_Sequence* {.importc: "rosidl_runtime_c__octet__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  uint8_Sequence* {.importc: "rosidl_runtime_c__uint8__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  int8_Sequence* {.importc: "rosidl_runtime_c__int8__Sequence",
                   header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  uint16_Sequence* {.importc: "rosidl_runtime_c__uint16__Sequence",
                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  int16_Sequence* {.importc: "rosidl_runtime_c__int16__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  uint32_Sequence* {.importc: "rosidl_runtime_c__uint32__Sequence",
                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  int32_Sequence* {.importc: "rosidl_runtime_c__int32__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  uint64_Sequence* {.importc: "rosidl_runtime_c__uint64__Sequence",
                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  int64_Sequence* {.importc: "rosidl_runtime_c__int64__Sequence",
                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  bool_Sequence* = boolean_Sequence ##  emulate legacy API

  byte_Sequence* = octet_Sequence

  float32_Sequence* = float_Sequence

  float64_Sequence* = double_Sequence
