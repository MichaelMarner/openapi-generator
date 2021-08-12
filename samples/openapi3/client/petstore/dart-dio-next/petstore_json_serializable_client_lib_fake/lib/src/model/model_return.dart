//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'model_return.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ModelReturn {
  /// Returns a new [ModelReturn] instance.
  ModelReturn({
    this.return_,
  });

  @JsonKey(
    
    name: r'return',
    required: false,
  )
  int return_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelReturn &&
     other.return_ == return_;

  @override
  int get hashCode =>
    (return_ == null ? 0 : return_.hashCode);

  factory ModelReturn.fromJson(Map<String, dynamic> json) => _$ModelReturnFromJson(json);

  Map<String, dynamic> toJson() => _$ModelReturnToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

