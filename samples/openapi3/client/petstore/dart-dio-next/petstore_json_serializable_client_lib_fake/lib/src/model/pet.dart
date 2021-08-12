//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/category.dart';
import 'package:openapi/src/model/tag.dart';

import 'package:json_annotation/json_annotation.dart';

part 'pet.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Pet {
  /// Returns a new [Pet] instance.
  Pet({
    this.id,
    this.category,
    required this.name,
    required this.photoUrls,
    this.tags,
    this.status,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
  )
  int id;

  @JsonKey(
    
    name: r'category',
    required: false,
  )
  Category category;

  @JsonKey(
    
    name: r'name',
    required: true,
  )
  String name;

  @JsonKey(
    
    name: r'photoUrls',
    required: true,
  )
  Set<String> photoUrls;

  @JsonKey(
    
    name: r'tags',
    required: false,
  )
  List<Tag> tags;

      /// pet status in the store
  @JsonKey(
    
    name: r'status',
    required: false,
  )
  PetStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pet &&
     other.id == id &&
     other.category == category &&
     other.name == name &&
     other.photoUrls == photoUrls &&
     other.tags == tags &&
     other.status == status;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (photoUrls == null ? 0 : photoUrls.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (status == null ? 0 : status.hashCode);

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  Map<String, dynamic> toJson() => _$PetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// pet status in the store
enum PetStatusEnum {
  available,
  pending,
  sold,
}

