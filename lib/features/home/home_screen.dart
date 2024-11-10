import 'package:flutter/material.dart';
import 'package:portfolio/core/extenstions.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/contact/contact_section.dart';
import 'package:portfolio/features/projects/projects_section.dart';
import 'package:portfolio/features/skills/skills_section.dart';

part 'home_web_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    if (context.isDesktop) {
      return const _HomeWebView();
    } else {
      return const _HomeWebView();
    }
  }

// Helper method to create a drawer item for mobile/tablet
// Widget _buildDrawerItem(String title, GlobalKey sectionKey) {
//   return ListTile(
//     title: Text(title),
//     onTap: () {
//       Navigator.pop(context); // Close the drawer
//       scrollToSection(sectionKey);
//     },
//   );
// }
}

final ScrollController _scrollController = ScrollController();

final GlobalKey _aboutKey = GlobalKey();

final GlobalKey _skillsKey = GlobalKey();

final GlobalKey _projectsKey = GlobalKey();

final GlobalKey _experienceKey = GlobalKey();

final GlobalKey _educationKey = GlobalKey();

final GlobalKey _contactKey = GlobalKey();

void _scrollToSection(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
}
