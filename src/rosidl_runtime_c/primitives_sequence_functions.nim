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


proc rosidlRuntimeCFloatSequenceInit*(sequence: ptr RosidlRuntimeCFloatSequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__float__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##
  ##  \defgroup primitives_sequence_functions__basic_types Sequence functions for all basic types.
  ##
  ## @{
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCFloatSequenceFini*(sequence: ptr RosidlRuntimeCFloatSequence) {.
    importc: "rosidl_runtime_c__float__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCFloatSequenceAreEqual*(lhs: ptr RosidlRuntimeCFloatSequence;
    rhs: ptr RosidlRuntimeCFloatSequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCFloatSequenceCopy*(input: ptr RosidlRuntimeCFloatSequence;
                                     output: ptr RosidlRuntimeCFloatSequence): bool {.
    importc: "rosidl_runtime_c__float__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCDoubleSequenceInit*(sequence: ptr RosidlRuntimeCDoubleSequence;
                                      size: csize_t): bool {.
    importc: "rosidl_runtime_c__double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCDoubleSequenceFini*(sequence: ptr RosidlRuntimeCDoubleSequence) {.
    importc: "rosidl_runtime_c__double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCDoubleSequenceAreEqual*(lhs: ptr RosidlRuntimeCDoubleSequence;
    rhs: ptr RosidlRuntimeCDoubleSequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCDoubleSequenceCopy*(input: ptr RosidlRuntimeCDoubleSequence;
                                      output: ptr RosidlRuntimeCDoubleSequence): bool {.
    importc: "rosidl_runtime_c__double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCLongDoubleSequenceInit*(
    sequence: ptr RosidlRuntimeCLongDoubleSequence; size: csize_t): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCLongDoubleSequenceFini*(
    sequence: ptr RosidlRuntimeCLongDoubleSequence) {.
    importc: "rosidl_runtime_c__long_double__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCLongDoubleSequenceAreEqual*(
    lhs: ptr RosidlRuntimeCLongDoubleSequence;
    rhs: ptr RosidlRuntimeCLongDoubleSequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCLongDoubleSequenceCopy*(
    input: ptr RosidlRuntimeCLongDoubleSequence;
    output: ptr RosidlRuntimeCLongDoubleSequence): bool {.
    importc: "rosidl_runtime_c__long_double__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCCharSequenceInit*(sequence: ptr RosidlRuntimeCCharSequence;
                                    size: csize_t): bool {.
    importc: "rosidl_runtime_c__char__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCCharSequenceFini*(sequence: ptr RosidlRuntimeCCharSequence) {.
    importc: "rosidl_runtime_c__char__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCCharSequenceAreEqual*(lhs: ptr RosidlRuntimeCCharSequence;
                                        rhs: ptr RosidlRuntimeCCharSequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCCharSequenceCopy*(input: ptr RosidlRuntimeCCharSequence;
                                    output: ptr RosidlRuntimeCCharSequence): bool {.
    importc: "rosidl_runtime_c__char__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCWcharSequenceInit*(sequence: ptr RosidlRuntimeCWcharSequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCWcharSequenceFini*(sequence: ptr RosidlRuntimeCWcharSequence) {.
    importc: "rosidl_runtime_c__wchar__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCWcharSequenceAreEqual*(lhs: ptr RosidlRuntimeCWcharSequence;
    rhs: ptr RosidlRuntimeCWcharSequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCWcharSequenceCopy*(input: ptr RosidlRuntimeCWcharSequence;
                                     output: ptr RosidlRuntimeCWcharSequence): bool {.
    importc: "rosidl_runtime_c__wchar__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCBooleanSequenceInit*(sequence: ptr RosidlRuntimeCBooleanSequence;
                                       size: csize_t): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCBooleanSequenceFini*(sequence: ptr RosidlRuntimeCBooleanSequence) {.
    importc: "rosidl_runtime_c__boolean__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCBooleanSequenceAreEqual*(
    lhs: ptr RosidlRuntimeCBooleanSequence; rhs: ptr RosidlRuntimeCBooleanSequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCBooleanSequenceCopy*(input: ptr RosidlRuntimeCBooleanSequence;
    output: ptr RosidlRuntimeCBooleanSequence): bool {.
    importc: "rosidl_runtime_c__boolean__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCOctetSequenceInit*(sequence: ptr RosidlRuntimeCOctetSequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCOctetSequenceFini*(sequence: ptr RosidlRuntimeCOctetSequence) {.
    importc: "rosidl_runtime_c__octet__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCOctetSequenceAreEqual*(lhs: ptr RosidlRuntimeCOctetSequence;
    rhs: ptr RosidlRuntimeCOctetSequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCOctetSequenceCopy*(input: ptr RosidlRuntimeCOctetSequence;
                                     output: ptr RosidlRuntimeCOctetSequence): bool {.
    importc: "rosidl_runtime_c__octet__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCUint8SequenceInit*(sequence: ptr RosidlRuntimeCUint8Sequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCUint8SequenceFini*(sequence: ptr RosidlRuntimeCUint8Sequence) {.
    importc: "rosidl_runtime_c__uint8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCUint8SequenceAreEqual*(lhs: ptr RosidlRuntimeCUint8Sequence;
    rhs: ptr RosidlRuntimeCUint8Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCUint8SequenceCopy*(input: ptr RosidlRuntimeCUint8Sequence;
                                     output: ptr RosidlRuntimeCUint8Sequence): bool {.
    importc: "rosidl_runtime_c__uint8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCInt8SequenceInit*(sequence: ptr RosidlRuntimeCInt8Sequence;
                                    size: csize_t): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCInt8SequenceFini*(sequence: ptr RosidlRuntimeCInt8Sequence) {.
    importc: "rosidl_runtime_c__int8__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCInt8SequenceAreEqual*(lhs: ptr RosidlRuntimeCInt8Sequence;
                                        rhs: ptr RosidlRuntimeCInt8Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCInt8SequenceCopy*(input: ptr RosidlRuntimeCInt8Sequence;
                                    output: ptr RosidlRuntimeCInt8Sequence): bool {.
    importc: "rosidl_runtime_c__int8__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCUint16SequenceInit*(sequence: ptr RosidlRuntimeCUint16Sequence;
                                      size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCUint16SequenceFini*(sequence: ptr RosidlRuntimeCUint16Sequence) {.
    importc: "rosidl_runtime_c__uint16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCUint16SequenceAreEqual*(lhs: ptr RosidlRuntimeCUint16Sequence;
    rhs: ptr RosidlRuntimeCUint16Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCUint16SequenceCopy*(input: ptr RosidlRuntimeCUint16Sequence;
                                      output: ptr RosidlRuntimeCUint16Sequence): bool {.
    importc: "rosidl_runtime_c__uint16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCInt16SequenceInit*(sequence: ptr RosidlRuntimeCInt16Sequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCInt16SequenceFini*(sequence: ptr RosidlRuntimeCInt16Sequence) {.
    importc: "rosidl_runtime_c__int16__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCInt16SequenceAreEqual*(lhs: ptr RosidlRuntimeCInt16Sequence;
    rhs: ptr RosidlRuntimeCInt16Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCInt16SequenceCopy*(input: ptr RosidlRuntimeCInt16Sequence;
                                     output: ptr RosidlRuntimeCInt16Sequence): bool {.
    importc: "rosidl_runtime_c__int16__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCUint32SequenceInit*(sequence: ptr RosidlRuntimeCUint32Sequence;
                                      size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCUint32SequenceFini*(sequence: ptr RosidlRuntimeCUint32Sequence) {.
    importc: "rosidl_runtime_c__uint32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCUint32SequenceAreEqual*(lhs: ptr RosidlRuntimeCUint32Sequence;
    rhs: ptr RosidlRuntimeCUint32Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCUint32SequenceCopy*(input: ptr RosidlRuntimeCUint32Sequence;
                                      output: ptr RosidlRuntimeCUint32Sequence): bool {.
    importc: "rosidl_runtime_c__uint32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCInt32SequenceInit*(sequence: ptr RosidlRuntimeCInt32Sequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCInt32SequenceFini*(sequence: ptr RosidlRuntimeCInt32Sequence) {.
    importc: "rosidl_runtime_c__int32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCInt32SequenceAreEqual*(lhs: ptr RosidlRuntimeCInt32Sequence;
    rhs: ptr RosidlRuntimeCInt32Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCInt32SequenceCopy*(input: ptr RosidlRuntimeCInt32Sequence;
                                     output: ptr RosidlRuntimeCInt32Sequence): bool {.
    importc: "rosidl_runtime_c__int32__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCUint64SequenceInit*(sequence: ptr RosidlRuntimeCUint64Sequence;
                                      size: csize_t): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCUint64SequenceFini*(sequence: ptr RosidlRuntimeCUint64Sequence) {.
    importc: "rosidl_runtime_c__uint64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCUint64SequenceAreEqual*(lhs: ptr RosidlRuntimeCUint64Sequence;
    rhs: ptr RosidlRuntimeCUint64Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCUint64SequenceCopy*(input: ptr RosidlRuntimeCUint64Sequence;
                                      output: ptr RosidlRuntimeCUint64Sequence): bool {.
    importc: "rosidl_runtime_c__uint64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCInt64SequenceInit*(sequence: ptr RosidlRuntimeCInt64Sequence;
                                     size: csize_t): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(STRUCT_NAME)

proc rosidlRuntimeCInt64SequenceFini*(sequence: ptr RosidlRuntimeCInt64Sequence) {.
    importc: "rosidl_runtime_c__int64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(STRUCT_NAME)

proc rosidlRuntimeCInt64SequenceAreEqual*(lhs: ptr RosidlRuntimeCInt64Sequence;
    rhs: ptr RosidlRuntimeCInt64Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(STRUCT_NAME)

proc rosidlRuntimeCInt64SequenceCopy*(input: ptr RosidlRuntimeCInt64Sequence;
                                     output: ptr RosidlRuntimeCInt64Sequence): bool {.
    importc: "rosidl_runtime_c__int64__Sequence__copy",
    header: "primitives_sequence_functions.h".}

proc rosidlRuntimeCBoolSequenceInit*(sequence: ptr RosidlRuntimeCBooleanSequence;
                                    size: csize_t): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ## @}
  ##
  ##  \defgroup primitives_sequence_functions__legacy Sequence functions for legacy types for backward compatibility.
  ##
  ## @{
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(bool)

proc rosidlRuntimeCBoolSequenceFini*(sequence: ptr RosidlRuntimeCBooleanSequence) {.
    importc: "rosidl_runtime_c__bool__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(bool)

proc rosidlRuntimeCBoolSequenceAreEqual*(lhs: ptr RosidlRuntimeCBooleanSequence;
                                        rhs: ptr RosidlRuntimeCBooleanSequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(bool)

proc rosidlRuntimeCBoolSequenceCopy*(input: ptr RosidlRuntimeCBooleanSequence;
                                    output: ptr RosidlRuntimeCBooleanSequence): bool {.
    importc: "rosidl_runtime_c__bool__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(bool)

proc rosidlRuntimeCByteSequenceInit*(sequence: ptr RosidlRuntimeCOctetSequence;
                                    size: csize_t): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(byte)

proc rosidlRuntimeCByteSequenceFini*(sequence: ptr RosidlRuntimeCOctetSequence) {.
    importc: "rosidl_runtime_c__byte__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(byte)

proc rosidlRuntimeCByteSequenceAreEqual*(lhs: ptr RosidlRuntimeCOctetSequence;
                                        rhs: ptr RosidlRuntimeCOctetSequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(byte)

proc rosidlRuntimeCByteSequenceCopy*(input: ptr RosidlRuntimeCOctetSequence;
                                    output: ptr RosidlRuntimeCOctetSequence): bool {.
    importc: "rosidl_runtime_c__byte__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(byte)

proc rosidlRuntimeCFloat32SequenceInit*(sequence: ptr RosidlRuntimeCFloatSequence;
                                       size: csize_t): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float32)

proc rosidlRuntimeCFloat32SequenceFini*(sequence: ptr RosidlRuntimeCFloatSequence) {.
    importc: "rosidl_runtime_c__float32__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float32)

proc rosidlRuntimeCFloat32SequenceAreEqual*(lhs: ptr RosidlRuntimeCFloatSequence;
    rhs: ptr RosidlRuntimeCFloatSequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float32)

proc rosidlRuntimeCFloat32SequenceCopy*(input: ptr RosidlRuntimeCFloatSequence;
                                       output: ptr RosidlRuntimeCFloatSequence): bool {.
    importc: "rosidl_runtime_c__float32__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float32)

proc rosidlRuntimeCFloat64SequenceInit*(sequence: ptr RosidlRuntimeCDoubleSequence;
                                       size: csize_t): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__init",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_INIT(float64)

proc rosidlRuntimeCFloat64SequenceFini*(sequence: ptr RosidlRuntimeCDoubleSequence) {.
    importc: "rosidl_runtime_c__float64__Sequence__fini",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_FINI(float64)

proc rosidlRuntimeCFloat64SequenceAreEqual*(
    lhs: ptr RosidlRuntimeCDoubleSequence; rhs: ptr RosidlRuntimeCDoubleSequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__are_equal",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_EQ(float64)

proc rosidlRuntimeCFloat64SequenceCopy*(input: ptr RosidlRuntimeCDoubleSequence;
                                       output: ptr RosidlRuntimeCDoubleSequence): bool {.
    importc: "rosidl_runtime_c__float64__Sequence__copy",
    header: "primitives_sequence_functions.h".}
  ##  See #ROSIDL_RUNTIME_C__DECLARE_PRIMITIVE_SEQUENCE_COPY(float64)
## @}
