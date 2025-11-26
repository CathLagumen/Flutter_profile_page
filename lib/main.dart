
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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(227, 146, 34, 146)),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/butterfly1.jpg'),
            fit: BoxFit.cover,
          ),
      ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (_showImage)
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/20240314_Lisa_Manoban_07.jpg'),
            ),        
    
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(179, 18, 16, 16),
                borderRadius: BorderRadius.circular(10),
            ),
              child:
            const Text(
              'Welcome to My Profile Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 239, 233, 233), fontFamily: 'Poppins',),
            ),
            ),
          
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMePage()),
                );
              },

              child: Text('About Me'),
              

            ),
          ],
        ),
      ),
    );
  }
}
class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _buildBox(
              title: "Basic Info",
              icon: Icons.person,
              content: "Name: Your Name\nAge: 25\nLocation: Philippines",
            ),
            _buildBox(
              title: "Contact Details",
              icon: Icons.phone,
              content: "Email: you@email.com\nPhone: 09xx-xxx-xxxx",
            )
          ],
        ),
      ),
    );
  }
}