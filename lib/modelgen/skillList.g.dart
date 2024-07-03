import 'dart:convert';

class SkillList {
  const SkillList({
    required this.id,
    this.companyName,
    this.isBlocked,
  });

  factory SkillList.fromMap(Map<String, dynamic> map) {
    return SkillList(
      id: map['id'].toInt(),
      companyName: map['companyName'],
      isBlocked: map['isBlocked'],
    );
  }

  factory SkillList.fromJson(String source) => SkillList.fromMap(json.decode(source));

  final int id;

  final String? companyName;

  final bool? isBlocked;

  SkillList copyWith({
    int? id,
    String? companyName,
    bool? isBlocked,
  }) {
    return SkillList(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      isBlocked: isBlocked ?? this.isBlocked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'companyName': companyName,
      'isBlocked': isBlocked,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SkillList && other.id == id && other.companyName == companyName && other.isBlocked == isBlocked;
  }

  @override
  int get hashCode {
    return id.hashCode ^ companyName.hashCode ^ isBlocked.hashCode;
  }

  @override
  String toString() {
    return 'SkillList(id: $id, companyName: $companyName, isBlocked: $isBlocked)';
  }
}
