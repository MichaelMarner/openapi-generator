//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/outer_enum.dart';
import 'package:openapi/src/model/outer_enum_default_value.dart';
import 'package:openapi/src/model/outer_enum_integer.dart';
import 'package:openapi/src/model/outer_enum_integer_default_value.dart';

import 'package:json_annotation/json_annotation.dart';

part 'enum_test.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnumTest {
  /// Returns a new [EnumTest] instance.
  EnumTest({
    required this.enumString,
    required this.enumStringRequired,
    required this.enumInteger,
    required this.enumNumber,
     this.outerEnum,
    required this.outerEnumInteger,
    required this.outerEnumDefaultValue,
    required this.outerEnumIntegerDefaultValue,
  });

  @JsonKey(
    
    name: r'enum_string',
    required: false,
  )
  EnumTestEnumStringEnum? enumString;

  @JsonKey(
    
    name: r'enum_string_required',
    required: true,
  )
  EnumTestEnumStringRequiredEnum enumStringRequired;

  @JsonKey(
    
    name: r'enum_integer',
    required: false,
  )
  EnumTestEnumIntegerEnum? enumInteger;

  @JsonKey(
    
    name: r'enum_number',
    required: false,
  )
  EnumTestEnumNumberEnum? enumNumber;

  @JsonKey(
    
    name: r'outerEnum',
    required: false,
  )
  OuterEnum? outerEnum;

  @JsonKey(
    
    name: r'outerEnumInteger',
    required: false,
  )
  OuterEnumInteger? outerEnumInteger;

  @JsonKey(
    
    name: r'outerEnumDefaultValue',
    required: false,
  )
  OuterEnumDefaultValue? outerEnumDefaultValue;

  @JsonKey(
    
    name: r'outerEnumIntegerDefaultValue',
    required: false,
  )
  OuterEnumIntegerDefaultValue? outerEnumIntegerDefaultValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnumTest &&
     other.enumString == enumString &&
     other.enumStringRequired == enumStringRequired &&
     other.enumInteger == enumInteger &&
     other.enumNumber == enumNumber &&
     other.outerEnum == outerEnum &&
     other.outerEnumInteger == outerEnumInteger &&
     other.outerEnumDefaultValue == outerEnumDefaultValue &&
     other.outerEnumIntegerDefaultValue == outerEnumIntegerDefaultValue;

  @override
  int get hashCode =>
    (enumString == null ? 0 : enumString.hashCode) +
    (enumStringRequired == null ? 0 : enumStringRequired.hashCode) +
    (enumInteger == null ? 0 : enumInteger.hashCode) +
    (enumNumber == null ? 0 : enumNumber.hashCode) +
    (outerEnum == null ? 0 : outerEnum.hashCode) +
    (outerEnumInteger == null ? 0 : outerEnumInteger.hashCode) +
    (outerEnumDefaultValue == null ? 0 : outerEnumDefaultValue.hashCode) +
    (outerEnumIntegerDefaultValue == null ? 0 : outerEnumIntegerDefaultValue.hashCode);

  factory EnumTest.fromJson(Map<String, dynamic> json) => _$EnumTestFromJson(json);

  Map<String, dynamic> toJson() => _$EnumTestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum EnumTestEnumStringEnum {
  UPPER,
  lower,
  empty,
}


enum EnumTestEnumStringRequiredEnum {
  UPPER,
  lower,
  empty,
}


enum EnumTestEnumIntegerEnum {
  number1,
  numberNegative1,
}


enum EnumTestEnumNumberEnum {
  number1Period1,
  numberNegative1Period2,
}

