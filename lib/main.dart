import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkTree Asad Rahmani',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Roboto',
      ),
      home: const LinktreePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LinktreePage extends StatelessWidget {
  const LinktreePage({super.key});

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 150),
                // Profile Photo
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2023/07/28/18/23/bird-8155768_640.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // Name
                const Text(
                  '@rahmani__asad',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                // Bio
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Data and Cloud Enthusiast',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Social Links
                const SizedBox(height: 20),
                _buildLinkButton(
                  icon: Icons.language,
                  text: 'Resume',
                  url: 'https://1drv.ms/b/c/e7d1e1a55ba2e93b/EcA_kFZXW-RMhCasIqT4OVgBkGoFRhvGi-Q4gGkvrJn9PA?e=gs0wqA',
                ),
                _buildLinkButton(
                  icon: FontAwesomeIcons.github,
                  text: 'GitHub',
                  url: 'https://github.com/rahmani3101',
                ),
                _buildLinkButton(
                  icon: FontAwesomeIcons.linkedin,
                  text: 'LinkedIn',
                  url:
                      'https://www.linkedin.com/in/mohammad-asad-rahmani-a39b57257',
                ),
                _buildLinkButton(
                  icon: FontAwesomeIcons.instagram,
                  text: 'Instagram',
                  url: 'https://instagram.com/rahmani__asad',
                ),
                _buildLinkButton(
                  icon: FontAwesomeIcons.twitter,
                  text: 'X (Twitter)',
                  url: 'https://x.com/rahmani__asad',
                ),

                _buildLinkButton(
                  icon: FontAwesomeIcons.reddit,
                  text: 'Reddit',
                  url: 'https://www.reddit.com/user/rahmani__asad/',
                ),

                // Additional Content
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Thanks for visiting',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pre - final year Btech CSE with specialization in AI - ML',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLinkButton({
    required IconData icon,
    required String text,
    required String url,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () => _launchURL(url),
          icon: Icon(icon, color: const Color.fromARGB(255, 9, 0, 10)),
          label: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 247, 235, 235),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 83, 3, 107),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
