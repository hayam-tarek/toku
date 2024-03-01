class ComponentModel {
  final String title;
  final String subtitle;
  final String? image;
  final String sound;
  const ComponentModel({
    required this.title,
    required this.subtitle,
    this.image,
    required this.sound,
  });
}
