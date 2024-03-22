import 'dart:math';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:messanger/data/entities/gradient_entity.dart';

class ContactEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String status;
  late final GradientEntity gradient;

  ContactEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.status,
  }) {
    gradient = randomGradient();
  }

  @override
  List<Object?> get props => [id, firstName, lastName];

  String get fullName => '$firstName $lastName';
  String get abbr => firstName[0].toUpperCase() + lastName[0].toUpperCase();

  GradientEntity randomGradient() {
    final random = Random();
    const List<GradientEntity> flavors = GradientEntity.values;
    return flavors[random.nextInt(flavors.length)];
  }

  List<Color> getGradientColors() {
    switch (gradient) {
      case GradientEntity.green:
        return [const Color(0xFF1FDB5F), const Color(0xFF31C764)];
      case GradientEntity.red:
        return [const Color(0xFFF66700), const Color(0xFFED3900)];
      case GradientEntity.blue:
        return [const Color(0xFF00ACF6), const Color(0xFF006DED)];
    }
  }
}
