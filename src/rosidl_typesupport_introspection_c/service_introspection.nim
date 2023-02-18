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

import
  rosidlRuntimeC/serviceTypeSupportStruct,
  rosidlRuntimeC/serviceTypeSupportStruct,
  rosidlRuntimeC/messageTypeSupportStruct, rosidlRuntimeC/visibilityControl,
  rosidlRuntimeC/visibilityControl, rosidlRuntimeC/messageTypeSupportStruct,
  rosidlRuntimeC/messageTypeSupportStruct,
  rosidlRuntimeC/serviceTypeSupportStruct,
  rosidlRuntimeC/serviceTypeSupportStruct, ./message_introspection,
  ./message_introspection, rosidlRuntimeC/messageInitialization,
  ./message_introspection, ./visibility_control, ./visibility_control,
  ./message_introspection

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

