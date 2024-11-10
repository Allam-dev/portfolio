import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/core/assets.dart';
import 'package:portfolio/core/extenstions.dart';
import 'package:portfolio/features/projects/models/project_model.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: context.theme.textTheme.headlineLarge,
        ),
        SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: 1.5,
          ),
          itemCount: _projects.length,
          itemBuilder: (context, index) => _projectCard(
            _projects[index],
          ),
        ),
      ],
    );
  }

  Widget _projectCard(ProjectModel project) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(project.imagePath)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          project.name,
          style: context.theme.textTheme.headlineSmall,
        ),
        Text(
          project.description,
          style: context.theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

List<ProjectModel> _projects = [
  ProjectModel(
    name: 'Euro',
    imagePath: Assets.projectThumbnails.euro,
    description: 'Developed a mobile application for emergency assistance and rescue services using Flutter, available on the Google Play Store.',
  ),
  ProjectModel(
    name: 'Everywhere',
    imagePath: Assets.projectThumbnails.everywhere,
    description: 'Points Of Interest are map points (GPS coordinates + descriptions) that you find interesting and want to store. The venue of a business meeting, a travel destination, a Restaurant, a Cafe etc - any place can be saved as POI and shared with others.',
  ),
  ProjectModel(
    name: 'Doctor Online',
    imagePath: Assets.projectThumbnails.doctor,
    description:
        'Medical consultations at nominal prices and free medical articles.',
  ),
  // ProjectModel(
  //     name: 'مركز التغذية Nutrition Hub',
  //     imagePath: Assets.projectThumbnails.euro),
];
