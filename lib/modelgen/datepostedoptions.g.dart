import 'dart:convert';

class Datepostedoptions {
  const Datepostedoptions({
    required this.companyName,
    this.index,
    required this.id,
  });

  factory Datepostedoptions.fromMap(Map<String, dynamic> map) {
    return Datepostedoptions(
      companyName: map['companyName'],
      index: map['index']?.toInt(),
      id: map['id'].toInt(),
    );
  }

  factory Datepostedoptions.fromJson(String source) => Datepostedoptions.fromMap(json.decode(source));

  final String companyName;

  final int? index;

  final int id;

  Datepostedoptions copyWith({
    String? companyName,
    int? index,
    int? id,
  }) {
    return Datepostedoptions(
      companyName: companyName ?? this.companyName,
      index: index ?? this.index,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'index': index,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Datepostedoptions && other.companyName == companyName && other.index == index && other.id == id;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ index.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Datepostedoptions(companyName: $companyName, index: $index, id: $id)';
  }
}
