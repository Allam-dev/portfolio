import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/assets.dart';
import 'package:portfolio/core/extenstions.dart';
import 'package:portfolio/core/label.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktop
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Label(
          "Skills",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 10),
        _SkillCard(),
      ],
    );
  }
}

class _SkillCard extends StatelessWidget {
  final String title = "Flutter";
  final String 
  const _SkillCard();

  @override
  Widget build(BuildContext context) {
    Assets.svg.git;
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(children: [
          const Icon(
            Icons.code,
            size: 50,
          ),
          const SizedBox(height: 10),
          Text(
            "Flutter",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ]));
  }
}

/*
https://git-scm.com/images/logos/downloads/Git-Icon-1788C.svg
https://storage.googleapis.com/cms-storage-bucket/4fd5520fe28ebf839174.svg
https://firebase.google.com/brand-guidelines
https://supabase.com/brand-assets
postman
dart
figma
 */