import 'dart:core';


class DataProfile {
  final String? lastName;
  final String? firstName;
  final String? telephone;
  final String? description;
  final String? imagePath;

  String? getLastName() {
    return lastName;
  }

  String? getFirstName() {
    return firstName;
  }

  String? getTelephone() {
    return telephone;
  }

  String? getDescription() {
    return description;
  }

  String? getImagePath() {
    return imagePath;
  }

  factory DataProfile.fromJson(Map<String, dynamic> parsedJson) {
    return DataProfile(
      parsedJson['firstName'] ?? "",
      parsedJson['lastName'] ?? "",
      parsedJson['telephone'] ?? "",
      parsedJson['description'] ?? "",
      parsedJson['imagePath'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "telephone": telephone,
      "description": description,
      "imagePath": imagePath,
    };
  }

  DataProfile(this.lastName, this.firstName, this.telephone, this.description, this.imagePath);
}