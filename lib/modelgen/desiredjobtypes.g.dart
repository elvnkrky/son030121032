import 'dart:convert';

class Desiredjobtypes {
   Desiredjobtypes({
    this.isBlocked,
    required this.companyName,
    required this.id,
  });

  factory Desiredjobtypes.fromMap(Map<String, dynamic> map) {
    return Desiredjobtypes(
      isBlocked: map['isBlocked'],
      companyName: map['companyName'],
      id: map['id'].toInt(),
    );
  }

  factory Desiredjobtypes.fromJson(String source) => Desiredjobtypes.fromMap(json.decode(source));

  late final bool? isBlocked;

  final String companyName;

  final int id;

  Desiredjobtypes copyWith({
    bool? isBlocked,
    String? companyName,
    int? id,
  }) {
    return Desiredjobtypes(
      isBlocked: isBlocked ?? this.isBlocked,
      companyName: companyName ?? this.companyName,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isBlocked': isBlocked,
      'companyName': companyName,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Desiredjobtypes &&
        other.isBlocked == isBlocked &&
        other.companyName == companyName &&
        other.id == id;
  }

  @override
  int get hashCode {
    return isBlocked.hashCode ^ companyName.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Desiredjobtypes(isBlocked: $isBlocked, companyName: $companyName, id: $id)';
  }
}
