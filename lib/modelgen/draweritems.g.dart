import 'dart:convert';

class Draweritems {
  const Draweritems({
    this.widget,
    this.category,
    required this.id,
    this.isSelected,
    this.isBlocked,
    this.review,
    this.image,
    required this.name,
  });

  factory Draweritems.fromMap(Map<String, dynamic> map) {
    return Draweritems(
      widget: map['widget'],
      category: map['category'],
      id: map['id'].toInt(),
      isSelected: map['is_selected'],
      isBlocked: map['is_blocked'],
      review: map['review'],
      image: map['image'],
      name: map['name'],
    );
  }

  factory Draweritems.fromJson(String source) => Draweritems.fromMap(json.decode(source));

  final String? widget;

  final String? category;

  final int id;

  final bool? isSelected;

  final bool? isBlocked;

  final String? review;

  final String? image;

  final String name;

  Draweritems copyWith({
    String? widget,
    String? category,
    int? id,
    bool? isSelected,
    bool? isBlocked,
    String? review,
    String? image,
    String? name,
  }) {
    return Draweritems(
      widget: widget ?? this.widget,
      category: category ?? this.category,
      id: id ?? this.id,
      isSelected: isSelected ?? this.isSelected,
      isBlocked: isBlocked ?? this.isBlocked,
      review: review ?? this.review,
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'widget': widget,
      'category': category,
      'id': id,
      'is_selected': isSelected,
      'is_blocked': isBlocked,
      'review': review,
      'image': image,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Draweritems &&
        other.widget == widget &&
        other.category == category &&
        other.id == id &&
        other.isSelected == isSelected &&
        other.isBlocked == isBlocked &&
        other.review == review &&
        other.image == image &&
        other.name == name;
  }

  @override
  int get hashCode {
    return widget.hashCode ^
        category.hashCode ^
        id.hashCode ^
        isSelected.hashCode ^
        isBlocked.hashCode ^
        review.hashCode ^
        image.hashCode ^
        name.hashCode;
  }

  @override
  String toString() {
    return 'Draweritems(widget: $widget, category: $category, id: $id, isSelected: $isSelected, isBlocked: $isBlocked, review: $review, image: $image, name: $name)';
  }
}
