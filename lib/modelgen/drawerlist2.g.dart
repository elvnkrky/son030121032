import 'dart:convert';

class Drawerlist2 {
  const Drawerlist2({
    this.widget,
    this.companyImage,
    required this.id,
    this.selectSkill,
    this.totalReview,
    this.companyName,
  });

  factory Drawerlist2.fromMap(Map<String, dynamic> map) {
    return Drawerlist2(
      widget: map['widget'],
      companyImage: map['companyImage'],
      id: map['id'].toInt(),
      selectSkill: map['selectSkill'],
      totalReview: map['totalReview'],
      companyName: map['companyName'],
    );
  }

  factory Drawerlist2.fromJson(String source) => Drawerlist2.fromMap(json.decode(source));

  final String? widget;

  final String? companyImage;

  final int id;

  final bool? selectSkill;

  final String? totalReview;

  final String? companyName;

  Drawerlist2 copyWith({
    String? widget,
    String? companyImage,
    int? id,
    bool? selectSkill,
    String? totalReview,
    String? companyName,
  }) {
    return Drawerlist2(
      widget: widget ?? this.widget,
      companyImage: companyImage ?? this.companyImage,
      id: id ?? this.id,
      selectSkill: selectSkill ?? this.selectSkill,
      totalReview: totalReview ?? this.totalReview,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'widget': widget,
      'companyImage': companyImage,
      'id': id,
      'selectSkill': selectSkill,
      'totalReview': totalReview,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Drawerlist2 &&
        other.widget == widget &&
        other.companyImage == companyImage &&
        other.id == id &&
        other.selectSkill == selectSkill &&
        other.totalReview == totalReview &&
        other.companyName == companyName;
  }

  @override
  int get hashCode {
    return widget.hashCode ^
        companyImage.hashCode ^
        id.hashCode ^
        selectSkill.hashCode ^
        totalReview.hashCode ^
        companyName.hashCode;
  }

  @override
  String toString() {
    return 'Drawerlist2(widget: $widget, companyImage: $companyImage, id: $id, selectSkill: $selectSkill, totalReview: $totalReview, companyName: $companyName)';
  }
}
