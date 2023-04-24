import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    print('Build called');
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Page'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        // child: Text('body'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/woman.png'),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 40,
              thickness: 2.5,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Simar Kaur',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[700],
              height: 20,
              thickness: 1.5,
            ),
            Text(
              'Address',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Bhandup - West',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[700],
              height: 20,
              thickness: 1.5,
            ),
            Text(
              'Contact No.',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '9967937724',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[700],
              height: 20,
              thickness: 1.5,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'kaursimar0028@gmail.com',
              style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Divider(
              color: Colors.grey[700],
              height: 20,
              thickness: 1.5,
            ),
            Text(
              'Profile Views',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '$counter',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_down),
            label: 'Dislike',
          )
        ],
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        child: const Text(
          'Click',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
