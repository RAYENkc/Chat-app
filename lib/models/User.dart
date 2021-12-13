import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  //final String uid;
  final String nom;
  final String prenom;
  final int age;
  final String profession;
  final String role;
  final String niveaux;
  final int id;
  final String email;
  final String tel;

  User({
    required this.nom,
    required this.prenom,
    required this.age,
    required this.profession,
    required this.role,
    required this.niveaux,
    required this.id,
    required this.email,
    required this.tel,
  });

  factory User.fromJson(DocumentSnapshot json) {
    return User(
        nom: json['nom'],
        prenom: json['prenom'],
        age: json['age'],
        profession: json['profession'],
        role: json['role'],
        niveaux: json['niveaux'],
        id: json['description'],
        email: json['email'],
        tel: json['tel']);
  }
}
