//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'client.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Client {
  /// Returns a new [Client] instance.
  Client({
    this.client,
  });

  @JsonKey(
    
    name: r'client',
    required: false,
  )
  String? client;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Client &&
     other.client == client;

  @override
  int get hashCode =>
    (client == null ? 0 : client.hashCode);

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

  Map<String, dynamic> toJson() => _$ClientToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

