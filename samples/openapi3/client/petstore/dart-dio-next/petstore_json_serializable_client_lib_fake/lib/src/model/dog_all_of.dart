//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'dog_all_of.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DogAllOf {
  /// Returns a new [DogAllOf] instance.
  DogAllOf({
    this.breed,
  });

  @JsonKey(
    
    name: r'breed',
    required: false,
  )
  String? breed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DogAllOf &&
     other.breed == breed;

  @override
  int get hashCode =>
    (breed == null ? 0 : breed.hashCode);

  factory DogAllOf.fromJson(Map<String, dynamic> json) => _$DogAllOfFromJson(json);

  Map<String, dynamic> toJson() => _$DogAllOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

