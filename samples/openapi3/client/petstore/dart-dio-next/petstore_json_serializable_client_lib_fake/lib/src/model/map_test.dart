//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'map_test.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MapTest {
  /// Returns a new [MapTest] instance.
  MapTest({
    required this.mapMapOfString,
    required this.mapOfEnumString,
    required this.directMap,
    required this.indirectMap,
  });

  @JsonKey(
    
    name: r'map_map_of_string',
    required: false,
  )
  Map<String, Map<String, String>> mapMapOfString;

  @JsonKey(
    
    name: r'map_of_enum_string',
    required: false,
  )
  Map<String, MapTestMapOfEnumStringEnum> mapOfEnumString;

  @JsonKey(
    
    name: r'direct_map',
    required: false,
  )
  Map<String, bool> directMap;

  @JsonKey(
    
    name: r'indirect_map',
    required: false,
  )
  Map<String, bool> indirectMap;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MapTest &&
     other.mapMapOfString == mapMapOfString &&
     other.mapOfEnumString == mapOfEnumString &&
     other.directMap == directMap &&
     other.indirectMap == indirectMap;

  @override
  int get hashCode =>
    (mapMapOfString == null ? 0 : mapMapOfString.hashCode) +
    (mapOfEnumString == null ? 0 : mapOfEnumString.hashCode) +
    (directMap == null ? 0 : directMap.hashCode) +
    (indirectMap == null ? 0 : indirectMap.hashCode);

  factory MapTest.fromJson(Map<String, dynamic> json) => _$MapTestFromJson(json);

  Map<String, dynamic> toJson() => _$MapTestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum MapTestMapOfEnumStringEnum {
  UPPER,
  lower,
}

