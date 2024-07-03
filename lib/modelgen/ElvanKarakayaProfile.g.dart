import 'dart:convert';

class ElvanKarakayaProfile {
  const ElvanKarakayaProfile({
    required this.id,
    this.taxnumber,
    this.company,
    this.name,
  });

  factory ElvanKarakayaProfile.fromMap(Map<String, dynamic> map) {
    return ElvanKarakayaProfile(
      id: map['id'],
      taxnumber: map['taxnumber'],
      company: map['company'],
      name: map['name'],
    );
  }

  factory ElvanKarakayaProfile.fromJson(String source) => ElvanKarakayaProfile.fromMap(json.decode(source));

  final String id;

  final String? taxnumber;

  final String? company;

  final String? name;

  ElvanKarakayaProfile copyWith({
    String? id,
    String? taxnumber,
    String? company,
    String? name,
  }) {
    return ElvanKarakayaProfile(
      id: id ?? this.id,
      taxnumber: taxnumber ?? this.taxnumber,
      company: company ?? this.company,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'taxnumber': taxnumber,
      'company': company,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ElvanKarakayaProfile &&
        other.id == id &&
        other.taxnumber == taxnumber &&
        other.company == company &&
        other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^ taxnumber.hashCode ^ company.hashCode ^ name.hashCode;
  }

  @override
  String toString() {
    return 'ElvanKarakayaProfile(id: $id, taxnumber: $taxnumber, company: $company, name: $name)';
  }
}
