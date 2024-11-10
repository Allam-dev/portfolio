import 'package:flutter/cupertino.dart';

class ProjectModel {
  String name;
  String imagePath;
  String? googlyPlayUrl;
  String? appleStoreUrl;
  String? repo;
  String? projectUrl;
  String description;

  ProjectModel({
    required this.name,
    required this.imagePath,
    required this.description,
    this.appleStoreUrl,
    this.googlyPlayUrl,
    this.projectUrl,

    this.repo,
  });
}
