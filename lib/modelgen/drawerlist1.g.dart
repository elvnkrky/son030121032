import 'dart:convert';

class Drawerlist1 {
  const Drawerlist1({
    required this.id,
    required this.widget,
    this.companyName,
  });

  factory Drawerlist1.fromMap(Map<String, dynamic> map) {
    return Drawerlist1(
      id: map['id'].toInt(),
      widget: map['widget'],
      companyName: map['companyName'],
    );
  }

  factory Drawerlist1.fromJson(String source) => Drawerlist1.fromMap(json.decode(source));

  final int id;

  final String widget;

  final String? companyName;

  Drawerlist1 copyWith({
    int? id,
    String? widget,
    String? companyName,
  }) {
    return Drawerlist1(
      id: id ?? this.id,
      widget: widget ?? this.widget,
      companyName: companyName ?? this.companyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'widget': widget,
      'companyName': companyName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Drawerlist1 && other.id == id && other.widget == widget && other.companyName == companyName;
  }

  @override
  int get hashCode {
    return id.hashCode ^ widget.hashCode ^ companyName.hashCode;
  }

  @override
  String toString() {
    return 'Drawerlist1(id: $id, widget: $widget, companyName: $companyName)';
  }
}
