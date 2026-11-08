class UserModel {
  final String name;
  final String email;
  final String password;
  final List favorites;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.favorites,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "favorites": favorites,
    };
  }

  /* factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      favorites: json['favorites'],
    );
  } */
}
