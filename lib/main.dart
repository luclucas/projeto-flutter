import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundColor: Colors.red,
    radius: 100,
  );

  final nome = const Text(
  'Luciano Lucas',
  style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
      onPressed: (){
        launchUrl(Uri(scheme: 'tel', path: '9999-9999'));
      },
      color: Colors.red,
      icon: const Icon(Icons.phone),);

  final botaoEmail = IconButton(
    onPressed: (){
      launchUrl(Uri(scheme: 'mail', path: 'exemplo@gmail.com'));
    },
    color: Colors.red,
    icon: const Icon(Icons.mail),);

  final botaoSMS = IconButton(
    onPressed: (){
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
    },
    color: Colors.red,
    icon: const Icon(Icons.sms),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoTelefone, botaoEmail, botaoSMS
            ],
          )
        ],
      ),
    );
  }

}
