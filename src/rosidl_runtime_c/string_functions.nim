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
  ./string, ./string, ./primitives_sequence, ./primitives_sequence,
  ./primitives_sequence, ./primitives_sequence, ./string, ./visibility_control,
  ./visibility_control


proc rosidlRuntimeCStringInit*(str: ptr RosidlRuntimeCString): bool {.
    importc: "rosidl_runtime_c__String__init", header: "string_functions.h".}
  ##  Initialize a rosidl_runtime_c__String structure.
  ##
  ##  The contents of rosidl_runtime_c__String are initialized to a single null character ('\0').
  ##  The string initially has size 0 and capacity 1.
  ##  Size represents the size of the contents of the string, while capacity represents the overall
  ##  storage of the string (counting the null terminator).
  ##  All strings must be null-terminated.
  ##  The rosidl_runtime_c__String structure should be deallocated using the given function
  ##  rosidl_runtime_c__String__fini() when it is no longer needed.
  ##  Calling this function with an already initialized U16 string sequence structure will leak
  ##  memory.
  ##
  ##  \param[inout] str a pointer to a rosidl_runtime_c__String structure
  ##  \return true if successful, false if the passed string pointer is null
  ##    or the memory allocation failed
  ##

proc rosidlRuntimeCStringFini*(str: ptr RosidlRuntimeCString) {.
    importc: "rosidl_runtime_c__String__fini", header: "string_functions.h".}
  ##  Deallocate the memory of the rosidl_runtime_c__String structure.
  ##
  ##  Calling the function with an already deallocated sequence is a no-op.
  ##
  ##  \param[inout] str a pointer to a rosidl_runtime_c__String structure to be finalized
  ##

proc rosidlRuntimeCStringCopy*(input: ptr RosidlRuntimeCString;
                              output: ptr RosidlRuntimeCString): bool {.
    importc: "rosidl_runtime_c__String__copy", header: "string_functions.h".}
  ##  Copy rosidl_runtime_c__String structure content.
  ##
  ##  This functions performs a deep copy, as opposed to the shallow copy that
  ##  plain assignment yields.
  ##
  ##  \param[in] input a pointer to a rosidl_runtime_c__String structure
  ##    to copy from.
  ##  \param[out] output a pointer to an initialized rosidl_runtime_c__String
  ##    structure to copy into.
  ##  \return true if successful, false if either pointer is null or memory
  ##    allocation fails.
  ##

proc rosidlRuntimeCStringAreEqual*(lhs: ptr RosidlRuntimeCString;
                                  rhs: ptr RosidlRuntimeCString): bool {.
    importc: "rosidl_runtime_c__String__are_equal", header: "string_functions.h".}
  ##  Check for rosidl_runtime_c__String structure equality.
  ##
  ##  \param[in] lhs a pointer to the left hand side of the equality operator.
  ##  \param[in] lhs a pointer to the right hand side of the equality operator.
  ##  \return true if rosidl_runtime_c__String structures are equal in size and content,
  ##    otherwise false.
  ##

proc rosidlRuntimeCStringAssignn*(str: ptr RosidlRuntimeCString; value: cstring;
                                 n: csize_t): bool {.
    importc: "rosidl_runtime_c__String__assignn", header: "string_functions.h".}
  ##  Assign the c string pointer of n characters to the rosidl_runtime_c__String structure.
  ##
  ##  \param[inout] str a pointer to a string structure
  ##  \param[in] value c string pointer to be assigned
  ##  \param[in] n size of the value string
  ##  \return true if successful, false if the passed string pointer is null
  ##    or if the passed value pointer is null or if the size is higher than SIZE_MAX
  ##    or if the memory reallocation failed.
  ##

proc rosidlRuntimeCStringAssign*(str: ptr RosidlRuntimeCString; value: cstring): bool {.
    importc: "rosidl_runtime_c__String__assign", header: "string_functions.h".}
  ##  Assign the c string pointer to the rosidl_runtime_c__String structure.
  ##
  ##
  ##  This function is identical to rosidl_runtime_c__String__assignn() except the length of the
  ##  c string does not have to be given and therefore the c string must be null terminated.
  ##
  ##  \see rosidl_runtime_c__String__assignn()
  ##
  ##  \param[inout] str a pointer to a rosidl_runtime_c__String structure
  ##  \param[in] value c string pointer to be assigned
  ##  \return true if successful, false if the passed string pointer is null
  ##    or if the passed value pointer is null or if the size is higher than SIZE_MAX
  ##    or if the memory reallocation failed.
  ##

