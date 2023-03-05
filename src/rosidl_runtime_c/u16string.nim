##  #pragma c2nim prefix "rosidl_"
##  #pragma c2nim mangle "'rosidl_runtime_c/'" "../rosidl_runtime_c/"
##  #pragma c2nim mangle "'rosidl_runtime_c__message_initialization'" "message_initialization"

##  #pragma c2nim mangle "'service_name_'$" "service_name"
##  #pragma c2nim mangle "'request_members_'$" "request_members"
##  #pragma c2nim mangle "'response_members_'$" "response_members"
##  #pragma c2nim mangle "'event_members_'$" "event_members"
##  #pragma c2nim mangle "'rosidl_runtime_c__' {\\w+}" "$1"

##  #pragma c2nim mangle "'rosidl_runtime_c.' {\\ident+}" "$1"

type
  uintLeast16T * {.importc: "uint_least16_t", header: "stddef.h", bycopy.} = object

##  Copyright 2015-2018 Open Source Robotics Foundation, Inc.
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

  rosidl_runtime_c_U16String* {.importc: "rosidl_runtime_c__U16String",
                                header: "u16string.h", bycopy.} = object ##
                              ##  An array of 16-bit characters terminated by a null character.
    data* {.importc: "data".}: ptr uint_least16_t ##  The pointer to the first character, the sequence ends with a null character.
    size* {.importc: "size".}: csize_t ##  The length of the u16string (excluding the null character).
    capacity* {.importc: "capacity".}: csize_t ##  The capacity represents the number of allocated characters (including the null character).


  rosidl_runtime_c_U16String_sequence* {.
      importc: "rosidl_runtime_c__U16String__Sequence", header: "u16string.h",
      bycopy.} = object
    data* {.importc: "data".}: ptr rosidl_runtime_c_U16String ##
                              ## !< The pointer to an array of STRUCT_NAME
    size* {.importc: "size".}: csize_t ## !< The number of valid items in data
    capacity* {.importc: "capacity".}: csize_t
    ## !< The number of allocated items in data

