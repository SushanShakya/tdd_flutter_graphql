// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  List<Object?> get props => [id, name, image, gender];
}
