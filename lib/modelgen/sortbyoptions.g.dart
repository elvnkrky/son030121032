import 'dart:convert';

class Sortbyoptions {
  const Sortbyoptions({
    required this.id,
    this.index,
    required this.companyName,
  });

  factory Sortbyoptions.fromMap(Map<String, dynamic> map) {
    return Sortbyoptions(
      id: map['id'].toInt(),
      index: map['index']?.toInt(),
      companyName: map['companyName'],
    );
  }

  factory Sortbyoptions.fromJson(String source) => Sortbyoptions.fromMap(json.decode(source));

  final int id;

  final int? index;

  final String companyName;

  Sortbyoptions copyWith({
    int? id,
    int? index,
    String? companyName,
  }) {
    return Sortbyoptions(
      id: id ?? this.id,
      index: index ?? this.index,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'index': index,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Sortbyoptions && other.id == id && other.index == index && other.companyName == companyName;
  }

  @override
  int get hashCode {
    return id.hashCode ^ index.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Sortbyoptions(id: $id, index: $index, companyName: $companyName)';
  }
}
