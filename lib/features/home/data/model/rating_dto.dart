class RatingDto {
  final double rate;
  final int count;

  RatingDto({
    required this.rate,
    required this.count,
  });

  factory RatingDto.fromJson(Map<String, dynamic> json) => RatingDto(
    rate: (json["rate"] as num).toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}