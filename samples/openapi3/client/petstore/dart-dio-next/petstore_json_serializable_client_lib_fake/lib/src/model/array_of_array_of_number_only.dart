//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'array_of_array_of_number_only.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ArrayOfArrayOfNumberOnly {
  /// Returns a new [ArrayOfArrayOfNumberOnly] instance.
  ArrayOfArrayOfNumberOnly({
    required this.arrayArrayNumber,
  });

  @JsonKey(
    
    name: r'ArrayArrayNumber',
    required: false,
  )
  List<List<num>> arrayArrayNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArrayOfArrayOfNumberOnly &&
     other.arrayArrayNumber == arrayArrayNumber;

  @override
  int get hashCode =>
    (arrayArrayNumber == null ? 0 : arrayArrayNumber.hashCode);

  factory ArrayOfArrayOfNumberOnly.fromJson(Map<String, dynamic> json) => _$ArrayOfArrayOfNumberOnlyFromJson(json);

  Map<String, dynamic> toJson() => _$ArrayOfArrayOfNumberOnlyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

