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

import
  ./primitives_sequence, ./primitives_sequence, ./primitives_sequence,
  ./primitives_sequence

type

  rosidl_runtime_c_String* {.importc: "rosidl_runtime_c__String",
                             header: "rosidl_runtime_c/string.h", bycopy.} = object ##
                              ##  An array of 8-bit characters terminated by a null byte.
    data* {.importc: "data".}: cstring ##  The pointer to the first character, the sequence ends with a null byte.
    size* {.importc: "size".}: csize_t ##  The length of the string (excluding the null byte).
    capacity* {.importc: "capacity".}: csize_t ##  The capacity represents the number of allocated bytes (including the null byte).


  rosidl_runtime_c_String_sequence* {.importc: "rosidl_runtime_c__String__Sequence",
                                      header: "rosidl_runtime_c/string.h",
                                      bycopy.} = object
    data* {.importc: "data".}: ptr rosidl_runtime_c_String ##
                              ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data

