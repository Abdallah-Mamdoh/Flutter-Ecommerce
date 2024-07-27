class UserModel {
  final int userId;
  final int id;
  final String title;

  UserModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  // Factory method to create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  // Method to convert a UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }
}

void main() {
  // Example JSON data
  final jsonData = [
    {"userId": 1, "id": 1, "title": "quidem molestiae enim"},
    {"userId": 1, "id": 2, "title": "sunt qui excepturi placeat culpa"},
    // Add more items as needed
  ];

  // Convert JSON data to List<UserModel>
  List<UserModel> users = jsonData.map((json) => UserModel.fromJson(json)).toList();

  // Print user details
  for (var user in users) {
    print('User ID: ${user.userId}, ID: ${user.id}, Title: ${user.title}');
  }

  // Convert List<UserModel> back to JSON
  List<Map<String, dynamic>> jsonList = users.map((user) => user.toJson()).toList();
  print(jsonList);
}
