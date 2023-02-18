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

  RosidlRuntimeCFloatSequence* {.importc: "rosidl_runtime_c__float__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object ##
                              ##  sequence types for all basic types
    data* {.importc: "data".}: ptr cfloat ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCDoubleSequence* {.importc: "rosidl_runtime_c__double__Sequence",
                                 header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCLongDoubleSequence* {.importc: "rosidl_runtime_c__long_double__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr clongdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCCharSequence* {.importc: "rosidl_runtime_c__char__Sequence",
                               header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cchar ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCWcharSequence* {.importc: "rosidl_runtime_c__wchar__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCBooleanSequence* {.importc: "rosidl_runtime_c__boolean__Sequence",
                                  header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr bool ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCOctetSequence* {.importc: "rosidl_runtime_c__octet__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCUint8Sequence* {.importc: "rosidl_runtime_c__uint8__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCInt8Sequence* {.importc: "rosidl_runtime_c__int8__Sequence",
                               header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCUint16Sequence* {.importc: "rosidl_runtime_c__uint16__Sequence",
                                 header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCInt16Sequence* {.importc: "rosidl_runtime_c__int16__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCUint32Sequence* {.importc: "rosidl_runtime_c__uint32__Sequence",
                                 header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCInt32Sequence* {.importc: "rosidl_runtime_c__int32__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCUint64Sequence* {.importc: "rosidl_runtime_c__uint64__Sequence",
                                 header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCInt64Sequence* {.importc: "rosidl_runtime_c__int64__Sequence",
                                header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  RosidlRuntimeCBoolSequence* = RosidlRuntimeCBooleanSequence

  RosidlRuntimeCByteSequence* = RosidlRuntimeCOctetSequence

  RosidlRuntimeCFloat32Sequence* = RosidlRuntimeCFloatSequence

  RosidlRuntimeCFloat64Sequence* = RosidlRuntimeCDoubleSequence

##  emulate legacy API