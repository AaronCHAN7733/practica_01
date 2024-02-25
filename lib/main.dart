import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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


  @override
  Widget build(BuildContext context) {
    //#Estrellas
    final stars = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
    //#Calificaciones
    final ratings = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
    //#Lista de icons
    final iconList = DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 15,
        height: 2,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
    //#Titulo
    const titleText = (Text(
      'StrawBerry Pavlova',
      style: TextStyle(
          fontWeight: FontWeight.w800, letterSpacing: 0.5, fontSize: 16),
    ));
    //#Subtitulo
    const subTitle = Text(
      'Lorem Ipsum es simplemente el texto de relleno'
      'de las imprentas y archivos de texto'
      'Lorem Ipsum ha sido el texto de relleno estándar de las'
      'industrias desde el año 1500',
      style: TextStyle(
          fontWeight: FontWeight.normal, letterSpacing: 0.5, fontSize: 14),
    );

    //#Ubicacion a la left
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(3, 10, 3, 10),
      child: Column(
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    final mainImage = Image.asset(
      'images/pavlova.jpg',
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Card(
            borderOnForeground: true,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: leftColumn,
                ),
                mainImage
              ],
            ),
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}