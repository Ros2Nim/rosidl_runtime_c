##  #pragma c2nim reordertypes

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
  ./primitives_sequence, ./primitives_sequence, ./primitives_sequence,
  ./visibility_control, ./visibility_control

##
##  \def ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)
##
##  \brief Allocate the memory for the sequence.
##
##  Calling the function with an already allocated sequence will leak the
##  previously allocated memory.
##
##  param sequence a pointer to a sequence struct
##  param size the number of items to allocate in the sequence, both sequence
##    fields `size` and `capacity` are set to this parameter
##  return true if successful, false if the passed sequence pointer is null
##    or the memory allocation failed
##

##
##  \def ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(STRUCT_NAME)
##
##  \brief Deallocate the memory of the sequence.
##
##  Calling the function with an already deallocated sequence is a no-op.
##
##  param sequence a pointer to a sequence struct
##

##
##  \def ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)
##
##  \brief Check for sequence equality.
##
##  param lhs a pointer to a sequence struct
##  param rhs a pointer to another sequence struct
##

##
##  \def ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)
##
##  \brief Copy the sequence.
##
##  param input a pointer to the sequence to copy from
##  param output a pointer to an initialized sequence to copy to
##  return true if successful, false if either pointer is null or memory
##    allocation fails.
##

##
##  \def ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FUNCTIONS(STRUCT_NAME)
##
##  \brief See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME),
##  #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(STRUCT_NAME),
##  #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME), and
##  #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME).
##


