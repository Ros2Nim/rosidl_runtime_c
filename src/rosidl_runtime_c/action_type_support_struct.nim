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

import
  ./message_type_support_struct, ./visibility_control, ./visibility_control,
  ./message_type_support_struct, ./message_type_support_struct,
  ./service_type_support_struct, ./service_type_support_struct,
  rcutils/types/rcutils_ret, ./service_type_support_struct,
  ./service_type_support_struct

type

  rosidl_action_type_support_t* {.importc: "rosidl_action_type_support_t",
                                  header: "action_type_support_struct.h", bycopy.} = object ##
                              ##  Contains rosidl action type support data.
                              ##
                              ##  Actions are built based on services(goal, result and cancel) and message (feedback and status).
                              ##
    goal_service_type_support* {.importc: "goal_service_type_support".}: ptr rosidl_service_type_support_t
    result_service_type_support* {.importc: "result_service_type_support".}: ptr rosidl_service_type_support_t
    cancel_service_type_support* {.importc: "cancel_service_type_support".}: ptr rosidl_service_type_support_t
    feedback_message_type_support* {.importc: "feedback_message_type_support".}: ptr rosidl_message_type_support_t
    status_message_type_support* {.importc: "status_message_type_support".}: ptr rosidl_message_type_support_t


##  Get the action type support given a provided action and package.
##
##  \param PkgName name of the package that contains the action
##  \param Name action name
##  \return a rosidl_action_type_support_t struct if found, otherwise NULL.
##
