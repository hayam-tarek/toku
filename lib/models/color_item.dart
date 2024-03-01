import 'package:toku/models/component_model.dart';

class ColorItem extends ComponentModel {
  const ColorItem({
    required super.title,
    required super.subtitle,
    super.image,
    required super.sound,
  });
}
