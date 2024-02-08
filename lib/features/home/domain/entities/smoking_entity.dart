class SmokingEntity {
  SmokingEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.capacity,
    required this.price,
    required this.nicotineValue,
    required this.dailyLimit,
    required this.dailyUsed,
    required this.type,
  });

  final String id;
  final String name;
  final String image;
  final double capacity;
  final double price;
  final double nicotineValue;
  final double dailyLimit;
  final double dailyUsed;
  final String type;

  SmokingEntity copyWith({
    String? id,
    String? name,
    String? image,
    double? capacity,
    double? price,
    double? nicotineValue,
    double? dailyLimit,
    double? dailyUsed,
    String? type,
  }) {
    return SmokingEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      capacity: capacity ?? this.capacity,
      price: price ?? this.price,
      nicotineValue: nicotineValue ?? this.nicotineValue,
      dailyLimit: dailyLimit ?? this.dailyLimit,
      dailyUsed: dailyUsed ?? this.dailyUsed,
      type: type ?? this.type,
    );
  }
}
