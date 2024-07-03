import 'dart:convert';

class Questions {
  const Questions({
    required this.id,
    this.companyName,
    this.companyImage,
    this.totalDays,
    this.dateAnswere,
    this.totalReview,
  });

  factory Questions.fromMap(Map<String, dynamic> map) {
    return Questions(
      id: map['id'].toInt(),
      companyName: map['companyName'],
      companyImage: map['companyImage'],
      totalDays: map['totalDays'],
      dateAnswere: map['dateAnswere'],
      totalReview: map['totalReview'],
    );
  }

  factory Questions.fromJson(String source) => Questions.fromMap(json.decode(source));

  final int id;

  final String? companyName;

  final String? companyImage;

  final String? totalDays;

  final String? dateAnswere;

  final String? totalReview;

  Questions copyWith({
    int? id,
    String? companyName,
    String? companyImage,
    String? totalDays,
    String? dateAnswere,
    String? totalReview,
  }) {
    return Questions(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      companyImage: companyImage ?? this.companyImage,
      totalDays: totalDays ?? this.totalDays,
      dateAnswere: dateAnswere ?? this.dateAnswere,
      totalReview: totalReview ?? this.totalReview,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyName': companyName,
      'companyImage': companyImage,
      'totalDays': totalDays,
      'dateAnswere': dateAnswere,
      'totalReview': totalReview,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Questions &&
        other.id == id &&
        other.companyName == companyName &&
        other.companyImage == companyImage &&
        other.totalDays == totalDays &&
        other.dateAnswere == dateAnswere &&
        other.totalReview == totalReview;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        companyName.hashCode ^
        companyImage.hashCode ^
        totalDays.hashCode ^
        dateAnswere.hashCode ^
        totalReview.hashCode;
  }

  @override
  String toString() {
    return 'Questions(id: $id, companyName: $companyName, companyImage: $companyImage, totalDays: $totalDays, dateAnswere: $dateAnswere, totalReview: $totalReview)';
  }
}
