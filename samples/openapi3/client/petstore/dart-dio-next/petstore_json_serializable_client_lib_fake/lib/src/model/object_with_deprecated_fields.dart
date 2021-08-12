//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/deprecated_object.dart';

import 'package:json_annotation/json_annotation.dart';

part 'object_with_deprecated_fields.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ObjectWithDeprecatedFields {
  /// Returns a new [ObjectWithDeprecatedFields] instance.
  ObjectWithDeprecatedFields({
    required this.uuid,
    required this.id,
    required this.deprecatedRef,
    required this.bars,
  });

  @JsonKey(
    
    name: r'uuid',
    required: false,
  )
  String uuid;

  @JsonKey(
    
    name: r'id',
    required: false,
  )
  num id;

  @JsonKey(
    
    name: r'deprecatedRef',
    required: false,
  )
  DeprecatedObject deprecatedRef;

  @JsonKey(
    
    name: r'bars',
    required: false,
  )
  List<String> bars;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ObjectWithDeprecatedFields &&
     other.uuid == uuid &&
     other.id == id &&
     other.deprecatedRef == deprecatedRef &&
     other.bars == bars;

  @override
  int get hashCode =>
    (uuid == null ? 0 : uuid.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (deprecatedRef == null ? 0 : deprecatedRef.hashCode) +
    (bars == null ? 0 : bars.hashCode);

  factory ObjectWithDeprecatedFields.fromJson(Map<String, dynamic> json) => _$ObjectWithDeprecatedFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectWithDeprecatedFieldsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

