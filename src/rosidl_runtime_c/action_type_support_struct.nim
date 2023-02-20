##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"

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

import
  message_type_support_struct, visibility_control, visibility_control,
  message_type_support_struct, message_type_support_struct,
  service_type_support_struct, service_type_support_struct, rcutils.allocator,
  rcutils.allocator, rcutils.allocator, rcutils.macros, rcutils.macros,
  rcutils.macros, rcutils.macros, rcutils.macros, rcutils.allocator,
  rcutils.types.rcutils_ret, rcutils.allocator,
  rcutils.visibility_control_macros, rcutils.visibility_control_macros,
  rcutils.allocator, service_type_support_struct, service_type_support_struct

type

  RosidlActionTypeSupportT* {.importc: "rosidl_action_type_support_t",
                              header: "action_type_support_struct.h", bycopy.} = object ##
                              ##  Contains rosidl action type support data.
                              ##
                              ##  Actions are built based on services(goal, result and cancel) and message (feedback and status).
                              ##
    goalServiceTypeSupport* {.importc: "goal_service_type_support".}: ptr RosidlServiceTypeSupportT
    resultServiceTypeSupport* {.importc: "result_service_type_support".}: ptr RosidlServiceTypeSupportT
    cancelServiceTypeSupport* {.importc: "cancel_service_type_support".}: ptr RosidlServiceTypeSupportT
    feedbackMessageTypeSupport* {.importc: "feedback_message_type_support".}: ptr RosidlMessageTypeSupportT
    statusMessageTypeSupport* {.importc: "status_message_type_support".}: ptr RosidlMessageTypeSupportT


##  Get the action type support given a provided action and package.
##
##  \param PkgName name of the package that contains the action
##  \param Name action name
##  \return a rosidl_action_type_support_t struct if found, otherwise NULL.
##
