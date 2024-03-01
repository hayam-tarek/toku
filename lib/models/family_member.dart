import 'package:toku/models/component_model.dart';

class FamilyMember extends ComponentModel {
  const FamilyMember({
    required super.title,
    required super.subtitle,
    super.image,
    required super.sound,
  });
}
