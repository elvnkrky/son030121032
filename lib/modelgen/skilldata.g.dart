import 'dart:convert';

class Skilldata {
    Skilldata({
    required this.companyName,
    this.selectSkill,
    required this.id,
  });

  factory Skilldata.fromMap(Map<String, dynamic> map) {
    return Skilldata(
      companyName: map['companyName'],
      selectSkill: map['selectSkill'],
      id: map['id'].toInt(),
    );
  }

  factory Skilldata.fromJson(String source) => Skilldata.fromMap(json.decode(source));

  final String companyName;

  late final bool? selectSkill;

  final int id;

  set isBlocked(bool isBlocked) {}

  Skilldata copyWith({
    String? companyName,
    bool? selectSkill,
    int? id,
  }) {
    return Skilldata(
      companyName: companyName ?? this.companyName,
      selectSkill: selectSkill ?? this.selectSkill,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'selectSkill': selectSkill,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Skilldata && other.companyName == companyName && other.selectSkill == selectSkill && other.id == id;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ selectSkill.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Skilldata(companyName: $companyName, selectSkill: $selectSkill, id: $id)';
  }
}
