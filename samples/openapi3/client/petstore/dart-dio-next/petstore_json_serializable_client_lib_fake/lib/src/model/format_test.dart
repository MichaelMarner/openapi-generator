//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';

import 'package:json_annotation/json_annotation.dart';

part 'format_test.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FormatTest {
  /// Returns a new [FormatTest] instance.
  FormatTest({
    required this.integer,
    required this.int32,
    required this.int64,
    required this.number,
    required this.float,
    required this.double_,
    required this.decimal,
    required this.string,
    required this.byte,
    required this.binary,
    required this.date,
    required this.dateTime,
    required this.uuid,
    required this.password,
    required this.patternWithDigits,
    required this.patternWithDigitsAndDelimiter,
  });

          // minimum: 10
          // maximum: 100
  @JsonKey(
    
    name: r'integer',
    required: false,
  )
  int integer;

          // minimum: 20
          // maximum: 200
  @JsonKey(
    
    name: r'int32',
    required: false,
  )
  int int32;

  @JsonKey(
    
    name: r'int64',
    required: false,
  )
  int int64;

          // minimum: 32.1
          // maximum: 543.2
  @JsonKey(
    
    name: r'number',
    required: true,
  )
  num number;

          // minimum: 54.3
          // maximum: 987.6
  @JsonKey(
    
    name: r'float',
    required: false,
  )
  double float;

          // minimum: 67.8
          // maximum: 123.4
  @JsonKey(
    
    name: r'double',
    required: false,
  )
  double double_;

  @JsonKey(
    
    name: r'decimal',
    required: false,
  )
  double decimal;

  @JsonKey(
    
    name: r'string',
    required: false,
  )
  String string;

  @JsonKey(
    
    name: r'byte',
    required: true,
  )
  String byte;

  @JsonKey(ignore: true)
  MultipartFile binary;

  @JsonKey(
    
    name: r'date',
    required: true,
  )
  DateTime date;

  @JsonKey(
    
    name: r'dateTime',
    required: false,
  )
  DateTime dateTime;

  @JsonKey(
    
    name: r'uuid',
    required: false,
  )
  String uuid;

  @JsonKey(
    
    name: r'password',
    required: true,
  )
  String password;

      /// A string that is a 10 digit number. Can have leading zeros.
  @JsonKey(
    
    name: r'pattern_with_digits',
    required: false,
  )
  String patternWithDigits;

      /// A string starting with 'image_' (case insensitive) and one to three digits following i.e. Image_01.
  @JsonKey(
    
    name: r'pattern_with_digits_and_delimiter',
    required: false,
  )
  String patternWithDigitsAndDelimiter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormatTest &&
     other.integer == integer &&
     other.int32 == int32 &&
     other.int64 == int64 &&
     other.number == number &&
     other.float == float &&
     other.double_ == double_ &&
     other.decimal == decimal &&
     other.string == string &&
     other.byte == byte &&
     other.binary == binary &&
     other.date == date &&
     other.dateTime == dateTime &&
     other.uuid == uuid &&
     other.password == password &&
     other.patternWithDigits == patternWithDigits &&
     other.patternWithDigitsAndDelimiter == patternWithDigitsAndDelimiter;

  @override
  int get hashCode =>
    (integer == null ? 0 : integer.hashCode) +
    (int32 == null ? 0 : int32.hashCode) +
    (int64 == null ? 0 : int64.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (float == null ? 0 : float.hashCode) +
    (double_ == null ? 0 : double_.hashCode) +
    (decimal == null ? 0 : decimal.hashCode) +
    (string == null ? 0 : string.hashCode) +
    (byte == null ? 0 : byte.hashCode) +
    (binary == null ? 0 : binary.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (dateTime == null ? 0 : dateTime.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (patternWithDigits == null ? 0 : patternWithDigits.hashCode) +
    (patternWithDigitsAndDelimiter == null ? 0 : patternWithDigitsAndDelimiter.hashCode);

  factory FormatTest.fromJson(Map<String, dynamic> json) => _$FormatTestFromJson(json);

  Map<String, dynamic> toJson() => _$FormatTestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

