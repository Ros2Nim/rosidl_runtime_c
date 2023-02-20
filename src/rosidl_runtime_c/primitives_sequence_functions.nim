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


proc float_sequence_init*(sequence: ptr float_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##
                                               ##  \defgroup primitives_sequence_functions__basic_types Sequence functions for all basic types.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc float_sequence_fini*(sequence: ptr float_sequence) {.
    importc: "rosidl_runtime_c__float__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc float_sequence_are_equal*(lhs: ptr float_sequence; rhs: ptr float_sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc float_sequence_copy*(input: ptr float_sequence; output: ptr float_sequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc double_sequence_init*(sequence: ptr double_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc double_sequence_fini*(sequence: ptr double_sequence) {.
    importc: "rosidl_runtime_c__double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc double_sequence_are_equal*(lhs: ptr double_sequence;
                                rhs: ptr double_sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc double_sequence_copy*(input: ptr double_sequence;
                           output: ptr double_sequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc long_double_sequence_init*(sequence: ptr long_double_sequence;
                                size: csize_t): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc long_double_sequence_fini*(sequence: ptr long_double_sequence) {.
    importc: "rosidl_runtime_c__long_double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc long_double_sequence_are_equal*(lhs: ptr long_double_sequence;
                                     rhs: ptr long_double_sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc long_double_sequence_copy*(input: ptr long_double_sequence;
                                output: ptr long_double_sequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc char_sequence_init*(sequence: ptr char_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__char__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc char_sequence_fini*(sequence: ptr char_sequence) {.
    importc: "rosidl_runtime_c__char__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc char_sequence_are_equal*(lhs: ptr char_sequence; rhs: ptr char_sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc char_sequence_copy*(input: ptr char_sequence; output: ptr char_sequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc wchar_sequence_init*(sequence: ptr wchar_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc wchar_sequence_fini*(sequence: ptr wchar_sequence) {.
    importc: "rosidl_runtime_c__wchar__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc wchar_sequence_are_equal*(lhs: ptr wchar_sequence; rhs: ptr wchar_sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc wchar_sequence_copy*(input: ptr wchar_sequence; output: ptr wchar_sequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc boolean_sequence_init*(sequence: ptr boolean_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc boolean_sequence_fini*(sequence: ptr boolean_sequence) {.
    importc: "rosidl_runtime_c__boolean__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc boolean_sequence_are_equal*(lhs: ptr boolean_sequence;
                                 rhs: ptr boolean_sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc boolean_sequence_copy*(input: ptr boolean_sequence;
                            output: ptr boolean_sequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc octet_sequence_init*(sequence: ptr octet_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc octet_sequence_fini*(sequence: ptr octet_sequence) {.
    importc: "rosidl_runtime_c__octet__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc octet_sequence_are_equal*(lhs: ptr octet_sequence; rhs: ptr octet_sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc octet_sequence_copy*(input: ptr octet_sequence; output: ptr octet_sequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint8_sequence_init*(sequence: ptr uint8_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint8_sequence_fini*(sequence: ptr uint8_sequence) {.
    importc: "rosidl_runtime_c__uint8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint8_sequence_are_equal*(lhs: ptr uint8_sequence; rhs: ptr uint8_sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint8_sequence_copy*(input: ptr uint8_sequence; output: ptr uint8_sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int8_sequence_init*(sequence: ptr int8_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int8_sequence_fini*(sequence: ptr int8_sequence) {.
    importc: "rosidl_runtime_c__int8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int8_sequence_are_equal*(lhs: ptr int8_sequence; rhs: ptr int8_sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int8_sequence_copy*(input: ptr int8_sequence; output: ptr int8_sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint16_sequence_init*(sequence: ptr uint16_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint16_sequence_fini*(sequence: ptr uint16_sequence) {.
    importc: "rosidl_runtime_c__uint16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint16_sequence_are_equal*(lhs: ptr uint16_sequence;
                                rhs: ptr uint16_sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint16_sequence_copy*(input: ptr uint16_sequence;
                           output: ptr uint16_sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int16_sequence_init*(sequence: ptr int16_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int16_sequence_fini*(sequence: ptr int16_sequence) {.
    importc: "rosidl_runtime_c__int16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int16_sequence_are_equal*(lhs: ptr int16_sequence; rhs: ptr int16_sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int16_sequence_copy*(input: ptr int16_sequence; output: ptr int16_sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint32_sequence_init*(sequence: ptr uint32_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint32_sequence_fini*(sequence: ptr uint32_sequence) {.
    importc: "rosidl_runtime_c__uint32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint32_sequence_are_equal*(lhs: ptr uint32_sequence;
                                rhs: ptr uint32_sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint32_sequence_copy*(input: ptr uint32_sequence;
                           output: ptr uint32_sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int32_sequence_init*(sequence: ptr int32_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int32_sequence_fini*(sequence: ptr int32_sequence) {.
    importc: "rosidl_runtime_c__int32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int32_sequence_are_equal*(lhs: ptr int32_sequence; rhs: ptr int32_sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int32_sequence_copy*(input: ptr int32_sequence; output: ptr int32_sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint64_sequence_init*(sequence: ptr uint64_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint64_sequence_fini*(sequence: ptr uint64_sequence) {.
    importc: "rosidl_runtime_c__uint64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint64_sequence_are_equal*(lhs: ptr uint64_sequence;
                                rhs: ptr uint64_sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint64_sequence_copy*(input: ptr uint64_sequence;
                           output: ptr uint64_sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int64_sequence_init*(sequence: ptr int64_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int64_sequence_fini*(sequence: ptr int64_sequence) {.
    importc: "rosidl_runtime_c__int64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int64_sequence_are_equal*(lhs: ptr int64_sequence; rhs: ptr int64_sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int64_sequence_copy*(input: ptr int64_sequence; output: ptr int64_sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc bool_sequence_init*(sequence: ptr boolean_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ## @}
                                               ##
                                               ##  \defgroup primitives_sequence_functions__legacy Sequence functions for legacy types for backward compatibility.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(bool)

proc bool_sequence_fini*(sequence: ptr boolean_sequence) {.
    importc: "rosidl_runtime_c__bool__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(bool)

proc bool_sequence_are_equal*(lhs: ptr boolean_sequence;
                              rhs: ptr boolean_sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(bool)

proc bool_sequence_copy*(input: ptr boolean_sequence;
                         output: ptr boolean_sequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(bool)

proc byte_sequence_init*(sequence: ptr octet_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(byte)

proc byte_sequence_fini*(sequence: ptr octet_sequence) {.
    importc: "rosidl_runtime_c__byte__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(byte)

proc byte_sequence_are_equal*(lhs: ptr octet_sequence; rhs: ptr octet_sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(byte)

proc byte_sequence_copy*(input: ptr octet_sequence; output: ptr octet_sequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(byte)

proc float32_sequence_init*(sequence: ptr float_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float32)

proc float32_sequence_fini*(sequence: ptr float_sequence) {.
    importc: "rosidl_runtime_c__float32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float32)

proc float32_sequence_are_equal*(lhs: ptr float_sequence;
                                 rhs: ptr float_sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float32)

proc float32_sequence_copy*(input: ptr float_sequence;
                            output: ptr float_sequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float32)

proc float64_sequence_init*(sequence: ptr double_sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float64)

proc float64_sequence_fini*(sequence: ptr double_sequence) {.
    importc: "rosidl_runtime_c__float64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float64)

proc float64_sequence_are_equal*(lhs: ptr double_sequence;
                                 rhs: ptr double_sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float64)

proc float64_sequence_copy*(input: ptr double_sequence;
                            output: ptr double_sequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float64)
## @}
