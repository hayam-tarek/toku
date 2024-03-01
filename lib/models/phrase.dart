import 'package:toku/models/component_model.dart';

class Phrase extends ComponentModel {
  const Phrase({
    required super.title,
    required super.subtitle,
    super.image,
    required super.sound,
  });
}
