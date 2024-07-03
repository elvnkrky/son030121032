import 'dart:convert';

class Skilldata {
  const Skilldata({
    required this.companyName,
    required this.id,
    this.selectSkill,
  });

  factory Skilldata.fromMap(Map<String, dynamic> map) {
    return Skilldata(
      companyName: map['companyName'],
      id: map['id'].toInt(),
      selectSkill: map['selectSkill'],
    );
  }

  factory Skilldata.fromJson(String source) => Skilldata.fromMap(json.decode(source));

  final String companyName;

  final int id;

  final bool? selectSkill;

  Skilldata copyWith({
    String? companyName,
    int? id,
    bool? selectSkill,
  }) {
    return Skilldata(
      companyName: companyName ?? this.companyName,
      id: id ?? this.id,
      selectSkill: selectSkill ?? this.selectSkill,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'id': id,
      'selectSkill': selectSkill,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Skilldata && other.companyName == companyName && other.id == id && other.selectSkill == selectSkill;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ id.hashCode ^ selectSkill.hashCode;
  }

  @override
  String toString() {
    return 'Skilldata(companyName: $companyName, id: $id, selectSkill: $selectSkill)';
  }
}
