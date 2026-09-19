import 'package:orion_commons/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.email,
    super.name,
    super.profileImageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      profileImageUrl: json['profile_image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'profile_image_url': profileImageUrl,
    };
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      name: name,
      profileImageUrl: profileImageUrl,
    );
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      profileImageUrl: entity.profileImageUrl,
    );
  }
}
