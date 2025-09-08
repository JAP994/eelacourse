import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter layout demo"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://imgs.search.brave.com/Gbyx2N-YaUzWSic7nWuqLcqD0hnOmvbbrH-uuLmh0wQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9nbG9i/ZXRyb3R0ZXJreWxl/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMi8wOS9EU0Nf/MDA2Ny5qcGc',
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return CircularProgressIndicator();
              }
              return child;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: LocationsDetails(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 4,
              children: [
                Actions(icon: Icons.call, name: 'CALL'),
                Actions(icon: Icons.route, name: 'ROUTE'),
                Actions(icon: Icons.share, name: 'SHARE'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Text(
              "Lorem Ipsum is simply dummy text"
              " of the printing and typesetting "
              "industry. Lorem Ipsum has been the "
              "industry's standard dummy text ever "
              "since the 1500s, when an unknown printer "
              "took a galley of type and scrambled "
              "it to make a type specimen book. It has "
              "survived not only five centuries, but "
              "also the leap into electronic typesetting,"
              " remaining essentially unchanged. It was "
              "popularised in the 1960s with the release "
              "of Letraset sheets containing Lorem Ipsum "
              "passages, and more recently with desktop "
              "publishing software like Aldus PageMaker "
              "including versions of Lorem Ipsum.",
            ),
          ),
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({super.key, required this.icon, required this.name});

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.deepPurple),
        Text(name, style: TextStyle(color: Colors.deepPurple)),
      ],
    );
  }
}

class LocationsDetails extends StatelessWidget {
  const LocationsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deschinen Lake Caspgrounf',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersting, Switzarland'),
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.amberAccent),
        Text('41'),
      ],
    );
  }
}
