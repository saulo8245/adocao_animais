import 'user.dart';

class Animal {
  final String id;
  final String name;
  final String photo;
  final String address;
  final User user;

  Animal({
    required this.id,
    required this.name,
    required this.photo,
    required this.address,
    required this.user,
  });

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      id: json['_id'],
      name: json['name'],
      photo: json['photo'],
      address: json['address'],
      user: User.fromJson(json['user']),
    );
  }
}
