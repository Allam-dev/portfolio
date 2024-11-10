part of 'home_screen.dart';

class _HomeWebView extends StatefulWidget {
  const _HomeWebView({super.key});

  @override
  State<_HomeWebView> createState() => _HomeWebViewState();
}

class _HomeWebViewState extends State<_HomeWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuItem('About Me', _aboutKey),
            _buildMenuItem('Skills', _skillsKey),
            _buildMenuItem('Projects', _projectsKey),
            _buildMenuItem('Experience', _experienceKey),
            _buildMenuItem('Education', _educationKey),
            _buildMenuItem('Contact', _contactKey),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutSection(key: _aboutKey),

            const SizedBox(height: 120),

            SkillsSection(key: _skillsKey),

            const SizedBox(height: 120),

           ProjectsSection(key: _projectsKey,),
            const SizedBox(height: 120),

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
      onPressed: () => _scrollToSection(sectionKey),
      child: Text(title, style: const TextStyle(color: Colors.white)),
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
