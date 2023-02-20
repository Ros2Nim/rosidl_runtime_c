##  #pragma c2nim nep1

##  #pragma c2nim reordertypes

##  #pragma c2nim importFuncDefines
##  #pragma c2nim importc
##  --importDefines        import C defines as procs or vars with ``{.importc.}``
##  --importFuncDefines    import C define funcs as procs with ``{.importc.}``

##  #pragma c2nim header

##  #pragma c2nim importc

##  #pragma c2nim render nobody

##  convert up to three '__' nodes

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

  rosidl_typesupport_introspection_c_ServiceMembers* {.
      importc: "rosidl_typesupport_introspection_c__ServiceMembers",
      header: "service_introspection.h", bycopy.} = object ##
                              ##  This struct provides introspection information for one service definition.
                              ##  A service is comprised of two interfaces: the request and the response.
    service_namespace_* {.importc: "service_namespace_".}: cstring ##
                              ##  The namespace in which the service resides, e.g. "example_messages__srv" for
                              ##  example_messages/srv
    service_name_* {.importc: "service_name_".}: cstring ##
                              ##  The name of the service, e.g. "AddTwoInts"
    request_members_* {.importc: "request_members_".}: ptr rosidl_typesupport_introspection_c_MessageMembers ##
                              ##  A pointer to the introspection information structure for the request interface.
    response_members_* {.importc: "response_members_".}: ptr rosidl_typesupport_introspection_c_MessageMembers ##
                              ##  A pointer to the introspection information structure for the response interface.
    event_members_* {.importc: "event_members_".}: ptr rosidl_typesupport_introspection_c_MessageMembers ##
                              ##  A pointer to the introspection information structure for the event interface.

