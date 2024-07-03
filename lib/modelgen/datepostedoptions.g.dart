import 'dart:convert';

class Datepostedoptions {
  const Datepostedoptions({
    this.index,
    required this.id,
    required this.companyName,
  });

  factory Datepostedoptions.fromMap(Map<String, dynamic> map) {
    return Datepostedoptions(
      index: map['index']?.toInt(),
      id: map['id'].toInt(),
      companyName: map['companyName'],
    );
  }

  factory Datepostedoptions.fromJson(String source) => Datepostedoptions.fromMap(json.decode(source));

  final int? index;

  final int id;

  final String companyName;

  Datepostedoptions copyWith({
    int? index,
    int? id,
    String? companyName,
  }) {
    return Datepostedoptions(
      index: index ?? this.index,
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'id': id,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Datepostedoptions && other.index == index && other.id == id && other.companyName == companyName;
  }

  @override
  int get hashCode {
    return index.hashCode ^ id.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Datepostedoptions(index: $index, id: $id, companyName: $companyName)';
  }
}
