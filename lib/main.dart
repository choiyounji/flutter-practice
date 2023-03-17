import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 //commit test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second page'),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
              builder: (context)=>SecondPage()
            ));
          },
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First page'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
