//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/file.dart';

import 'package:json_annotation/json_annotation.dart';

part 'file_schema_test_class.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileSchemaTestClass {
  /// Returns a new [FileSchemaTestClass] instance.
  FileSchemaTestClass({
    required this.file,
    required this.files,
  });

  @JsonKey(
    
    name: r'file',
    required: false,
  )
  File file;

  @JsonKey(
    
    name: r'files',
    required: false,
  )
  List<File> files;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileSchemaTestClass &&
     other.file == file &&
     other.files == files;

  @override
  int get hashCode =>
    (file == null ? 0 : file.hashCode) +
    (files == null ? 0 : files.hashCode);

  factory FileSchemaTestClass.fromJson(Map<String, dynamic> json) => _$FileSchemaTestClassFromJson(json);

  Map<String, dynamic> toJson() => _$FileSchemaTestClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

