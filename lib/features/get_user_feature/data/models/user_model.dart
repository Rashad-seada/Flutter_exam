import 'package:exam/features/get_user_feature/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
    int? id,
    String? email,
    String? password,
    String? name,
    String? role,
    String? avatar,
    String? creationAt,
    String? updatedAt,
  ) : super(
            id: id,
            email: email,
            password: password,
            name: name,
            role: role,
            avatar: avatar,
            creationAt: creationAt,
            updatedAt: updatedAt);

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    role = json['role'];
    avatar = json['avatar'];
    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['role'] = this.role;
    data['avatar'] = this.avatar;
    data['creationAt'] = this.creationAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
