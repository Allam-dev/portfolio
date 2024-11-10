import 'package:flutter/material.dart';
import 'package:portfolio/core/assets.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/core/extenstions.dart';
import 'package:portfolio/core/label.dart';
import 'package:portfolio/features/skills/skills_section.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          // flex: 2,
          child: Column(
            crossAxisAlignment: context.isDesktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Label(
                "Hi, I'm Abdelrahman Allam.",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.green),
              ),
              const SizedBox(height: 10),
              Label(
                "Software Engineer | Problem Solver | Flutter Developer",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              Label(
                "As a Computer Science student passionate about technology, I thrive on creating innovative solutions to everyday problems. My expertise spans the development of programs and devices that enhance efficiency and solve challenges. In addition to my studies, I work as a freelance Flutter developer, delivering high-quality mobile applications. I am dedicated to pushing the boundaries of technology and driving impactful change through my work.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(resumeUrl));
                  },
                  child: const Text("My Resume")),
            ],
          ),
        ),
      ],
    );
  }
}
