##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"

##  Copyright 2015-2016 Open Source Robotics Foundation, Inc.
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
  visibility_control, visibility_control

type

  RosidlMessageTypesupportHandleFunction* = proc (
      a1: ptr RosidlMessageTypeSupportT; a2: cstring): ptr RosidlMessageTypeSupportT

  RosidlMessageTypeSupportT* {.importc: "rosidl_message_type_support_t",
                               header: "message_type_support_struct.h", bycopy.} = object ##
                              ##  Contains rosidl message type support data
    typesupportIdentifier* {.importc: "typesupport_identifier".}: cstring ##
                              ##  String identifier for the type_support.
    data* {.importc: "data".}: pointer ##  Pointer to the message type support library
    `func`* {.importc: "func".}: RosidlMessageTypesupportHandleFunction ##
                              ##  Pointer to the message type support handler function



proc getMessageTypesupportHandle*(handle: ptr RosidlMessageTypeSupportT;
                                  identifier: cstring): ptr RosidlMessageTypeSupportT {.
    importc: "get_message_typesupport_handle",
    header: "message_type_support_struct.h".}
  ##  Get the message type support handle specific to this identifier.
                                             ##
                                             ##  The handle's message typesupport identifier function is returned or if the parameters are NULL
                                             ##  then an assert will happen.
                                             ##
                                             ##  \param handle Handle to message type support
                                             ##  \param identifier The typesupport identifier to get the handle function for
                                             ##  \return The associated message typesupport handle function.
                                             ##

proc getMessageTypesupportHandleFunction*(handle: ptr RosidlMessageTypeSupportT;
    identifier: cstring): ptr RosidlMessageTypeSupportT {.
    importc: "get_message_typesupport_handle_function",
    header: "message_type_support_struct.h".}
  ##  Get the message type support handle function specific to this identifier.
                                             ##
                                             ##  If the identifier is the same as this handle's typesupport_identifier the handle is simply
                                             ##  returned or if the parameters are NULL then an assert will happen.
                                             ##
                                             ##  \param handle Handle to message type support
                                             ##  \param identifier The typesupport identifier to get the handle function for
                                             ##  \return if the identifier match's the handle's identifier then the handle's function
                                             ##    is returned.
                                             ##
##  Get the message type support given a provided action and package.
##
##  \param PkgName Name of the package that contains the message
##  \param MsgSubfolder name of the subfolder (for example: msg)
##  \param MsgName message name
##  \return a rosidl_message_type_support_t struct if founded, otherwise NULL.
##
