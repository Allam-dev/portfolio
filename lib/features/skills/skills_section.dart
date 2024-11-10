import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/extenstions.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills',style:context.theme.textTheme.headlineLarge),

        const SizedBox(height: 30,),
        Wrap(
          spacing: 25,
          runSpacing: 20,
          children: _skills.map((skill) => _skillChip(skill)).toList(),
        ),
      ],
    );
  }

  Widget _skillChip(String skill) {
    return Chip(
      label: Text(skill,style: context.theme.textTheme.bodyMedium,),
      side: const BorderSide(width: 0,color: AppColors.grey),
      backgroundColor: AppColors.grey,
    );
  }
}

List<String> _skills = ['Flutter', 'git', 'postman', 'firebase',];