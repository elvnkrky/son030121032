import 'dart:convert';

class Popularsearches {
  const Popularsearches({
    required this.id,
    required this.companyName,
  });

  factory Popularsearches.fromMap(Map<String, dynamic> map) {
    return Popularsearches(
      id: map['id'].toInt(),
      companyName: map['companyName'],
    );
  }

  factory Popularsearches.fromJson(String source) => Popularsearches.fromMap(json.decode(source));

  final int id;

  final String companyName;

  Popularsearches copyWith({
    int? id,
    String? companyName,
  }) {
    return Popularsearches(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Popularsearches && other.id == id && other.companyName == companyName;
  }

  @override
  int get hashCode {
    return id.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Popularsearches(id: $id, companyName: $companyName)';
  }
}
