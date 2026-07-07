// Karim Toson || kareemtoson1@gmail.com || Tue Jul 07 2026 13:31:59

class UserModel {
  final String id;
  final String name;
  final String email;
  final List<dynamic> fav;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.fav,
  });
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email, 'fav': fav};
  }

  //from json
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'] ?? 'has no name',
      email: map['email'],
      fav: map['fav'],
    );
  }
}
