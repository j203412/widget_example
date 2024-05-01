import 'package:flutter/material.dart';

import 'models/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Todo> todos = <Todo>[
    Todo(name: "Do Homework", description: "Times Tables"),
    Todo(name: "Git Gud", description: "Do better"),
    Todo(
        name: "Commit corporate espionage",
        description: "Zac the corporate spy")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5.0),
                child: Text(todos[index].toString()),
              );
            }),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset("../web/images/shrek.jpg", scale: 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: _favourite,
                    icon: const Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: _favourite, icon: const Icon(Icons.language)),
                IconButton(onPressed: _favourite, icon: const Icon(Icons.menu)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is placeholder text'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _login, child: const Text('Login')),
                ElevatedButton(onPressed: _signup, child: const Text('Signup')),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _buttonPressed() {}

  void _favourite() {}

  void _login() {}

  void _signup() {}
}
