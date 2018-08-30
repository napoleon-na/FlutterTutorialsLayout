import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());
void main() => runApp(new MyHomePageApp());
// void main() => runApp(new MyNonMaterialApp());

class MyNonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text('Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 40.0, color: Colors.black87),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

class MyHomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

// List<Widget> list = <Widget>[
//   ListTile(
//     title: Text('CineArts at the Empire',
//       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('85 W Portal Ave'),
//     leading: Icon(
//         Icons.theaters,
//         color: Colors.blue[500],
//       ),
//     ),
//   ListTile(
//     title: Text('The Castro Theater',
//       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: Text('429 Castro St'),
//     leading: Icon(
//         Icons.theaters,
//         color: Colors.blue[500],
//       ),
//     ),
//   // leave out the rest of the column
// ];

// List<Container> _buildGridTileList(int count) {
//   return List<Container>.generate(
//     count,
//     (int index) => Container(
//       child: Image.asset('images/pic${index+11}.jpg')
//     )
//   );
// }

// Widget buildGrid() {
//   return GridView.extent(
//     maxCrossAxisExtent: 150.0,
//     padding: const EdgeInsets.all(4.0),
//     mainAxisSpacing: 4.0,
//     crossAxisSpacing: 4.0,
//     children: _buildGridTileList(30)
//   );
// }

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var card = SizedBox(
      height: 210.0,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );

    // var stack = Stack(
    //   alignment: const Alignment(0.6, 0.6),
    //   children: <Widget>[
    //     CircleAvatar(
    //       backgroundImage: AssetImage('images/pic41.jpg'),
    //       radius: 100.0,
    //     ),
    //     Container(
    //       decoration: BoxDecoration(
    //         color: Colors.black45,
    //       ),
    //       child: Text(
    //         'Mia B',
    //         style: TextStyle(
    //           fontSize: 20.0,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    // var container = Container(
    //   decoration: BoxDecoration(
    //     color: Colors.black26,
    //   ),
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 border: Border.all(width: 10.0, color: Colors.black38),
    //                 borderRadius: 
    //                     const BorderRadius.all(const Radius.circular(8.0)),
    //               ),
    //               margin: const EdgeInsets.all(4.0),
    //               child: Image.asset('images/pic7.jpg'),
    //             ),
    //           ),
    //           Expanded(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 border: Border.all(width: 10.0, color: Colors.black38),
    //                 borderRadius: 
    //                     const BorderRadius.all(const Radius.circular(8.0)),
    //               ),
    //               margin: const EdgeInsets.all(4.0),
    //               child: Image.asset('images/pic8.jpg'),
    //             ),
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           Expanded(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 border: Border.all(width: 10.0, color: Colors.black38),
    //                 borderRadius: 
    //                     const BorderRadius.all(const Radius.circular(8.0)),
    //               ),
    //               margin: const EdgeInsets.all(4.0),
    //               child: Image.asset('images/pic9.jpg'),
    //             ),
    //           ),
    //           Expanded(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 border: Border.all(width: 10.0, color: Colors.black38),
    //                 borderRadius: 
    //                     const BorderRadius.all(const Radius.circular(8.0)),
    //               ),
    //               margin: const EdgeInsets.all(4.0),
    //               child: Image.asset('images/pic10.jpg'),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

//     var titleText = Container(
//       padding: EdgeInsets.all(20.0),
//       child: Text(
//         'Strawberry Pavlova',
//         style: TextStyle(
//           fontWeight: FontWeight.w800,
//           letterSpacing: 0.5,
//           fontSize: 30.0,
//         ),
//       ),
//     );

//     var subTitle = Text(
//       '''
// Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.
// ''',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontFamily: 'Georgia',
//         fontSize: 25.0,
//       ),
//     );

//     var ratings = Container(
//       padding: EdgeInsets.all(20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(Icons.star, color: Colors.black),
//               Icon(Icons.star, color: Colors.black),
//               Icon(Icons.star, color: Colors.black),
//               Icon(Icons.star, color: Colors.black),
//               Icon(Icons.star, color: Colors.black),
//             ],
//           ),
//           Text(
//             '170 Reviews',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 20.0
//             ),
//           ),
//         ],
//       ),
//     );

//     var descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 0.5,
//       fontSize: 18.0,
//       height: 2.0,
//     );

//     var iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.kitchen, color: Colors.green[500]),
//                 Text('PREP:'),
//                 Text('25 min'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.timer, color: Colors.green[500]),
//                 Text('COOK:'),
//                 Text('1 hr'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.restaurant, color: Colors.green[500]),
//                 Text('FEEDS:'),
//                 Text('4-6'),
//               ],
//             ),
//           ],
//         ),
//       )
//     );

    // var leftColumn = Container(
    //   padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
    //   child: Column(
    //     children: [
    //       titleText,
    //       subTitle,
    //       ratings,
    //       iconList,
    //     ],
    //   ),
    // );

    // var mainImage = Image.asset(
    //   'images/pavlova.jpg',
    //   fit: BoxFit.cover,
    // );

    // var packedRow = Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     Icon(Icons.star, color: Colors.green[500]),
    //     Icon(Icons.star, color: Colors.green[500]),
    //     Icon(Icons.star, color: Colors.green[500]),
    //     Icon(Icons.star, color: Colors.black),
    //     Icon(Icons.star, color: Colors.black),
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: card,
        // child: stack,
        // child: ListView(
        //   children: list,
        // ),
        // child: buildGrid(),
        // child: container,
        // child: Container(
        //   margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
        //   height: 600.0,
        //   child: Card(
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           width: 440.0,
        //           child: leftColumn,
        //         ),
        //         mainImage,
        //       ]
        //     ),
        //   ),
        // ),
        // child: packedRow,
        // child: Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       child: Image.asset('images/pic4.jpg'),
        //     ),
        //     Expanded(
        //       // flex: 2,
        //       child: Image.asset('images/pic5.jpg'),
        //     ),
        //     Expanded(
        //       child: Image.asset('images/pic6.jpg'),
        //     ),
        //   ],
        // ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Image.asset('images/pic1.jpg'),
        //     Image.asset('images/pic2.jpg'),
        //     Image.asset('images/pic3.jpg'),
        //   ],
        // )
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Image.asset('images/pic1.jpg'),
        //     Image.asset('images/pic2.jpg'),
        //     Image.asset('images/pic3.jpg'),
        //   ],
        // )
        // child: Text('Hello World')
      ),
    );
  }
}
