import 'dart:convert';

class Drawerlist1 {
  const Drawerlist1({
    this.companyName,
    required this.id,
    required this.widget,
  });

  factory Drawerlist1.fromMap(Map<String, dynamic> map) {
    return Drawerlist1(
      companyName: map['companyName'],
      id: map['id'].toInt(),
      widget: map['widget'],
    );
  }

  factory Drawerlist1.fromJson(String source) => Drawerlist1.fromMap(json.decode(source));

  final String? companyName;

  final int id;

  final String widget;

  Drawerlist1 copyWith({
    String? companyName,
    int? id,
    String? widget,
  }) {
    return Drawerlist1(
      companyName: companyName ?? this.companyName,
      id: id ?? this.id,
      widget: widget ?? this.widget,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'id': id,
      'widget': widget,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Drawerlist1 && other.companyName == companyName && other.id == id && other.widget == widget;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^ id.hashCode ^ widget.hashCode;
  }

  @override
  String toString() {
    return 'Drawerlist1(companyName: $companyName, id: $id, widget: $widget)';
  }
}
