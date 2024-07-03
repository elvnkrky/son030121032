import 'dart:convert';

class Filteredresults {
  const Filteredresults({
    this.companyName,
    this.totalDays,
    this.companyImage,
    this.totalReview,
    this.isBlocked,
    this.selectSkill,
    required this.id,
  });

  factory Filteredresults.fromMap(Map<String, dynamic> map) {
    return Filteredresults(
      companyName: map['companyName'],
      totalDays: map['totalDays'],
      companyImage: map['companyImage'],
      totalReview: map['totalReview'],
      isBlocked: map['isBlocked'],
      selectSkill: map['selectSkill'],
      id: map['id'].toInt(),
    );
  }

  factory Filteredresults.fromJson(String source) => Filteredresults.fromMap(json.decode(source));

  final String? companyName;

  final String? totalDays;

  final String? companyImage;

  final String? totalReview;

  final bool? isBlocked;

  final bool? selectSkill;

  final int id;

  Filteredresults copyWith({
    String? companyName,
    String? totalDays,
    String? companyImage,
    String? totalReview,
    bool? isBlocked,
    bool? selectSkill,
    int? id,
  }) {
    return Filteredresults(
      companyName: companyName ?? this.companyName,
      totalDays: totalDays ?? this.totalDays,
      companyImage: companyImage ?? this.companyImage,
      totalReview: totalReview ?? this.totalReview,
      isBlocked: isBlocked ?? this.isBlocked,
      selectSkill: selectSkill ?? this.selectSkill,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'totalDays': totalDays,
      'companyImage': companyImage,
      'totalReview': totalReview,
      'isBlocked': isBlocked,
      'selectSkill': selectSkill,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Filteredresults &&
        other.companyName == companyName &&
        other.totalDays == totalDays &&
        other.companyImage == companyImage &&
        other.totalReview == totalReview &&
        other.isBlocked == isBlocked &&
        other.selectSkill == selectSkill &&
        other.id == id;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^
        totalDays.hashCode ^
        companyImage.hashCode ^
        totalReview.hashCode ^
        isBlocked.hashCode ^
        selectSkill.hashCode ^
        id.hashCode;
  }

  @override
  String toString() {
    return 'Filteredresults(companyName: $companyName, totalDays: $totalDays, companyImage: $companyImage, totalReview: $totalReview, isBlocked: $isBlocked, selectSkill: $selectSkill, id: $id)';
  }
}
