import 'dart:convert';

class Email {
  const Email({
    required this.id,
    this.email,
  });

  factory Email.fromMap(Map<String, dynamic> map) {
    return Email(
      id: map['id'].toInt(),
      email: map['email'],
    );
  }

  factory Email.fromJson(String source) => Email.fromMap(json.decode(source));

  final int id;

  final String? email;

  Email copyWith({
    int? id,
    String? email,
  }) {
    return Email(
      id: id ?? this.id,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Email && other.id == id && other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^ email.hashCode;
  }

  @override
  String toString() {
    return 'Email(id: $id, email: $email)';
  }
}
