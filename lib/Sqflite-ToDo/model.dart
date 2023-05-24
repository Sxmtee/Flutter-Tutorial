class UserModel {
  int? id;
  String? username;
  String? description;

  UserModel({
    required this.id,
    required this.username,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "username": username,
      "description": description,
    };
  }

  UserModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    username = map["username"];
    description = map["description"];
  }
}
