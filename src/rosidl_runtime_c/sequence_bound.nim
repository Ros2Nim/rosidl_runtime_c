##  #pragma c2nim prefix "rosidl_"
##  #pragma c2nim mangle "'rosidl_runtime_c/'" "../rosidl_runtime_c/"
##  #pragma c2nim mangle "'rosidl_runtime_c__message_initialization'" "message_initialization"

##  #pragma c2nim mangle "'service_name_'$" "service_name"
##  #pragma c2nim mangle "'request_members_'$" "request_members"
##  #pragma c2nim mangle "'response_members_'$" "response_members"
##  #pragma c2nim mangle "'event_members_'$" "event_members"
##  #pragma c2nim mangle "'rosidl_runtime_c__' {\\w+}" "$1"

##  #pragma c2nim mangle "'rosidl_runtime_c.' {\\ident+}" "$1"

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
  ./visibility_control, ./visibility_control

type

  rosidl_runtime_c_bound_handle_function* = proc (
      a1: ptr rosidl_runtime_c_sequence_bound; a2: cstring): ptr rosidl_runtime_c_sequence_bound

  rosidl_runtime_c_sequence_bound* {.importc: "rosidl_runtime_c__Sequence__bound",
                                     header: "sequence_bound.h", bycopy.} = object
    typesupport_identifier* {.importc: "typesupport_identifier".}: cstring ##
                              ##  String identifier for the type_support.
    data* {.importc: "data".}: pointer ##  Pointer to type support handle function
    `func`* {.importc: "func".}: rosidl_runtime_c_bound_handle_function



proc get_sequence_bound_handle*(handle: ptr rosidl_runtime_c_sequence_bound;
                                identifier: cstring): ptr rosidl_runtime_c_sequence_bound {.
    importc: "get_sequence_bound_handle", header: "sequence_bound.h".}
  ##
                              ##  Get the message bounds handle specific to this identifier.
                              ##
                              ##  The handle's sequence bound is simply returned or if the parameters are NULL then an assert
                              ##  will happen.
                              ##
                              ##  \param handle Handle to service type support
                              ##  \param identifier The identifier to get the handle for
                              ##  \return The associated sequence bound handle function.
                              ##

proc get_sequence_bound_handle_function*(
    handle: ptr rosidl_runtime_c_sequence_bound; identifier: cstring): ptr rosidl_runtime_c_sequence_bound {.
    importc: "get_sequence_bound_handle_function", header: "sequence_bound.h".}
  ##
                              ##  Get the message bounds handle function specific to this identifier.
                              ##
                              ##  If the identifier is the same as this handle function's identifier the handle is simply returned
                              ##  or if the parameters are NULL then an assert will happen.
                              ##
                              ##  \param handle Handle to service type support
                              ##  \param identifier The identifier to get the handle function for
                              ##  \return if the identifier match's the handle's identifier then the handle's function
                              ##    is returned.
                              ##
##  Get the sequence bounds given a provided action and package.
##
##  \param PkgName Name of the package that contains the message
##  \param MsgSubfolder name of the subfolder (foe example: msg)
##  \param MsgName message name
##  \return a rosidl_message_bounds_t struct if founded, otherwise NULL.
##
