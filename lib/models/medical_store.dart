class MedicalStore {
  final String name;
  final String address;
  final bool isOpen;
  final String openTime;
  final String closeTime;
  final double distance;
  final double rating;
  final List<String> tags;

  MedicalStore({
    required this.name,
    required this.address,
    required this.isOpen,
    required this.openTime,
    required this.closeTime,
    required this.distance,
    required this.rating,
    required this.tags,
  });
}