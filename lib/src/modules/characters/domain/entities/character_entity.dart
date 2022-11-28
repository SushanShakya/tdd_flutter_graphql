// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CharacterEntity extends Equatable {
  final String id;
  final String name;
  final String image;
  final String gender;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.gender,
  });

  @override
  List<Object> get props => [id, name, image, gender];

  CharacterEntity copyWith({
    String? id,
    String? name,
    String? image,
    String? gender,
  }) {
    return CharacterEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'gender': gender,
    };
  }

  factory CharacterEntity.fromMap(Map<String, dynamic> map) {
    return CharacterEntity(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterEntity.fromJson(String source) =>
      CharacterEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
