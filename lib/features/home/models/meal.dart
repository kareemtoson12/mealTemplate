// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:37:37

class Meal {
  final String image;
  final String title;
  final String kcal;
  final String time;
  final String mealType;

  Meal({
    required this.image,
    required this.title,
    required this.kcal,
    required this.time,
    required this.mealType,
  });
  //toJosn

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'kcal': kcal,
      'time': time,
      'mealType': mealType,
    };
  }

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      image:
          json['image'] ??
          'https://images.unsplash.com/photo-1541519227354-08fa5d50c44d?w=800',
      title: json['title'] ?? '',
      kcal: json['kcal'] ?? '',
      time: json['time'] ?? '',
      mealType: json['mealType'] ?? '',
    );
  }
}
