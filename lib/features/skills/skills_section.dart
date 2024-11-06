import 'package:flutter/material.dart';
import 'package:portfolio/core/assets.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/extenstions.dart';
import 'package:portfolio/core/label.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        padding: const EdgeInsets.all(16.0),
        children: skills.map((skill) {
          return SkillWidget(
            title: skill['title']!,
            imageUrl: skill['imageUrl']!,
          );
        }).toList(),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String title;
  final String imageUrl;

  const SkillWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          // color: AppColors.gr,
        ),
        child: Column(
          children: [
            Flexible(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: context.theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}

final skills = [
  {
    'title': 'Firebase',
    'imageUrl': 'https://raw.githubusercontent.com/Allam-dev/portfolio/refs/heads/main/assets/firebase_logo.png?token=GHSAT0AAAAAACZCDD53X47DOSOL3GXAHE6MZZL2NBQ',
  },
  {
    'title': 'Flutter',
    'imageUrl':
        'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
  },

  {
    'title': 'Git Source Control',
    'imageUrl': 'https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png',
  },
];

/*
https://git-scm.com/images/logos/downloads/Git-Icon-1788C.svg
https://storage.googleapis.com/cms-storage-bucket/4fd5520fe28ebf839174.svg
https://firebase.google.com/brand-guidelines
https://supabase.com/brand-assets
postman
dart
figma
 */
