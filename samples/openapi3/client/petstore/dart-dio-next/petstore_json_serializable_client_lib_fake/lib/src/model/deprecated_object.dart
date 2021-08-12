//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'deprecated_object.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeprecatedObject {
  /// Returns a new [DeprecatedObject] instance.
  DeprecatedObject({
    required this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
  )
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeprecatedObject &&
     other.name == name;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode);

  factory DeprecatedObject.fromJson(Map<String, dynamic> json) => _$DeprecatedObjectFromJson(json);

  Map<String, dynamic> toJson() => _$DeprecatedObjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

