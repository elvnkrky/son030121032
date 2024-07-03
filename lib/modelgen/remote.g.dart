import 'dart:convert';

class Remote {
  const Remote({
    required this.index,
    required this.id,
    this.totalDays,
    this.companyName,
  });

  factory Remote.fromMap(Map<String, dynamic> map) {
    return Remote(
      index: map['index'].toInt(),
      id: map['id'].toInt(),
      totalDays: map['totalDays'],
      companyName: map['companyName'],
    );
  }

  factory Remote.fromJson(String source) => Remote.fromMap(json.decode(source));

  final int index;

  final int id;

  final String? totalDays;

  final String? companyName;

  Remote copyWith({
    int? index,
    int? id,
    String? totalDays,
    String? companyName,
  }) {
    return Remote(
      index: index ?? this.index,
      id: id ?? this.id,
      totalDays: totalDays ?? this.totalDays,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'id': id,
      'totalDays': totalDays,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Remote &&
        other.index == index &&
        other.id == id &&
        other.totalDays == totalDays &&
        other.companyName == companyName;
  }

  @override
  int get hashCode {
    return index.hashCode ^ id.hashCode ^ totalDays.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Remote(index: $index, id: $id, totalDays: $totalDays, companyName: $companyName)';
  }
}
