import 'dart:convert';

class RemoveJobs {
    RemoveJobs({
    required this.id,
    this.isBlocked,
    this.companyName,
    this.totalDays,
  });

  factory RemoveJobs.fromMap(Map<String, dynamic> map) {
    return RemoveJobs(
      id: map['id'].toInt(),
      isBlocked: map['isBlocked'],
      companyName: map['companyName'],
      totalDays: map['totalDays'],
    );
  }

  factory RemoveJobs.fromJson(String source) => RemoveJobs.fromMap(json.decode(source));

  final int id;

  late final bool? isBlocked;

  final String? companyName;

  final String? totalDays;

  RemoveJobs copyWith({
    int? id,
    bool? isBlocked,
    String? companyName,
    String? totalDays,
  }) {
    return RemoveJobs(
      id: id ?? this.id,
      isBlocked: isBlocked ?? this.isBlocked,
      companyName: companyName ?? this.companyName,
      totalDays: totalDays ?? this.totalDays,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isBlocked': isBlocked,
      'companyName': companyName,
      'totalDays': totalDays,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RemoveJobs &&
        other.id == id &&
        other.isBlocked == isBlocked &&
        other.companyName == companyName &&
        other.totalDays == totalDays;
  }

  @override
  int get hashCode {
    return id.hashCode ^ isBlocked.hashCode ^ companyName.hashCode ^ totalDays.hashCode;
  }

  @override
  String toString() {
    return 'RemoveJobs(id: $id, isBlocked: $isBlocked, companyName: $companyName, totalDays: $totalDays)';
  }
}
