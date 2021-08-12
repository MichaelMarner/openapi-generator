//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Category {
  /// Returns a new [Category] instance.
  Category({
    required this.id,
    this.name = 'default-name',
  });

  @JsonKey(
    
    name: r'id',
    required: false,
  )
  int id;

  @JsonKey(
    defaultValue: 'default-name',
    name: r'name',
    required: true,
  )
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Category &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

