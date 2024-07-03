import 'dart:convert';

class Companies {
  const Companies({
    required this.companyName,
    this.companyImage,
    this.totalReview,
    this.companyRatting,
    required this.id,
  });

  factory Companies.fromMap(Map<String, dynamic> map) {
    return Companies(
      companyName: map['companyName'],
      companyImage: map['companyImage'],
      totalReview: map['totalReview'],
      companyRatting: map['companyRatting']?.toDouble(),
      id: map['id'].toInt(),
    );
  }

  factory Companies.fromJson(String source) => Companies.fromMap(json.decode(source));

  final String companyName;

  final String? companyImage;

  final String? totalReview;

  final double? companyRatting;

  final int id;

  Companies copyWith({
    String? companyName,
    String? companyImage,
    String? totalReview,
    double? companyRatting,
    int? id,
  }) {
    return Companies(
      companyName: companyName ?? this.companyName,
      companyImage: companyImage ?? this.companyImage,
      totalReview: totalReview ?? this.totalReview,
      companyRatting: companyRatting ?? this.companyRatting,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'companyImage': companyImage,
      'totalReview': totalReview,
      'companyRatting': companyRatting,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Companies &&
        other.companyName == companyName &&
        other.companyImage == companyImage &&
        other.totalReview == totalReview &&
        other.companyRatting == companyRatting &&
        other.id == id;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ companyImage.hashCode ^ totalReview.hashCode ^ companyRatting.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Companies(companyName: $companyName, companyImage: $companyImage, totalReview: $totalReview, companyRatting: $companyRatting, id: $id)';
  }
}
