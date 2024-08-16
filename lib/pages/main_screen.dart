import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text('Main Sreen', style: TextStyle(color: Colors.white),),
          ElevatedButton(
              onPressed: () {
                //Navigator.of(context).pushNamedAndRemoveUntil('/todo', (Route<dynamic> route) => false);
                /*Navigator.pushNamed(context, '/todo', );*/
                Navigator.pushReplacementNamed(context, '/todo', );
              },
              child: const Text('Перейти далее')
          )
        ],
      ),
    );
  }
}
