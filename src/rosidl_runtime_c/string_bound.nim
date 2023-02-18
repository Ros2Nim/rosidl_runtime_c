##  #pragma c2nim importFuncDefines
##  #pragma c2nim importc
##  --importDefines        import C defines as procs or vars with ``{.importc.}``
##  --importFuncDefines    import C define funcs as procs with ``{.importc.}``

##  #pragma c2nim header

##  #pragma c2nim importc

##  #pragma c2nim render nobody

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

  RosidlRuntimeCStringBound* {.importc: "rosidl_runtime_c__String__bound",
                              header: "string_bound.h", bycopy.} = object ##
                              ##  Upper boundary for #rosidl_runtime_c__String or #rosidl_runtime_c__U16String.
    bound* {.importc: "bound".}: csize_t ##  The number of characters in the string (excluding the null character).
