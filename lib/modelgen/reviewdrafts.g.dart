import 'dart:convert';

class Reviewdrafts {
  const Reviewdrafts({
    this.deegryCompleteYear,
    this.deegryDescription,
    this.totalDays,
    this.jobLocation,
    this.totalReview,
    this.deegryName,
    this.companyName,
    this.companyImage,
    this.dateAnswere,
    required this.id,
    this.jobDescription,
    this.index,
  });

  factory Reviewdrafts.fromMap(Map<String, dynamic> map) {
    return Reviewdrafts(
      deegryCompleteYear: map['deegryCompleteYear'],
      deegryDescription: map['deegryDescription'],
      totalDays: map['totalDays'],
      jobLocation: map['jobLocation'],
      totalReview: map['totalReview'],
      deegryName: map['deegryName'],
      companyName: map['companyName'],
      companyImage: map['companyImage'],
      dateAnswere: map['dateAnswere'],
      id: map['id'].toInt(),
      jobDescription: map['jobDescription'],
      index: map['index']?.toInt(),
    );
  }

  factory Reviewdrafts.fromJson(String source) => Reviewdrafts.fromMap(json.decode(source));

  final String? deegryCompleteYear;

  final String? deegryDescription;

  final String? totalDays;

  final String? jobLocation;

  final String? totalReview;

  final String? deegryName;

  final String? companyName;

  final String? companyImage;

  final String? dateAnswere;

  final int id;

  final String? jobDescription;

  final int? index;

  Reviewdrafts copyWith({
    String? deegryCompleteYear,
    String? deegryDescription,
    String? totalDays,
    String? jobLocation,
    String? totalReview,
    String? deegryName,
    String? companyName,
    String? companyImage,
    String? dateAnswere,
    int? id,
    String? jobDescription,
    int? index,
  }) {
    return Reviewdrafts(
      deegryCompleteYear: deegryCompleteYear ?? this.deegryCompleteYear,
      deegryDescription: deegryDescription ?? this.deegryDescription,
      totalDays: totalDays ?? this.totalDays,
      jobLocation: jobLocation ?? this.jobLocation,
      totalReview: totalReview ?? this.totalReview,
      deegryName: deegryName ?? this.deegryName,
      companyName: companyName ?? this.companyName,
      companyImage: companyImage ?? this.companyImage,
      dateAnswere: dateAnswere ?? this.dateAnswere,
      id: id ?? this.id,
      jobDescription: jobDescription ?? this.jobDescription,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'deegryCompleteYear': deegryCompleteYear,
      'deegryDescription': deegryDescription,
      'totalDays': totalDays,
      'jobLocation': jobLocation,
      'totalReview': totalReview,
      'deegryName': deegryName,
      'companyName': companyName,
      'companyImage': companyImage,
      'dateAnswere': dateAnswere,
      'id': id,
      'jobDescription': jobDescription,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Reviewdrafts &&
        other.deegryCompleteYear == deegryCompleteYear &&
        other.deegryDescription == deegryDescription &&
        other.totalDays == totalDays &&
        other.jobLocation == jobLocation &&
        other.totalReview == totalReview &&
        other.deegryName == deegryName &&
        other.companyName == companyName &&
        other.companyImage == companyImage &&
        other.dateAnswere == dateAnswere &&
        other.id == id &&
        other.jobDescription == jobDescription &&
        other.index == index;
  }

  @override
  int get hashCode {
    return deegryCompleteYear.hashCode ^
        deegryDescription.hashCode ^
        totalDays.hashCode ^
        jobLocation.hashCode ^
        totalReview.hashCode ^
        deegryName.hashCode ^
        companyName.hashCode ^
        companyImage.hashCode ^
        dateAnswere.hashCode ^
        id.hashCode ^
        jobDescription.hashCode ^
        index.hashCode;
  }

  @override
  String toString() {
    return 'Reviewdrafts(deegryCompleteYear: $deegryCompleteYear, deegryDescription: $deegryDescription, totalDays: $totalDays, jobLocation: $jobLocation, totalReview: $totalReview, deegryName: $deegryName, companyName: $companyName, companyImage: $companyImage, dateAnswere: $dateAnswere, id: $id, jobDescription: $jobDescription, index: $index)';
  }
}
