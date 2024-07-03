import 'dart:convert';

class Desiredjobtypes {
  const Desiredjobtypes({
    this.isBlocked,
    required this.id,
    required this.companyName,
  });

  factory Desiredjobtypes.fromMap(Map<String, dynamic> map) {
    return Desiredjobtypes(
      isBlocked: map['isBlocked'],
      id: map['id'].toInt(),
      companyName: map['companyName'],
    );
  }

  factory Desiredjobtypes.fromJson(String source) => Desiredjobtypes.fromMap(json.decode(source));

  final bool? isBlocked;

  final int id;

  final String companyName;

  Desiredjobtypes copyWith({
    bool? isBlocked,
    int? id,
    String? companyName,
  }) {
    return Desiredjobtypes(
      isBlocked: isBlocked ?? this.isBlocked,
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isBlocked': isBlocked,
      'id': id,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Desiredjobtypes &&
        other.isBlocked == isBlocked &&
        other.id == id &&
        other.companyName == companyName;
  }

  @override
  int get hashCode {
    return isBlocked.hashCode ^ id.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Desiredjobtypes(isBlocked: $isBlocked, id: $id, companyName: $companyName)';
  }
}
