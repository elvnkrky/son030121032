import 'dart:convert';

class Reviewdrafts {
  const Reviewdrafts({
    required this.id,
    this.index,
    this.deegryCompleteYear,
    this.deegryDescription,
    this.deegryName,
    this.companyName,
    this.companyImage,
    this.totalDays,
    this.dateAnswere,
    this.jobLocation,
    this.totalReview,
    this.jobDescription,
  });

  factory Reviewdrafts.fromMap(Map<String, dynamic> map) {
    return Reviewdrafts(
      id: map['id'].toInt(),
      index: map['index']?.toInt(),
      deegryCompleteYear: map['deegryCompleteYear'],
      deegryDescription: map['deegryDescription'],
      deegryName: map['deegryName'],
      companyName: map['companyName'],
      companyImage: map['companyImage'],
      totalDays: map['totalDays'],
      dateAnswere: map['dateAnswere'],
      jobLocation: map['jobLocation'],
      totalReview: map['totalReview'],
      jobDescription: map['jobDescription'],
    );
  }

  factory Reviewdrafts.fromJson(String source) => Reviewdrafts.fromMap(json.decode(source));

  final int id;

  final int? index;

  final String? deegryCompleteYear;

  final String? deegryDescription;

  final String? deegryName;

  final String? companyName;

  final String? companyImage;

  final String? totalDays;

  final String? dateAnswere;

  final String? jobLocation;

  final String? totalReview;

  final String? jobDescription;

  Reviewdrafts copyWith({
    int? id,
    int? index,
    String? deegryCompleteYear,
    String? deegryDescription,
    String? deegryName,
    String? companyName,
    String? companyImage,
    String? totalDays,
    String? dateAnswere,
    String? jobLocation,
    String? totalReview,
    String? jobDescription,
  }) {
    return Reviewdrafts(
      id: id ?? this.id,
      index: index ?? this.index,
      deegryCompleteYear: deegryCompleteYear ?? this.deegryCompleteYear,
      deegryDescription: deegryDescription ?? this.deegryDescription,
      deegryName: deegryName ?? this.deegryName,
      companyName: companyName ?? this.companyName,
      companyImage: companyImage ?? this.companyImage,
      totalDays: totalDays ?? this.totalDays,
      dateAnswere: dateAnswere ?? this.dateAnswere,
      jobLocation: jobLocation ?? this.jobLocation,
      totalReview: totalReview ?? this.totalReview,
      jobDescription: jobDescription ?? this.jobDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'index': index,
      'deegryCompleteYear': deegryCompleteYear,
      'deegryDescription': deegryDescription,
      'deegryName': deegryName,
      'companyName': companyName,
      'companyImage': companyImage,
      'totalDays': totalDays,
      'dateAnswere': dateAnswere,
      'jobLocation': jobLocation,
      'totalReview': totalReview,
      'jobDescription': jobDescription,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Reviewdrafts &&
        other.id == id &&
        other.index == index &&
        other.deegryCompleteYear == deegryCompleteYear &&
        other.deegryDescription == deegryDescription &&
        other.deegryName == deegryName &&
        other.companyName == companyName &&
        other.companyImage == companyImage &&
        other.totalDays == totalDays &&
        other.dateAnswere == dateAnswere &&
        other.jobLocation == jobLocation &&
        other.totalReview == totalReview &&
        other.jobDescription == jobDescription;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        index.hashCode ^
        deegryCompleteYear.hashCode ^
        deegryDescription.hashCode ^
        deegryName.hashCode ^
        companyName.hashCode ^
        companyImage.hashCode ^
        totalDays.hashCode ^
        dateAnswere.hashCode ^
        jobLocation.hashCode ^
        totalReview.hashCode ^
        jobDescription.hashCode;
  }

  @override
  String toString() {
    return 'Reviewdrafts(id: $id, index: $index, deegryCompleteYear: $deegryCompleteYear, deegryDescription: $deegryDescription, deegryName: $deegryName, companyName: $companyName, companyImage: $companyImage, totalDays: $totalDays, dateAnswere: $dateAnswere, jobLocation: $jobLocation, totalReview: $totalReview, jobDescription: $jobDescription)';
  }
}
