class UserModel {
  final int userId;
  final int id;
  final String title;

  UserModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  // Factory method to create a UserModel object from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  // Method to convert a UserModel object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }
}

