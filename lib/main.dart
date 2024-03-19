import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }
void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/thumb.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'HOMETOWN',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Beijing, China',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                  'chun.li@thenetninja.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class MainApp extends StatefulWidget {
//   const MainApp({Key? key}) : super(key: key);

//   @override
//   MainAppState createState() => MainAppState();
// }

// class MainAppState extends State<MainApp> {
//   // int _selectedIndex = 0;
//   // int counter = 0;

//   // void incrementCounter() {
//   //   setState(() {
//   //     counter++;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         // home: Scaffold(
//         //   appBar: AppBar(
//         //     backgroundColor: Colors.blue[700],
//         //     title: const Text('Home Pages'),
//         //   ),
//         //   body: Center(
//         //     child: Column(
//         //       mainAxisAlignment: MainAxisAlignment.center,
//         //       children: [
//         //         const Text(
//         //           'Henshin!',
//         //           style: TextStyle(
//         //             fontSize: 30,
//         //             fontWeight: FontWeight.bold,
//         //             letterSpacing: 3,
//         //             color: Colors.blueAccent,
//         //           ),
//         //         ),
//         //         Text(
//         //           '$counter',
//         //           style: const TextStyle(
//         //             fontSize: 30,
//         //             fontWeight: FontWeight.bold,
//         //             letterSpacing: 3,
//         //             color: Colors.blueAccent,
//         //           ),
//         //         ),
//         //       ],
//         //     ),
//         //   ),
//         //   bottomNavigationBar: BottomNavigationBar(
//         //     items: const <BottomNavigationBarItem>[
//         //       BottomNavigationBarItem(
//         //         icon: Icon(Icons.home),
//         //         label: 'Home',
//         //       ),
//         //       BottomNavigationBarItem(
//         //         icon: Icon(Icons.message),
//         //         label: 'Chat',
//         //       ),
//         //     ],
//         //     currentIndex: _selectedIndex,
//         //     selectedItemColor: Colors.blue[600],
//         //     onTap: (int index) {
//         //       setState(() {
//         //         _selectedIndex = index;
//         //       });
//         //     },
//         //   ),
//         //   floatingActionButton: FloatingActionButton(
//         //     backgroundColor: Colors.blue[600],
//         //     onPressed: incrementCounter,
//         //     child: const Icon(Icons.add),
//         //   ),
//         // ),
//         home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.greenAccent[200],
//         title: const Text('Home Pages'),
//       ),
//       // body: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //   crossAxisAlignment: CrossAxisAlignment.end,
//       //   children:
//       //     <Widget>[
//       //       Text('Hello World'),
//       //       FloatingActionButton(
//       //         onPressed: () {},
//       //         backgroundColor: Colors.amber,
//       //         child: Text('Click Me'),
//       //       ),
//       //       Container(
//       //         color: Colors.red,
//       //         padding: EdgeInsets.all(30),
//       //         child: Text('Indside Container'),
//       //       )
//       //     ],
//       // ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           const Row(
//             children: <Widget>[Text('Hello'), Text(' World')],
//           ),
//           Container(
//               padding: const EdgeInsets.all(20),
//               color: Colors.cyan,
//               child: const Text('First')),
//           Container(
//               padding: const EdgeInsets.all(40),
//               color: Colors.indigo,
//               child: const Text('Second')),
//           Container(
//               padding: const EdgeInsets.all(60),
//               color: Colors.blueAccent,
//               child: const Text('Third'))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.greenAccent[200],
//         onPressed: () {
//           print('Hello World!');
//         },
//         child: const Icon(Icons.add_a_photo_outlined),
//       ),
//     ));
//   }
// }
