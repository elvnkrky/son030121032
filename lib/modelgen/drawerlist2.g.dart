import 'dart:convert';

class Drawerlist2 {
  const Drawerlist2({
    this.widget,
    required this.id,
    this.selectSkill,
    this.companyName,
    this.totalReview,
    this.companyImage,
  });

  factory Drawerlist2.fromMap(Map<String, dynamic> map) {
    return Drawerlist2(
      widget: map['widget'],
      id: map['id'].toInt(),
      selectSkill: map['selectSkill'],
      companyName: map['companyName'],
      totalReview: map['totalReview'],
      companyImage: map['companyImage'],
    );
  }

  factory Drawerlist2.fromJson(String source) => Drawerlist2.fromMap(json.decode(source));

  final String? widget;

  final int id;

  final bool? selectSkill;

  final String? companyName;

  final String? totalReview;

  final String? companyImage;

  Drawerlist2 copyWith({
    String? widget,
    int? id,
    bool? selectSkill,
    String? companyName,
    String? totalReview,
    String? companyImage,
  }) {
    return Drawerlist2(
      widget: widget ?? this.widget,
      id: id ?? this.id,
      selectSkill: selectSkill ?? this.selectSkill,
      companyName: companyName ?? this.companyName,
      totalReview: totalReview ?? this.totalReview,
      companyImage: companyImage ?? this.companyImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'widget': widget,
      'id': id,
      'selectSkill': selectSkill,
      'companyName': companyName,
      'totalReview': totalReview,
      'companyImage': companyImage,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Drawerlist2 &&
        other.widget == widget &&
        other.id == id &&
        other.selectSkill == selectSkill &&
        other.companyName == companyName &&
        other.totalReview == totalReview &&
        other.companyImage == companyImage;
  }

  @override
  int get hashCode {
    return widget.hashCode ^
        id.hashCode ^
        selectSkill.hashCode ^
        companyName.hashCode ^
        totalReview.hashCode ^
        companyImage.hashCode;
  }

  @override
  String toString() {
    return 'Drawerlist2(widget: $widget, id: $id, selectSkill: $selectSkill, companyName: $companyName, totalReview: $totalReview, companyImage: $companyImage)';
  }
}
