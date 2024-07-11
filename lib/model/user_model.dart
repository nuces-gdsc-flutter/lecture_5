class UserModel {
  final String name;
  final String id;
  final String about;
  final String phoneNumber;
  final String imageUrl;

  const UserModel({
    required this.name,
    required this.id,
    required this.about,
    required this.phoneNumber,
    required this.imageUrl,
  });

  factory UserModel.fromMap(Map map) {
    return UserModel(
      id: map['id'].toString(),
      name: map['name'],
      about: map['email'],
      phoneNumber: map['phone'],
      imageUrl: 'https://i.pravatar.cc/300?u=${map['id']}',
    );
  }
}