proc rosidlRuntimeCStringSequenceInit*(sequence: ptr RosidlRuntimeCStringSequence;
                                      size: csize_t): bool {.
    importc: "rosidl_runtime_c__String__Sequence__init",
    header: "string_functions.h".}
  ##  Initialize a rosidl_runtime_c__String__Sequence__init structure.
  ##
  ##  The rosidl_runtime_c__String__Sequence is initialized with the size passed to the function.
  ##  The rosidl_runtime_c__String__Sequence structure should be deallocated using the given function
  ##  rosidl_runtime_c__String__Sequence__fini() when it is no longer needed.
  ##  Calling this function with an already initialized U16 string sequence structure will leak
  ##  memory.
  ##
  ##  \param[inout] sequence a pointer to a string sequence
  ##  \param[in] size represents the size of the string sequence
  ##  \return true if successful, false if the passed string pointer is null
  ##    or the memory allocation failed
  ##

proc rosidlRuntimeCStringSequenceFini*(sequence: ptr RosidlRuntimeCStringSequence) {.
    importc: "rosidl_runtime_c__String__Sequence__fini",
    header: "string_functions.h".}
  ##  Deallocate the memory of the string sequence structure.
  ##
  ##  Calling the function with an already deallocated sequence is a no-op.
  ##
  ##  \param[inout] sequence a pointer to a string sequence to be finalized
  ##

proc rosidlRuntimeCStringSequenceAreEqual*(lhs: ptr RosidlRuntimeCStringSequence;
    rhs: ptr RosidlRuntimeCStringSequence): bool {.
    importc: "rosidl_runtime_c__String__Sequence__are_equal",
    header: "string_functions.h".}
  ##  Check for rosidl_runtime_c__String__Sequence structure equality.
  ##
  ##  \param[in] lhs a pointer to the left hand side of the equality operator.
  ##  \param[in] lhs a pointer to the right hand side of the equality operator.
  ##  \return true if rosidl_runtime_c__String__Sequence structures are equal
  ##    in size and content, otherwise false.
  ##

proc rosidlRuntimeCStringSequenceCopy*(input: ptr RosidlRuntimeCStringSequence;
                                      output: ptr RosidlRuntimeCStringSequence): bool {.
    importc: "rosidl_runtime_c__String__Sequence__copy",
    header: "string_functions.h".}
  ##  Copy rosidl_runtime_c__String__Sequence structure content.
  ##
  ##  This functions performs a deep copy, as opposed to the shallow copy
  ##  that plain assignment yields.
  ##
  ##  \param[in] input a pointer to a rosidl_runtime_c__String__Sequence
  ##    structure to copy from.
  ##  \param[out] output a pointer to an initialized rosidl_runtime_c__String__Sequence
  ##    structure to copy into.
  ##  \return true if successful, false if either pointer is null or memory
  ##    allocation fails.
  ##

proc rosidlRuntimeCStringSequenceCreate*(size: csize_t): ptr RosidlRuntimeCStringSequence {.
    importc: "rosidl_runtime_c__String__Sequence__create",
    header: "string_functions.h".}
  ##  Create a rosidl_runtime_c__String__Sequence structure with a specific size.
  ##
  ##  The string sequence initially has size and capacity equal to the size argument passed to the
  ##  function.
  ##  The rosidl_runtime_c__String__Sequence structure should be deallocated using the given function
  ##  rosidl_runtime_c__String__Sequence__destroy() when it is no longer needed.
  ##
  ##  \param[in] size of the desired string sequence
  ##  \return a string sequence if initialization was successfully, otherwise NULL.
  ##

proc rosidlRuntimeCStringSequenceDestroy*(
    sequence: ptr RosidlRuntimeCStringSequence) {.
    importc: "rosidl_runtime_c__String__Sequence__destroy",
    header: "string_functions.h".}
  ##  Destroy a rosidl_runtime_c__String__Sequence structure.
  ##
  ##  Calling the function with an already deallocated sequence is a no-op.
  ##
  ##  \param[inout] sequence a pointer to a string sequence to be finalized
  ## 