class Recipes_List {
  final String name;
  final String images;
  final double rating;
  final String summary;
  final String totalTime;

  Recipes_List({
    required this.name,
    required this.images,
    required this.rating,
    required this.summary,
    required this.totalTime,
  });

  factory Recipes_List.fromJson(dynamic json) {
    return Recipes_List(
      name: json['name'] as String? ?? 'Unknown Name',
      images: (json['images']?[0]?['hostedLargeUrl'] as String?) ?? 'Default Image URL',
      rating: (json['rating'] as double?) ?? 0.0,
      summary: json['summary'] as String? ?? 'Unknown Name',
      totalTime: json['totalTime'] as String? ?? 'Unknown Time',
    );
  }

  static List<Recipes_List> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipes_List.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipes_List {name: $name, images: $images, rating: $rating, totalTime: $totalTime}';
  }
}
