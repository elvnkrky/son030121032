import 'dart:convert';

class Companies {
  const Companies({
    this.totalReview,
    required this.id,
    this.companyRatting,
    required this.companyName,
    this.companyImage,
  });

  factory Companies.fromMap(Map<String, dynamic> map) {
    return Companies(
      totalReview: map['totalReview'],
      id: map['id'].toInt(),
      companyRatting: map['companyRatting']?.toDouble(),
      companyName: map['companyName'],
      companyImage: map['companyImage'],
    );
  }

  factory Companies.fromJson(String source) => Companies.fromMap(json.decode(source));

  final String? totalReview;

  final int id;

  final double? companyRatting;

  final String companyName;

  final String? companyImage;

  Companies copyWith({
    String? totalReview,
    int? id,
    double? companyRatting,
    String? companyName,
    String? companyImage,
  }) {
    return Companies(
      totalReview: totalReview ?? this.totalReview,
      id: id ?? this.id,
      companyRatting: companyRatting ?? this.companyRatting,
      companyName: companyName ?? this.companyName,
      companyImage: companyImage ?? this.companyImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalReview': totalReview,
      'id': id,
      'companyRatting': companyRatting,
      'companyName': companyName,
      'companyImage': companyImage,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Companies &&
        other.totalReview == totalReview &&
        other.id == id &&
        other.companyRatting == companyRatting &&
        other.companyName == companyName &&
        other.companyImage == companyImage;
  }

  @override
  int get hashCode {
    return totalReview.hashCode ^ id.hashCode ^ companyRatting.hashCode ^ companyName.hashCode ^ companyImage.hashCode;
  }

  @override
  String toString() {
    return 'Companies(totalReview: $totalReview, id: $id, companyRatting: $companyRatting, companyName: $companyName, companyImage: $companyImage)';
  }
}
