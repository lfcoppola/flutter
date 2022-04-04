import 'package:flutter/material.dart';

const primaryColor = Colors.deepPurpleAccent;

void main() => runApp(
      MaterialApp(
        home: Home(),
        theme: ThemeData(
          fontFamily: 'Rubik',
        ),
      ),
    );

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'ID Card',
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/codding.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 30.0,
              color: Colors.white,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Felipe Coppola',
              style: TextStyle(
                  color: primaryColor,
                  letterSpacing: 1.5,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Current Age',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '25',
              style: TextStyle(
                  color: primaryColor,
                  letterSpacing: 1.5,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: primaryColor,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'luizfelipecoppola@gmail.com',
                  style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1.5,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
