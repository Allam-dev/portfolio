import 'package:flutter/material.dart';
import 'package:portfolio/features/about/about_section.dart';
import 'package:portfolio/features/contact/contact_section.dart';
import 'package:portfolio/features/skills/skills_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  // Function to scroll to a section based on GlobalKey
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isDesktop = screenSize.width > 1024;

    return Scaffold(
      appBar: AppBar(
        title: isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildMenuItem('About Me', _aboutKey),
                  _buildMenuItem('Skills', _skillsKey),
                  _buildMenuItem('Projects', _projectsKey),
                  _buildMenuItem('Experience', _experienceKey),
                  _buildMenuItem('Education', _educationKey),
                  _buildMenuItem('Contact', _contactKey),
                ],
              )
            : null,
      ),
      drawer: isDesktop
          ? null
          : Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // const DrawerHeader(
                  //   child: Text('Navigate to'),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //   ),
                  // ),
                  _buildDrawerItem('About Me', _aboutKey),
                  _buildDrawerItem('Skills', _skillsKey),
                  _buildDrawerItem('Projects', _projectsKey),
                  _buildDrawerItem('Experience', _experienceKey),
                  _buildDrawerItem('Education', _educationKey),
                  _buildDrawerItem('Contact', _contactKey),
                ],
              ),
            ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 100 : 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Me Section
            AboutSection(key: _aboutKey),
            // _buildSection(
            //     'About Me',
            //     'I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...I am Abdelrahman Allam...',
            //     _aboutKey),
            const SizedBox(height: 20),

            // Skills Section
            SkillsSection(key: _skillsKey),
            // _buildSection(
            //     'Skills',
            //     'Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.Flutter, Dart, Firebase, etc.',
            //     _skillsKey),
            const SizedBox(height: 20),

            // Projects Section
            _buildSection(
                'Projects',
                'Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...Project 1, Project 2...',
                _projectsKey),
            const SizedBox(height: 20),

            // Experience Section
            _buildSection(
                'Experience',
                'Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...Intern at TEKNOSOFT...',
                _experienceKey),
            const SizedBox(height: 20),

            // Education Section
            _buildSection(
                'Education',
                'BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...BS in Computer Science...',
                _educationKey),
            const SizedBox(height: 20),

            // Contact Section
            // _buildSection(
            //     'Contact',
            //     'Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...Email: abdelrhmnallam@gmail.com...',
            //     _contactKey),

            ContactSection(key: _contactKey),
          ],
        ),
      ),
    );
  }

  // Helper method to create a navigation item in the AppBar for desktop
  Widget _buildMenuItem(String title, GlobalKey sectionKey) {
    return TextButton(
      onPressed: () => scrollToSection(sectionKey),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }

  // Helper method to create a drawer item for mobile/tablet
  Widget _buildDrawerItem(String title, GlobalKey sectionKey) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Close the drawer
        scrollToSection(sectionKey);
      },
    );
  }

  // Helper method to create a section with a title and description
  Widget _buildSection(String title, String content, GlobalKey key) {
    return Container(
      key: key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          Text(content, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
