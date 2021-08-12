//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User {
  /// Returns a new [User] instance.
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    required this.userStatus,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
  )
  int id;

  @JsonKey(
    
    name: r'username',
    required: false,
  )
  String username;

  @JsonKey(
    
    name: r'firstName',
    required: false,
  )
  String firstName;

  @JsonKey(
    
    name: r'lastName',
    required: false,
  )
  String lastName;

  @JsonKey(
    
    name: r'email',
    required: false,
  )
  String email;

  @JsonKey(
    
    name: r'password',
    required: false,
  )
  String password;

  @JsonKey(
    
    name: r'phone',
    required: false,
  )
  String phone;

      /// User Status
  @JsonKey(
    
    name: r'userStatus',
    required: false,
  )
  int userStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.username == username &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.email == email &&
     other.password == password &&
     other.phone == phone &&
     other.userStatus == userStatus;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (userStatus == null ? 0 : userStatus.hashCode);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

