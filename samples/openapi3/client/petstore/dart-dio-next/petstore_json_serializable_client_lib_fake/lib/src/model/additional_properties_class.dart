//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'additional_properties_class.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdditionalPropertiesClass {
  /// Returns a new [AdditionalPropertiesClass] instance.
  AdditionalPropertiesClass({
    required this.mapProperty,
    required this.mapOfMapProperty,
  });

  @JsonKey(
    
    name: r'map_property',
    required: false,
  )
  Map<String, String>? mapProperty;

  @JsonKey(
    
    name: r'map_of_map_property',
    required: false,
  )
  Map<String, Map<String, String>>? mapOfMapProperty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdditionalPropertiesClass &&
     other.mapProperty == mapProperty &&
     other.mapOfMapProperty == mapOfMapProperty;

  @override
  int get hashCode =>
    (mapProperty == null ? 0 : mapProperty.hashCode) +
    (mapOfMapProperty == null ? 0 : mapOfMapProperty.hashCode);

  factory AdditionalPropertiesClass.fromJson(Map<String, dynamic> json) => _$AdditionalPropertiesClassFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalPropertiesClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

