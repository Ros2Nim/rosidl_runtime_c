##  #pragma c2nim prefix "rosidl_"
##  #pragma c2nim mangle "'rosidl_runtime_c/'" "../rosidl_runtime_c/"
##  #pragma c2nim mangle "'rosidl_runtime_c__message_initialization'" "message_initialization"

##  #pragma c2nim mangle "'service_name_'$" "service_name"
##  #pragma c2nim mangle "'request_members_'$" "request_members"
##  #pragma c2nim mangle "'response_members_'$" "response_members"
##  #pragma c2nim mangle "'event_members_'$" "event_members"
##  #pragma c2nim mangle "'rosidl_runtime_c__' {\\w+}" "$1"

##  #pragma c2nim mangle "'rosidl_runtime_c.' {\\ident+}" "$1"

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

  rosidl_runtime_c_float_sequence* {.importc: "rosidl_runtime_c__float__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object ##
                              ##  sequence types for all basic types
    data* {.importc: "data".}: ptr cfloat ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_double_sequence* {.importc: "rosidl_runtime_c__double__Sequence",
                                      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_long_double_sequence* {.
      importc: "rosidl_runtime_c__long_double__Sequence",
      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr clongdouble ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_char_sequence* {.importc: "rosidl_runtime_c__char__Sequence",
                                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr cchar ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_wchar_sequence* {.importc: "rosidl_runtime_c__wchar__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_boolean_sequence* {.importc: "rosidl_runtime_c__boolean__Sequence",
                                       header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr bool ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_octet_sequence* {.importc: "rosidl_runtime_c__octet__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_uint8_sequence* {.importc: "rosidl_runtime_c__uint8__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_int8_sequence* {.importc: "rosidl_runtime_c__int8__Sequence",
                                    header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int8 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_uint16_sequence* {.importc: "rosidl_runtime_c__uint16__Sequence",
                                      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_int16_sequence* {.importc: "rosidl_runtime_c__int16__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int16 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_uint32_sequence* {.importc: "rosidl_runtime_c__uint32__Sequence",
                                      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_int32_sequence* {.importc: "rosidl_runtime_c__int32__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int32 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_uint64_sequence* {.importc: "rosidl_runtime_c__uint64__Sequence",
                                      header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_int64_sequence* {.importc: "rosidl_runtime_c__int64__Sequence",
                                     header: "primitives_sequence.h", bycopy.} = object
    data* {.importc: "data".}: ptr int64 ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data


  rosidl_runtime_c_bool_sequence* = rosidl_runtime_c_boolean_sequence ##
                              ##  emulate legacy API

  rosidl_runtime_c_byte_sequence* = rosidl_runtime_c_octet_sequence

  rosidl_runtime_c_float32_sequence* = rosidl_runtime_c_float_sequence

  rosidl_runtime_c_float64_sequence* = rosidl_runtime_c_double_sequence
