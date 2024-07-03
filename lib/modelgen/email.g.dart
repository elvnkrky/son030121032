import 'dart:convert';

class Email {
  const Email({
    this.email,
    required this.id,
  });

  factory Email.fromMap(Map<String, dynamic> map) {
    return Email(
      email: map['email'],
      id: map['id'].toInt(),
    );
  }

  factory Email.fromJson(String source) => Email.fromMap(json.decode(source));

  final String? email;

  final int id;

  Email copyWith({
    String? email,
    int? id,
  }) {
    return Email(
      email: email ?? this.email,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Email && other.email == email && other.id == id;
  }

  @override
  int get hashCode {
    return email.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Email(email: $email, id: $id)';
  }
}
