//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Name {
  /// Returns a new [Name] instance.
  Name({
    required this.name,
    required this.snakeCase,
    required this.property,
    required this.n123number,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
  )
  int name;

  @JsonKey(
    
    name: r'snake_case',
    required: false,
  )
  int snakeCase;

  @JsonKey(
    
    name: r'property',
    required: false,
  )
  String property;

  @JsonKey(
    
    name: r'123Number',
    required: false,
  )
  int n123number;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Name &&
     other.name == name &&
     other.snakeCase == snakeCase &&
     other.property == property &&
     other.n123number == n123number;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (snakeCase == null ? 0 : snakeCase.hashCode) +
    (property == null ? 0 : property.hashCode) +
    (n123number == null ? 0 : n123number.hashCode);

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

