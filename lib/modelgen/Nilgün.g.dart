import 'dart:convert';
class Nilgün {const Nilgün({this.city, required this.id, this.address, required this.name, });

factory Nilgün.fromMap(Map<String, dynamic> map) { return Nilgün(city: map['city'],id: map['id'],address: map['address'],name: map['name'],); }

factory Nilgün.fromJson(String source) => Nilgün.fromMap(json.decode(source));

final String? city;

final String id;

final String? address;

final String name;

Nilgün copyWith({String? city, String? id, String? address, String? name, }) { return Nilgün(city: city ?? this.city,id: id ?? this.id,address: address ?? this.address,name: name ?? this.name,); } 
Map<String, dynamic> toMap() { return {'city':city,'id':id,'address':address,'name':name,}; } 
String toJson() => json.encode(toMap());

@override bool operator ==(Object other) {   if (identical(this, other)) return true;
  

  return other is Nilgün && other.city == city&&other.id == id&&other.address == address&&other.name == name;
   } 
@override int get hashCode { return city.hashCode^id.hashCode^address.hashCode^name.hashCode; } 
@override String toString() { return 'Nilgün(city: $city, id: $id, address: $address, name: $name)'; } 
 }
