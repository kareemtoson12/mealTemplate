// Karim Toson || kareemtoson1@gmail.com || Wed Jul 08 2026 18:38:06

class UserModel {
  final String id;
  final String name;
  final String email;
  final List<dynamic> favorites;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.favorites,
  });

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "email": email, "favorites": favorites};
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] ?? '',
      favorites: json['favorites'],
      id: json['id'],
      name: json['name'],
    );
  }
}
