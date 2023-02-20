##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"
##  #pragma c2nim mangle " @@'__' {\\ident+}" "$1_$2"

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


proc floatSequenceInit*(sequence: ptr floatSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##
                                               ##  \defgroup primitives_sequence_functions__basic_types Sequence functions for all basic types.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc floatSequenceFini*(sequence: ptr floatSequence) {.
    importc: "rosidl_runtime_c__float__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc floatSequenceAreEqual*(lhs: ptr floatSequence; rhs: ptr floatSequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc floatSequenceCopy*(input: ptr floatSequence; output: ptr floatSequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc doubleSequenceInit*(sequence: ptr DoubleSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc doubleSequenceFini*(sequence: ptr DoubleSequence) {.
    importc: "rosidl_runtime_c__double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc doubleSequenceAreEqual*(lhs: ptr DoubleSequence; rhs: ptr DoubleSequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc doubleSequenceCopy*(input: ptr DoubleSequence; output: ptr DoubleSequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc longDoubleSequenceInit*(sequence: ptr LongDoubleSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc longDoubleSequenceFini*(sequence: ptr LongDoubleSequence) {.
    importc: "rosidl_runtime_c__long_double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc longDoubleSequenceAreEqual*(lhs: ptr LongDoubleSequence;
                                 rhs: ptr LongDoubleSequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc longDoubleSequenceCopy*(input: ptr LongDoubleSequence;
                             output: ptr LongDoubleSequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc charSequenceInit*(sequence: ptr charSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__char__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc charSequenceFini*(sequence: ptr charSequence) {.
    importc: "rosidl_runtime_c__char__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc charSequenceAreEqual*(lhs: ptr charSequence; rhs: ptr charSequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc charSequenceCopy*(input: ptr charSequence; output: ptr charSequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc wcharSequenceInit*(sequence: ptr WcharSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc wcharSequenceFini*(sequence: ptr WcharSequence) {.
    importc: "rosidl_runtime_c__wchar__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc wcharSequenceAreEqual*(lhs: ptr WcharSequence; rhs: ptr WcharSequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc wcharSequenceCopy*(input: ptr WcharSequence; output: ptr WcharSequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc booleanSequenceInit*(sequence: ptr booleanSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc booleanSequenceFini*(sequence: ptr booleanSequence) {.
    importc: "rosidl_runtime_c__boolean__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc booleanSequenceAreEqual*(lhs: ptr booleanSequence; rhs: ptr booleanSequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc booleanSequenceCopy*(input: ptr booleanSequence;
                          output: ptr booleanSequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc octetSequenceInit*(sequence: ptr OctetSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc octetSequenceFini*(sequence: ptr OctetSequence) {.
    importc: "rosidl_runtime_c__octet__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc octetSequenceAreEqual*(lhs: ptr OctetSequence; rhs: ptr OctetSequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc octetSequenceCopy*(input: ptr OctetSequence; output: ptr OctetSequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint8SequenceInit*(sequence: ptr uint8Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint8SequenceFini*(sequence: ptr uint8Sequence) {.
    importc: "rosidl_runtime_c__uint8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint8SequenceAreEqual*(lhs: ptr uint8Sequence; rhs: ptr uint8Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint8SequenceCopy*(input: ptr uint8Sequence; output: ptr uint8Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int8SequenceInit*(sequence: ptr int8Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int8SequenceFini*(sequence: ptr int8Sequence) {.
    importc: "rosidl_runtime_c__int8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int8SequenceAreEqual*(lhs: ptr int8Sequence; rhs: ptr int8Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int8SequenceCopy*(input: ptr int8Sequence; output: ptr int8Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint16SequenceInit*(sequence: ptr uint16Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint16SequenceFini*(sequence: ptr uint16Sequence) {.
    importc: "rosidl_runtime_c__uint16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint16SequenceAreEqual*(lhs: ptr uint16Sequence; rhs: ptr uint16Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint16SequenceCopy*(input: ptr uint16Sequence; output: ptr uint16Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int16SequenceInit*(sequence: ptr int16Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int16SequenceFini*(sequence: ptr int16Sequence) {.
    importc: "rosidl_runtime_c__int16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int16SequenceAreEqual*(lhs: ptr int16Sequence; rhs: ptr int16Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int16SequenceCopy*(input: ptr int16Sequence; output: ptr int16Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint32SequenceInit*(sequence: ptr uint32Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint32SequenceFini*(sequence: ptr uint32Sequence) {.
    importc: "rosidl_runtime_c__uint32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint32SequenceAreEqual*(lhs: ptr uint32Sequence; rhs: ptr uint32Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint32SequenceCopy*(input: ptr uint32Sequence; output: ptr uint32Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int32SequenceInit*(sequence: ptr int32Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int32SequenceFini*(sequence: ptr int32Sequence) {.
    importc: "rosidl_runtime_c__int32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int32SequenceAreEqual*(lhs: ptr int32Sequence; rhs: ptr int32Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int32SequenceCopy*(input: ptr int32Sequence; output: ptr int32Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc uint64SequenceInit*(sequence: ptr uint64Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc uint64SequenceFini*(sequence: ptr uint64Sequence) {.
    importc: "rosidl_runtime_c__uint64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc uint64SequenceAreEqual*(lhs: ptr uint64Sequence; rhs: ptr uint64Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc uint64SequenceCopy*(input: ptr uint64Sequence; output: ptr uint64Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc int64SequenceInit*(sequence: ptr int64Sequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc int64SequenceFini*(sequence: ptr int64Sequence) {.
    importc: "rosidl_runtime_c__int64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc int64SequenceAreEqual*(lhs: ptr int64Sequence; rhs: ptr int64Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc int64SequenceCopy*(input: ptr int64Sequence; output: ptr int64Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc boolSequenceInit*(sequence: ptr booleanSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ## @}
                                               ##
                                               ##  \defgroup primitives_sequence_functions__legacy Sequence functions for legacy types for backward compatibility.
                                               ##
                                               ## @{
                                               ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(bool)

proc boolSequenceFini*(sequence: ptr booleanSequence) {.
    importc: "rosidl_runtime_c__bool__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(bool)

proc boolSequenceAreEqual*(lhs: ptr booleanSequence; rhs: ptr booleanSequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(bool)

proc boolSequenceCopy*(input: ptr booleanSequence; output: ptr booleanSequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(bool)

proc byteSequenceInit*(sequence: ptr OctetSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(byte)

proc byteSequenceFini*(sequence: ptr OctetSequence) {.
    importc: "rosidl_runtime_c__byte__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(byte)

proc byteSequenceAreEqual*(lhs: ptr OctetSequence; rhs: ptr OctetSequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(byte)

proc byteSequenceCopy*(input: ptr OctetSequence; output: ptr OctetSequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(byte)

proc float32SequenceInit*(sequence: ptr floatSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float32)

proc float32SequenceFini*(sequence: ptr floatSequence) {.
    importc: "rosidl_runtime_c__float32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float32)

proc float32SequenceAreEqual*(lhs: ptr floatSequence; rhs: ptr floatSequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float32)

proc float32SequenceCopy*(input: ptr floatSequence; output: ptr floatSequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float32)

proc float64SequenceInit*(sequence: ptr DoubleSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float64)

proc float64SequenceFini*(sequence: ptr DoubleSequence) {.
    importc: "rosidl_runtime_c__float64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float64)

proc float64SequenceAreEqual*(lhs: ptr DoubleSequence; rhs: ptr DoubleSequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float64)

proc float64SequenceCopy*(input: ptr DoubleSequence; output: ptr DoubleSequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float64)
## @}
