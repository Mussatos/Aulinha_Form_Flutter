import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Formulário'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController emailController = new TextEditingController(text: '');
  TextEditingController passController = new TextEditingController(text: '');


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void pegaValorInputs() {
    print(emailController.text);
    print(passController.text);
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'Digite seu melhor email',
            ),
          ),
          TextField(
            controller: passController,
            obscureText: true,
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pegaValorInputs,
        tooltip: 'Increment',
        child: const Icon(Icons.save),
      ),
    );
  }
}
