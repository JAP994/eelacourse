import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter layout demo"), centerTitle: true),
      body: Column(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [Icon(Icons.call), Text('CALL')]),
                Column(children: [Icon(Icons.route), Text('ROUTE')]),
                Column(children: [Icon(Icons.share), Text('SHARE')]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Text(
              "Quis enim officia incididunt labore ipsum. Voluptate reprehenderit adipisicing ex qui aliquip eu nostrud adipisicing incididunt cupidatat do. Esse ullamco culpa consectetur esse sunt ut.",
            ),
          ),
        ],
      ),
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
