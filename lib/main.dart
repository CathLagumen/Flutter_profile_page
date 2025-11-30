import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0288D1)),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Profile Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFB3E5FC)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/pic.jpg'),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  const Text(
                    'Cathlene Ilagan',
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 93, 250),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 6),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutMePage()),
                );
              },
              child: const Text('About Me', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  int _selectedIndex = 0;

  final List<IconData> _menuIcons = [
    Icons.person,
    Icons.star,
    Icons.build,
    Icons.favorite,
  ];

  Widget _getContent() {
    switch (_selectedIndex) {
      case 0:
        return _buildProfileContent();
      case 1:
        return _buildSkillsContent();
      case 2:
        return _buildToolsContent();
      case 3:
        return _buildHobbiesContent();
      default:
        return _buildProfileContent();
    }
  }

  Widget _buildProfileContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/pic.jpg'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Cathlene Ilagan',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 93, 250),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildInfoSection(
              icon: Icons.cake,
              title: 'Zodiac Sign',
              content: 'Capricorn',
            ),
            const SizedBox(height: 16),
            _buildInfoSection(
              icon: Icons.location_on,
              title: 'Address',
              content: 'Mandaluyong City',
            ),
            const SizedBox(height: 16),
            _buildInfoSection(
              icon: Icons.school,
              title: 'Education',
              content: 'Bachelor of Science in Mechanical Engineering',
            ),
            const SizedBox(height: 24),
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 93, 250),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                'Former Mechanical Engineer turned aspiring Software Engineer, now building code instead of machines, and loving every challenge along the way.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.blue, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Column(
                children: [
                  Icon(Icons.star, size: 80, color: Colors.blue),
                  SizedBox(height: 16),
                  Text(
                    'My Skills',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 93, 250),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Basic Level',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildSkillCard(
              skillName: 'Java',
              icon: Icons.code,
              color: Colors.orange,
            ),
            const SizedBox(height: 16),
            _buildSkillCard(
              skillName: 'MySQL',
              icon: Icons.storage,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            _buildSkillCard(
              skillName: 'React',
              icon: Icons.web,
              color: Colors.cyan,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCard({
    required String skillName,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skillName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Basic Level',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 28),
        ],
      ),
    );
  }

  Widget _buildToolsContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Column(
                children: [
                  Icon(Icons.build, size: 80, color: Colors.blue),
                  SizedBox(height: 16),
                  Text(
                    'My Tools',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 93, 250),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Development Tools',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildToolCard(
              toolName: 'VS Code',
              icon: Icons.code_outlined,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 16),
            _buildToolCard(
              toolName: 'IntelliJ',
              icon: Icons.laptop_mac,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 16),
            _buildToolCard(
              toolName: 'GitHub',
              icon: Icons.code_off,
              color: Colors.black87,
            ),
            const SizedBox(height: 16),
            _buildToolCard(
              toolName: 'Figma',
              icon: Icons.design_services,
              color: Colors.pink,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildToolCard({
    required String toolName,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              toolName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 28),
        ],
      ),
    );
  }

  Widget _buildHobbiesContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Column(
                children: [
                  Icon(Icons.favorite, size: 80, color: Colors.blue),
                  SizedBox(height: 16),
                  Text(
                    'My Hobbies',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 93, 250),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Things I Love to Do',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildHobbyCard(
              hobbyName: 'Fish Keeping',
              description: 'Caring for and enjoying aquatic life',
              icon: Icons.water,
              color: Colors.teal,
            ),
            const SizedBox(height: 16),
            _buildHobbyCard(
              hobbyName: 'Reading',
              description: 'Exploring new worlds through books',
              icon: Icons.menu_book,
              color: Colors.brown,
            ),
            const SizedBox(height: 16),
            _buildHobbyCard(
              hobbyName: 'Travelling',
              description: 'Discovering new places and cultures',
              icon: Icons.flight_takeoff,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildHobbyCard({
    required String hobbyName,
    required String description,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 32),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hobbyName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 28),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFFB3E5FC)),
              child: _getContent(),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_menuIcons.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: _selectedIndex == index
                              ? Colors.blue
                              : Colors.transparent,
                          width: 3,
                        ),
                      ),
                    ),
                    child: Icon(
                      _menuIcons[index],
                      size: 28,
                      color: _selectedIndex == index
                          ? Colors.blue
                          : Colors.black54,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
