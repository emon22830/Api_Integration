class PostModel {
  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Named constructor to create an instance from JSON
  PostModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];

  final num userId;
  final num id;
  final String title;
  final String body;

  // copyWith method to create a copy with optional overrides
  PostModel copyWith({
    num? userId,
    num? id,
    String? title,
    String? body,
  }) {
    return PostModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  // Method to convert the instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
