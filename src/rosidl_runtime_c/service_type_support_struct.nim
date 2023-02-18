##  #pragma c2nim reordertypes

##  #pragma c2nim importFuncDefines
##  #pragma c2nim importc
##  --importDefines        import C defines as procs or vars with ``{.importc.}``
##  --importFuncDefines    import C define funcs as procs with ``{.importc.}``

##  #pragma c2nim header

##  #pragma c2nim importc

##  #pragma c2nim render nobody

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
  ./message_type_support_struct, ./visibility_control, ./visibility_control,
  ./message_type_support_struct, ./message_type_support_struct

type

  RosidlServiceTypesupportHandleFunction* = proc (
      a1: ptr RosidlServiceTypeSupportT; a2: cstring): ptr RosidlServiceTypeSupportT

  RosidlServiceIntrospectionInfoT* {.importc: "rosidl_service_introspection_info_t",
                                    header: "service_type_support_struct.h",
                                    bycopy.} = object
    eventType* {.importc: "event_type".}: uint8
    stampSec* {.importc: "stamp_sec".}: int32
    stampNanosec* {.importc: "stamp_nanosec".}: uint32
    clientGid* {.importc: "client_gid".}: array[16, uint8]
    sequenceNumber* {.importc: "sequence_number".}: int64


  RosidlEventMessageCreateHandleFunctionFunction* = proc (
      info: ptr RosidlServiceIntrospectionInfoT; allocator: ptr RcutilsAllocatorT;
      requestMessage: pointer; responseMessage: pointer): pointer ##
                              ##  Creates a ServiceEvent message for the service.
                              ##
                              ##  Instantiates a ServiceEvent message with the given info and request/response message.
                              ##  The message is allocated using the given allocator and must be deallocated using
                              ##  the rosidl_service_introspection_destroy_handle
                              ##
                              ##  \param[in] info POD fields of service_msgs/msg/ServiceEventInfo to be passed from rcl
                              ##  \param[in] allocator The allocator to use for allocating the ServiceEvent message
                              ##  \param[in] request_message type-erased handle to request message from rcl. Can be NULL.
                              ##  \param[in] response_message type-erased handle to request message from rcl. Can be NULL.
                              ##  \return The built ServiceEvent message. Will return NULL if the message could not be built.
                              ##

  RosidlEventMessageDestroyHandleFunctionFunction* = proc (eventMessage: pointer;
      allocator: ptr RcutilsAllocatorT): bool ##  Destroys a ServiceEvent message
                                          ##
                                          ##  Destroys a ServiceEvent message returned by a rosidl_service_introspection_message_create_handle
                                          ##  by calling the corresponding __fini function then deallocating
                                          ##
                                          ##  \param[in] event_message The message to destroy.
                                          ##  \param[in] allocator The allocator to use for deallocating the message.
                                          ##

  RosidlServiceTypeSupportT* {.importc: "rosidl_service_type_support_t",
                              header: "service_type_support_struct.h", bycopy.} = object ##
                              ##  Contains rosidl service type support data
    typesupportIdentifier* {.importc: "typesupport_identifier".}: cstring ##
                              ##  String identifier for the type_support.
    data* {.importc: "data".}: pointer ##  Pointer to the service type support library
    `func`* {.importc: "func".}: RosidlServiceTypesupportHandleFunction ##
                              ##  Pointer to the service type support handler function
    eventMessageCreateHandleFunction* {.importc: "event_message_create_handle_function".}: RosidlEventMessageCreateHandleFunctionFunction ##
                              ##  Pointer to function to create the introspection message
    eventMessageDestroyHandleFunction* {.importc: "event_message_destroy_handle_function".}: RosidlEventMessageDestroyHandleFunctionFunction ##
                              ##  Pointer to function to finalize the introspection message
    eventTypesupport* {.importc: "event_typesupport".}: ptr RosidlMessageTypeSupportT ##
                              ##  Service event message typesupport



proc getServiceTypesupportHandle*(handle: ptr RosidlServiceTypeSupportT;
                                 identifier: cstring): ptr RosidlServiceTypeSupportT {.
    importc: "get_service_typesupport_handle",
    header: "service_type_support_struct.h".}
  ##  Get the service type support handle specific to this identifier.
  ##
  ##  The handle's message typesupport identifier function is returned or if the parameters are NULL
  ##  then an assert will happen.
  ##
  ##  \param handle Handle to service type support
  ##  \param identifier The typesupport identifier to get the handle function for
  ##  \return The associated service typesupport handle function.
  ##

proc getServiceTypesupportHandleFunction*(handle: ptr RosidlServiceTypeSupportT;
    identifier: cstring): ptr RosidlServiceTypeSupportT {.
    importc: "get_service_typesupport_handle_function",
    header: "service_type_support_struct.h".}
  ##  Get the service type support handle function specific to this identifier.
  ##
  ##  If the identifier is the same as this handle's typesupport_identifier the handle is simply
  ##  returned or if the parameters are NULL then an assert will happen.
  ##
  ##  \param handle Handle to service type support
  ##  \param identifier The typesupport identifier to get the handle function for
  ##  \return if the identifier match's the handle's identifier then the handle's function
  ##    is returned.
  ##
##  Get the service type support given a provided action and package.
##
##  \param PkgName Name of the package that contains the service
##  \param SrvSubfolder name of the subfolder (for example: srv)
##  \param SrvName service name
##  \return a rosidl_service_type_support_t struct if founded, otherwise NULL.
##