proc float__Sequence__init*(sequence: ptr float__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##
  ##  \defgroup primitives_sequence_functions__basic_types Sequence functions for all basic types.
  ##
  ## @{
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc float__Sequence__fini*(sequence: ptr float__Sequence) {.
    importc: "rosidl_runtime_c__float__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc float__Sequence__are_equal*(lhs: ptr float__Sequence; rhs: ptr float__Sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc float__Sequence__copy*(input: ptr float__Sequence; output: ptr float__Sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc double__Sequence__init*(sequence: ptr double__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc double__Sequence__fini*(sequence: ptr double__Sequence) {.
    importc: "rosidl_runtime_c__double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc double__Sequence__are_equal*(lhs: ptr double__Sequence;
                                 rhs: ptr double__Sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc double__Sequence__copy*(input: ptr double__Sequence;
                            output: ptr double__Sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc long_double__Sequence__init*(sequence: ptr long_double__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc long_double__Sequence__fini*(sequence: ptr long_double__Sequence) {.
    importc: "rosidl_runtime_c__long_double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc long_double__Sequence__are_equal*(lhs: ptr long_double__Sequence;
                                      rhs: ptr long_double__Sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc long_double__Sequence__copy*(input: ptr long_double__Sequence;
                                 output: ptr long_double__Sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc char__Sequence__init*(sequence: ptr char__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__char__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc char__Sequence__fini*(sequence: ptr char__Sequence) {.
    importc: "rosidl_runtime_c__char__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc char__Sequence__are_equal*(lhs: ptr char__Sequence; rhs: ptr char__Sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc char__Sequence__copy*(input: ptr char__Sequence; output: ptr char__Sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc wchar__Sequence__init*(sequence: ptr wchar__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc wchar__Sequence__fini*(sequence: ptr wchar__Sequence) {.
    importc: "rosidl_runtime_c__wchar__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc wchar__Sequence__are_equal*(lhs: ptr wchar__Sequence; rhs: ptr wchar__Sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc wchar__Sequence__copy*(input: ptr wchar__Sequence; output: ptr wchar__Sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc boolean__Sequence__init*(sequence: ptr boolean__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc boolean__Sequence__fini*(sequence: ptr boolean__Sequence) {.
    importc: "rosidl_runtime_c__boolean__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc boolean__Sequence__are_equal*(lhs: ptr boolean__Sequence;
                                  rhs: ptr boolean__Sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc boolean__Sequence__copy*(input: ptr boolean__Sequence;
                             output: ptr boolean__Sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc octet__Sequence__init*(sequence: ptr octet__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc octet__Sequence__fini*(sequence: ptr octet__Sequence) {.
    importc: "rosidl_runtime_c__octet__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc octet__Sequence__are_equal*(lhs: ptr octet__Sequence; rhs: ptr octet__Sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc octet__Sequence__copy*(input: ptr octet__Sequence; output: ptr octet__Sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint8__Sequence__init*(sequence: ptr uint8__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint8__Sequence__fini*(sequence: ptr uint8__Sequence) {.
    importc: "rosidl_runtime_c__uint8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint8__Sequence__are_equal*(lhs: ptr uint8__Sequence; rhs: ptr uint8__Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint8__Sequence__copy*(input: ptr uint8__Sequence; output: ptr uint8__Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int8__Sequence__init*(sequence: ptr int8__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int8__Sequence__fini*(sequence: ptr int8__Sequence) {.
    importc: "rosidl_runtime_c__int8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int8__Sequence__are_equal*(lhs: ptr int8__Sequence; rhs: ptr int8__Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int8__Sequence__copy*(input: ptr int8__Sequence; output: ptr int8__Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint16__Sequence__init*(sequence: ptr uint16__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint16__Sequence__fini*(sequence: ptr uint16__Sequence) {.
    importc: "rosidl_runtime_c__uint16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint16__Sequence__are_equal*(lhs: ptr uint16__Sequence;
                                 rhs: ptr uint16__Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint16__Sequence__copy*(input: ptr uint16__Sequence;
                            output: ptr uint16__Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int16__Sequence__init*(sequence: ptr int16__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int16__Sequence__fini*(sequence: ptr int16__Sequence) {.
    importc: "rosidl_runtime_c__int16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int16__Sequence__are_equal*(lhs: ptr int16__Sequence; rhs: ptr int16__Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int16__Sequence__copy*(input: ptr int16__Sequence; output: ptr int16__Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint32__Sequence__init*(sequence: ptr uint32__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint32__Sequence__fini*(sequence: ptr uint32__Sequence) {.
    importc: "rosidl_runtime_c__uint32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint32__Sequence__are_equal*(lhs: ptr uint32__Sequence;
                                 rhs: ptr uint32__Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint32__Sequence__copy*(input: ptr uint32__Sequence;
                            output: ptr uint32__Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int32__Sequence__init*(sequence: ptr int32__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int32__Sequence__fini*(sequence: ptr int32__Sequence) {.
    importc: "rosidl_runtime_c__int32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int32__Sequence__are_equal*(lhs: ptr int32__Sequence; rhs: ptr int32__Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int32__Sequence__copy*(input: ptr int32__Sequence; output: ptr int32__Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint64__Sequence__init*(sequence: ptr uint64__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint64__Sequence__fini*(sequence: ptr uint64__Sequence) {.
    importc: "rosidl_runtime_c__uint64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint64__Sequence__are_equal*(lhs: ptr uint64__Sequence;
                                 rhs: ptr uint64__Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint64__Sequence__copy*(input: ptr uint64__Sequence;
                            output: ptr uint64__Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int64__Sequence__init*(sequence: ptr int64__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int64__Sequence__fini*(sequence: ptr int64__Sequence) {.
    importc: "rosidl_runtime_c__int64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int64__Sequence__are_equal*(lhs: ptr int64__Sequence; rhs: ptr int64__Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int64__Sequence__copy*(input: ptr int64__Sequence; output: ptr int64__Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc bool__Sequence__init*(sequence: ptr boolean__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ## @}
  ##
  ##  \defgroup primitives_sequence_functions__legacy Sequence functions for legacy types for backward compatibility.
  ##
  ## @{
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(bool)

proc bool__Sequence__fini*(sequence: ptr boolean__Sequence) {.
    importc: "rosidl_runtime_c__bool__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(bool)

proc bool__Sequence__are_equal*(lhs: ptr boolean__Sequence;
                               rhs: ptr boolean__Sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(bool)

proc bool__Sequence__copy*(input: ptr boolean__Sequence;
                          output: ptr boolean__Sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(bool)

proc byte__Sequence__init*(sequence: ptr octet__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(byte)

proc byte__Sequence__fini*(sequence: ptr octet__Sequence) {.
    importc: "rosidl_runtime_c__byte__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(byte)

proc byte__Sequence__are_equal*(lhs: ptr octet__Sequence; rhs: ptr octet__Sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(byte)

proc byte__Sequence__copy*(input: ptr octet__Sequence; output: ptr octet__Sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(byte)

proc float32__Sequence__init*(sequence: ptr float__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float32)

proc float32__Sequence__fini*(sequence: ptr float__Sequence) {.
    importc: "rosidl_runtime_c__float32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float32)

proc float32__Sequence__are_equal*(lhs: ptr float__Sequence;
                                  rhs: ptr float__Sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float32)

proc float32__Sequence__copy*(input: ptr float__Sequence;
                             output: ptr float__Sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float32)

proc float64__Sequence__init*(sequence: ptr double__Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float64)

proc float64__Sequence__fini*(sequence: ptr double__Sequence) {.
    importc: "rosidl_runtime_c__float64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float64)

proc float64__Sequence__are_equal*(lhs: ptr double__Sequence;
                                  rhs: ptr double__Sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float64)

proc float64__Sequence__copy*(input: ptr double__Sequence;
                             output: ptr double__Sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float64)
## @}
