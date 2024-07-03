import 'dart:convert';

class SkillList {
   SkillList({
    required this.id,
    this.isBlocked,
    this.companyName,
  });

  factory SkillList.fromMap(Map<String, dynamic> map) {
    return SkillList(
      id: map['id'].toInt(),
      isBlocked: map['isBlocked'],
      companyName: map['companyName'],
    );
  }

  factory SkillList.fromJson(String source) => SkillList.fromMap(json.decode(source));

  final int id;

  late final bool? isBlocked;

  final String? companyName;

  SkillList copyWith({
    int? id,
    bool? isBlocked,
    String? companyName,
  }) {
    return SkillList(
      id: id ?? this.id,
      isBlocked: isBlocked ?? this.isBlocked,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isBlocked': isBlocked,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SkillList && other.id == id && other.isBlocked == isBlocked && other.companyName == companyName;
  }

  @override
  int get hashCode {
    return id.hashCode ^ isBlocked.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'SkillList(id: $id, isBlocked: $isBlocked, companyName: $companyName)';
  }
}
