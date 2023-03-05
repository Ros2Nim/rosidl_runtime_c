##  #pragma c2nim prefix "rosidl_"
##  #pragma c2nim mangle "'rosidl_runtime_c/'" "../rosidl_runtime_c/"
##  #pragma c2nim mangle "'rosidl_runtime_c__message_initialization'" "message_initialization"

##  #pragma c2nim mangle "'service_name_'$" "service_name"
##  #pragma c2nim mangle "'request_members_'$" "request_members"
##  #pragma c2nim mangle "'response_members_'$" "response_members"
##  #pragma c2nim mangle "'event_members_'$" "event_members"
##  #pragma c2nim mangle "'rosidl_runtime_c__' {\\w+}" "$1"

##  #pragma c2nim mangle "'rosidl_runtime_c.' {\\ident+}" "$1"

##  Copyright 2018 Open Source Robotics Foundation, Inc.
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

  rosidl_runtime_c_String_bound* {.importc: "rosidl_runtime_c__String__bound",
                                   header: "string_bound.h", bycopy.} = object ##
                              ##  Upper boundary for #rosidl_runtime_c__String or #rosidl_runtime_c__U16String.
    bound* {.importc: "bound".}: csize_t ##  The number of characters in the string (excluding the null character).

