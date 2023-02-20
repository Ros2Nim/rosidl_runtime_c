##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"

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
  service_type_support_struct, rcutils.allocator, rcutils.allocator,
  rcutils.allocator, rcutils.macros, rcutils.macros, rcutils.macros,
  rcutils.macros, rcutils.macros, rcutils.allocator, rcutils.types.rcutils_ret,
  rcutils.allocator, rcutils.visibility_control_macros,
  rcutils.visibility_control_macros, rcutils.allocator,
  service_type_support_struct, message_type_support_struct, visibility_control,
  visibility_control, message_type_support_struct, message_type_support_struct,
  service_type_support_struct, service_type_support_struct,
  rosidl_typesupport_introspection_c.message_introspection,
  rosidl_typesupport_introspection_c.message_introspection,
  message_initialization,
  rosidl_typesupport_introspection_c.message_introspection,
  rosidl_typesupport_introspection_c.visibility_control,
  rosidl_typesupport_introspection_c.visibility_control,
  rosidl_typesupport_introspection_c.message_introspection

type

  RosidlTypesupportIntrospectionCServiceMembers* {.
      importc: "rosidl_typesupport_introspection_c__ServiceMembers",
      header: "service_introspection.h", bycopy.} = object ##
                              ##  This struct provides introspection information for one service definition.
                              ##  A service is comprised of two interfaces: the request and the response.
    serviceNamespace* {.importc: "service_namespace_".}: cstring ##
                              ##  The namespace in which the service resides, e.g. "example_messages__srv" for
                              ##  example_messages/srv
    serviceName* {.importc: "service_name_".}: cstring ##
                              ##  The name of the service, e.g. "AddTwoInts"
    requestMembers* {.importc: "request_members_".}: ptr RosidlTypesupportIntrospectionCMessageMembers ##
                              ##  A pointer to the introspection information structure for the request interface.
    responseMembers* {.importc: "response_members_".}: ptr RosidlTypesupportIntrospectionCMessageMembers ##
                              ##  A pointer to the introspection information structure for the response interface.
    eventMembers* {.importc: "event_members_".}: ptr RosidlTypesupportIntrospectionCMessageMembers ##
                              ##  A pointer to the introspection information structure for the event interface.

