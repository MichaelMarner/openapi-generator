//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/animal.dart';
import 'package:openapi/src/model/cat_all_of.dart';

import 'package:json_annotation/json_annotation.dart';

part 'cat.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Cat {
  /// Returns a new [Cat] instance.
  Cat({
    required this.className,
    this.color = 'red',
    this.declawed,
  });

  @JsonKey(
    
    name: r'className',
    required: true,
  )
  String className;

  @JsonKey(
    defaultValue: 'red',
    name: r'color',
    required: false,
  )
  String color;

  @JsonKey(
    
    name: r'declawed',
    required: false,
  )
  bool declawed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Cat &&
     other.className == className &&
     other.color == color &&
     other.declawed == declawed;

  @override
  int get hashCode =>
    (className == null ? 0 : className.hashCode) +
    (color == null ? 0 : color.hashCode) +
    (declawed == null ? 0 : declawed.hashCode);

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

