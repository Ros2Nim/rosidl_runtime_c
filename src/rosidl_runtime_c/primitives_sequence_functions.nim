##  #pragma c2nim nep1

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
  primitives_sequence, primitives_sequence, primitives_sequence,
  visibility_control, visibility_control

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


proc float_Sequence*(sequence: ptr float_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##
                                               ##  \defgroup primitives_sequence_functions__basic_types Sequence functions for all basic types.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc float_Sequence*(sequence: ptr float_Sequence) {.
    importc: "rosidl_runtime_c__float__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc float_Sequence*(lhs: ptr float_Sequence; rhs: ptr float_Sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc float_Sequence*(input: ptr float_Sequence; output: ptr float_Sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc double_Sequence*(sequence: ptr double_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc double_Sequence*(sequence: ptr double_Sequence) {.
    importc: "rosidl_runtime_c__double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc double_Sequence*(lhs: ptr double_Sequence; rhs: ptr double_Sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc double_Sequence*(input: ptr double_Sequence; output: ptr double_Sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc long_double_Sequence*(sequence: ptr long_double_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc long_double_Sequence*(sequence: ptr long_double_Sequence) {.
    importc: "rosidl_runtime_c__long_double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc long_double_Sequence*(lhs: ptr long_double_Sequence;
                           rhs: ptr long_double_Sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc long_double_Sequence*(input: ptr long_double_Sequence;
                           output: ptr long_double_Sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc char_Sequence*(sequence: ptr char_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__char__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc char_Sequence*(sequence: ptr char_Sequence) {.
    importc: "rosidl_runtime_c__char__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc char_Sequence*(lhs: ptr char_Sequence; rhs: ptr char_Sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc char_Sequence*(input: ptr char_Sequence; output: ptr char_Sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc wchar_Sequence*(sequence: ptr wchar_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc wchar_Sequence*(sequence: ptr wchar_Sequence) {.
    importc: "rosidl_runtime_c__wchar__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc wchar_Sequence*(lhs: ptr wchar_Sequence; rhs: ptr wchar_Sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc wchar_Sequence*(input: ptr wchar_Sequence; output: ptr wchar_Sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc boolean_Sequence*(sequence: ptr boolean_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc boolean_Sequence*(sequence: ptr boolean_Sequence) {.
    importc: "rosidl_runtime_c__boolean__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc boolean_Sequence*(lhs: ptr boolean_Sequence; rhs: ptr boolean_Sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc boolean_Sequence*(input: ptr boolean_Sequence; output: ptr boolean_Sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc octet_Sequence*(sequence: ptr octet_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc octet_Sequence*(sequence: ptr octet_Sequence) {.
    importc: "rosidl_runtime_c__octet__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc octet_Sequence*(lhs: ptr octet_Sequence; rhs: ptr octet_Sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc octet_Sequence*(input: ptr octet_Sequence; output: ptr octet_Sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint8_Sequence*(sequence: ptr uint8_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint8_Sequence*(sequence: ptr uint8_Sequence) {.
    importc: "rosidl_runtime_c__uint8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint8_Sequence*(lhs: ptr uint8_Sequence; rhs: ptr uint8_Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint8_Sequence*(input: ptr uint8_Sequence; output: ptr uint8_Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int8_Sequence*(sequence: ptr int8_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int8_Sequence*(sequence: ptr int8_Sequence) {.
    importc: "rosidl_runtime_c__int8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int8_Sequence*(lhs: ptr int8_Sequence; rhs: ptr int8_Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int8_Sequence*(input: ptr int8_Sequence; output: ptr int8_Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint16_Sequence*(sequence: ptr uint16_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint16_Sequence*(sequence: ptr uint16_Sequence) {.
    importc: "rosidl_runtime_c__uint16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint16_Sequence*(lhs: ptr uint16_Sequence; rhs: ptr uint16_Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint16_Sequence*(input: ptr uint16_Sequence; output: ptr uint16_Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int16_Sequence*(sequence: ptr int16_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int16_Sequence*(sequence: ptr int16_Sequence) {.
    importc: "rosidl_runtime_c__int16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int16_Sequence*(lhs: ptr int16_Sequence; rhs: ptr int16_Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int16_Sequence*(input: ptr int16_Sequence; output: ptr int16_Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint32_Sequence*(sequence: ptr uint32_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint32_Sequence*(sequence: ptr uint32_Sequence) {.
    importc: "rosidl_runtime_c__uint32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint32_Sequence*(lhs: ptr uint32_Sequence; rhs: ptr uint32_Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint32_Sequence*(input: ptr uint32_Sequence; output: ptr uint32_Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int32_Sequence*(sequence: ptr int32_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int32_Sequence*(sequence: ptr int32_Sequence) {.
    importc: "rosidl_runtime_c__int32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int32_Sequence*(lhs: ptr int32_Sequence; rhs: ptr int32_Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int32_Sequence*(input: ptr int32_Sequence; output: ptr int32_Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint64_Sequence*(sequence: ptr uint64_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint64_Sequence*(sequence: ptr uint64_Sequence) {.
    importc: "rosidl_runtime_c__uint64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint64_Sequence*(lhs: ptr uint64_Sequence; rhs: ptr uint64_Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint64_Sequence*(input: ptr uint64_Sequence; output: ptr uint64_Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int64_Sequence*(sequence: ptr int64_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int64_Sequence*(sequence: ptr int64_Sequence) {.
    importc: "rosidl_runtime_c__int64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int64_Sequence*(lhs: ptr int64_Sequence; rhs: ptr int64_Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int64_Sequence*(input: ptr int64_Sequence; output: ptr int64_Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc bool_Sequence*(sequence: ptr boolean_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ## @}
                                               ##
                                               ##  \defgroup primitives_sequence_functions__legacy Sequence functions for legacy types for backward compatibility.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(bool)

proc bool_Sequence*(sequence: ptr boolean_Sequence) {.
    importc: "rosidl_runtime_c__bool__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(bool)

proc bool_Sequence*(lhs: ptr boolean_Sequence; rhs: ptr boolean_Sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(bool)

proc bool_Sequence*(input: ptr boolean_Sequence; output: ptr boolean_Sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(bool)

proc byte_Sequence*(sequence: ptr octet_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(byte)

proc byte_Sequence*(sequence: ptr octet_Sequence) {.
    importc: "rosidl_runtime_c__byte__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(byte)

proc byte_Sequence*(lhs: ptr octet_Sequence; rhs: ptr octet_Sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(byte)

proc byte_Sequence*(input: ptr octet_Sequence; output: ptr octet_Sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(byte)

proc float32_Sequence*(sequence: ptr float_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float32)

proc float32_Sequence*(sequence: ptr float_Sequence) {.
    importc: "rosidl_runtime_c__float32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float32)

proc float32_Sequence*(lhs: ptr float_Sequence; rhs: ptr float_Sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float32)

proc float32_Sequence*(input: ptr float_Sequence; output: ptr float_Sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float32)

proc float64_Sequence*(sequence: ptr double_Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float64)

proc float64_Sequence*(sequence: ptr double_Sequence) {.
    importc: "rosidl_runtime_c__float64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float64)

proc float64_Sequence*(lhs: ptr double_Sequence; rhs: ptr double_Sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float64)

proc float64_Sequence*(input: ptr double_Sequence; output: ptr double_Sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float64)
## @}
