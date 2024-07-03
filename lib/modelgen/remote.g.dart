import 'dart:convert';

class Remote {
  const Remote({
    required this.index,
    required this.id,
    this.companyName,
    this.totalDays,
  });

  factory Remote.fromMap(Map<String, dynamic> map) {
    return Remote(
      index: map['index'].toInt(),
      id: map['id'].toInt(),
      companyName: map['companyName'],
      totalDays: map['totalDays'],
    );
  }

  factory Remote.fromJson(String source) => Remote.fromMap(json.decode(source));

  final int index;

  final int id;

  final String? companyName;

  final String? totalDays;

  Remote copyWith({
    int? index,
    int? id,
    String? companyName,
    String? totalDays,
  }) {
    return Remote(
      index: index ?? this.index,
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      totalDays: totalDays ?? this.totalDays,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'id': id,
      'companyName': companyName,
      'totalDays': totalDays,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Remote &&
        other.index == index &&
        other.id == id &&
        other.companyName == companyName &&
        other.totalDays == totalDays;
  }

  @override
  int get hashCode {
    return index.hashCode ^ id.hashCode ^ companyName.hashCode ^ totalDays.hashCode;
  }

  @override
  String toString() {
    return 'Remote(index: $index, id: $id, companyName: $companyName, totalDays: $totalDays)';
  }
}
