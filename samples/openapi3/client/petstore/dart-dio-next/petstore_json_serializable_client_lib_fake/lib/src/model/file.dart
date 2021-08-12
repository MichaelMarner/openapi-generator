//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'file.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class File {
  /// Returns a new [File] instance.
  File({
    required this.sourceURI,
  });

      /// Test capitalization
  @JsonKey(
    
    name: r'sourceURI',
    required: false,
  )
  String? sourceURI;

  @override
  bool operator ==(Object other) => identical(this, other) || other is File &&
     other.sourceURI == sourceURI;

  @override
  int get hashCode =>
    (sourceURI == null ? 0 : sourceURI.hashCode);

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);

  Map<String, dynamic> toJson() => _$FileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

