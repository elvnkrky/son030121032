import 'dart:convert';

class RemoveJobs {
  const RemoveJobs({
    this.companyName,
    required this.id,
    this.totalDays,
    this.isBlocked,
  });

  factory RemoveJobs.fromMap(Map<String, dynamic> map) {
    return RemoveJobs(
      companyName: map['companyName'],
      id: map['id'].toInt(),
      totalDays: map['totalDays'],
      isBlocked: map['isBlocked'],
    );
  }

  factory RemoveJobs.fromJson(String source) => RemoveJobs.fromMap(json.decode(source));

  final String? companyName;

  final int id;

  final String? totalDays;

  final bool? isBlocked;

  RemoveJobs copyWith({
    String? companyName,
    int? id,
    String? totalDays,
    bool? isBlocked,
  }) {
    return RemoveJobs(
      companyName: companyName ?? this.companyName,
      id: id ?? this.id,
      totalDays: totalDays ?? this.totalDays,
      isBlocked: isBlocked ?? this.isBlocked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'id': id,
      'totalDays': totalDays,
      'isBlocked': isBlocked,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RemoveJobs &&
        other.companyName == companyName &&
        other.id == id &&
        other.totalDays == totalDays &&
        other.isBlocked == isBlocked;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ id.hashCode ^ totalDays.hashCode ^ isBlocked.hashCode;
  }

  @override
  String toString() {
    return 'RemoveJobs(companyName: $companyName, id: $id, totalDays: $totalDays, isBlocked: $isBlocked)';
  }
}
