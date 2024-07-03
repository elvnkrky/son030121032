import 'dart:convert';

class Filteredresults {
    Filteredresults({
    this.totalReview,
    this.isBlocked,
    required this.id,
    this.companyImage,
    this.selectSkill,
    this.companyName,
    this.totalDays,
  });

  factory Filteredresults.fromMap(Map<String, dynamic> map) {
    return Filteredresults(
      totalReview: map['totalReview'],
      isBlocked: map['isBlocked'],
      id: map['id'].toInt(),
      companyImage: map['companyImage'],
      selectSkill: map['selectSkill'],
      companyName: map['companyName'],
      totalDays: map['totalDays'],
    );
  }

  factory Filteredresults.fromJson(String source) => Filteredresults.fromMap(json.decode(source));

  final String? totalReview;

  late final bool? isBlocked;

  final int id;

  final String? companyImage;

  bool? selectSkill;

  final String? companyName;

  final String? totalDays;

  Filteredresults copyWith({
    String? totalReview,
    bool? isBlocked,
    int? id,
    String? companyImage,
    bool? selectSkill,
    String? companyName,
    String? totalDays,
  }) {
    return Filteredresults(
      totalReview: totalReview ?? this.totalReview,
      isBlocked: isBlocked ?? this.isBlocked,
      id: id ?? this.id,
      companyImage: companyImage ?? this.companyImage,
      selectSkill: selectSkill ?? this.selectSkill,
      companyName: companyName ?? this.companyName,
      totalDays: totalDays ?? this.totalDays,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalReview': totalReview,
      'isBlocked': isBlocked,
      'id': id,
      'companyImage': companyImage,
      'selectSkill': selectSkill,
      'companyName': companyName,
      'totalDays': totalDays,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Filteredresults &&
        other.totalReview == totalReview &&
        other.isBlocked == isBlocked &&
        other.id == id &&
        other.companyImage == companyImage &&
        other.selectSkill == selectSkill &&
        other.companyName == companyName &&
        other.totalDays == totalDays;
  }

  @override
  int get hashCode {
    return totalReview.hashCode ^
        isBlocked.hashCode ^
        id.hashCode ^
        companyImage.hashCode ^
        selectSkill.hashCode ^
        companyName.hashCode ^
        totalDays.hashCode;
  }

  @override
  String toString() {
    return 'Filteredresults(totalReview: $totalReview, isBlocked: $isBlocked, id: $id, companyImage: $companyImage, selectSkill: $selectSkill, companyName: $companyName, totalDays: $totalDays)';
  }
}
