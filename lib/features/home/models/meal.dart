// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:37:37

class Meal {
  final String title;
  final String kcal;
  final String time;
  final String mealType;
  final String image;

  Meal({
    required this.title,
    required this.kcal,
    required this.time,
    required this.mealType,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "kcal": kcal,
      "time": time,
      "mealType": mealType,
      "image": image,
    };
  }

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      image: json['image'] ?? '',
      kcal: json['kcal'],
      mealType: json['mealType'],
      time: json['time'],
      title: json['title'],
    );
  }
}
