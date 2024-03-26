import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  // int _selectedIndex = 0;
  // int counter = 0;

  // void incrementCounter() {
  //   setState(() {
  //     counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Scaffold(
        //   appBar: AppBar(
        //     backgroundColor: Colors.blue[700],
        //     title: const Text('Home Pages'),
        //   ),
        //   body: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         const Text(
        //           'Henshin!',
        //           style: TextStyle(
        //             fontSize: 30,
        //             fontWeight: FontWeight.bold,
        //             letterSpacing: 3,
        //             color: Colors.blueAccent,
        //           ),
        //         ),
        //         Text(
        //           '$counter',
        //           style: const TextStyle(
        //             fontSize: 30,
        //             fontWeight: FontWeight.bold,
        //             letterSpacing: 3,
        //             color: Colors.blueAccent,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   bottomNavigationBar: BottomNavigationBar(
        //     items: const <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: 'Home',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.message),
        //         label: 'Chat',
        //       ),
        //     ],
        //     currentIndex: _selectedIndex,
        //     selectedItemColor: Colors.blue[600],
        //     onTap: (int index) {
        //       setState(() {
        //         _selectedIndex = index;
        //       });
        //     },
        //   ),
        //   floatingActionButton: FloatingActionButton(
        //     backgroundColor: Colors.blue[600],
        //     onPressed: incrementCounter,
        //     child: const Icon(Icons.add),
        //   ),
        // ),
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        title: const Text('Home Pages'),
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children:
      //     <Widget>[
      //       Text('Hello World'),
      //       FloatingActionButton(
      //         onPressed: () {},
      //         backgroundColor: Colors.amber,
      //         child: Text('Click Me'),
      //       ),
      //       Container(
      //         color: Colors.red,
      //         padding: EdgeInsets.all(30),
      //         child: Text('Indside Container'),
      //       )
      //     ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Row(
            children: <Widget>[Text('Hello'), Text(' World')],
          ),
          Container(
              padding: const EdgeInsets.all(20),
              color: Colors.cyan,
              child: const Text('First')),
          Container(
              padding: const EdgeInsets.all(40),
              color: Colors.indigo,
              child: const Text('Second')),
          Container(
              padding: const EdgeInsets.all(60),
              color: Colors.blueAccent,
              child: const Text('Third'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[200],
        onPressed: () {
          print('Hello World!');
        },
        child: const Icon(Icons.add_a_photo_outlined),
      ),
    ));
  }
}
