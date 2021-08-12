//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'model200_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Model200Response {
  /// Returns a new [Model200Response] instance.
  Model200Response({
    required this.name,
    required this.class_,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
  )
  int? name;

  @JsonKey(
    
    name: r'class',
    required: false,
  )
  String? class_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model200Response &&
     other.name == name &&
     other.class_ == class_;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (class_ == null ? 0 : class_.hashCode);

  factory Model200Response.fromJson(Map<String, dynamic> json) => _$Model200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$Model200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

