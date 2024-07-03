import 'dart:convert';

class Questions {
  const Questions({
    this.companyName,
    this.totalReview,
    this.companyImage,
    this.dateAnswere,
    this.totalDays,
    required this.id,
  });

  factory Questions.fromMap(Map<String, dynamic> map) {
    return Questions(
      companyName: map['companyName'],
      totalReview: map['totalReview'],
      companyImage: map['companyImage'],
      dateAnswere: map['dateAnswere'],
      totalDays: map['totalDays'],
      id: map['id'].toInt(),
    );
  }

  factory Questions.fromJson(String source) => Questions.fromMap(json.decode(source));

  final String? companyName;

  final String? totalReview;

  final String? companyImage;

  final String? dateAnswere;

  final String? totalDays;

  final int id;

  Questions copyWith({
    String? companyName,
    String? totalReview,
    String? companyImage,
    String? dateAnswere,
    String? totalDays,
    int? id,
  }) {
    return Questions(
      companyName: companyName ?? this.companyName,
      totalReview: totalReview ?? this.totalReview,
      companyImage: companyImage ?? this.companyImage,
      dateAnswere: dateAnswere ?? this.dateAnswere,
      totalDays: totalDays ?? this.totalDays,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'totalReview': totalReview,
      'companyImage': companyImage,
      'dateAnswere': dateAnswere,
      'totalDays': totalDays,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Questions &&
        other.companyName == companyName &&
        other.totalReview == totalReview &&
        other.companyImage == companyImage &&
        other.dateAnswere == dateAnswere &&
        other.totalDays == totalDays &&
        other.id == id;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^
        totalReview.hashCode ^
        companyImage.hashCode ^
        dateAnswere.hashCode ^
        totalDays.hashCode ^
        id.hashCode;
  }

  @override
  String toString() {
    return 'Questions(companyName: $companyName, totalReview: $totalReview, companyImage: $companyImage, dateAnswere: $dateAnswere, totalDays: $totalDays, id: $id)';
  }
}
