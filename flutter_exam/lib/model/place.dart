class Place {
  final int id;
  final String name;
  final String picture;
  final int rating;

  Place({required this.id, required this.name, required this.rating, required this.picture});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      rating: json['rating'],
      picture: json['picture'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rating': rating,
      'picture': picture,
    };
  }
}