import 'package:flutter/material.dart';
import 'package:mi_card/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    List<Widget> _widgetOptions = <Widget>[
      AhsanBusinessCard(),
      Text(
        "Flutter provides a lot of widgets for making almost any type of application and it also provides animation support which you can use for your application. Moreover, Flutter is powered by Dart",
        textAlign: TextAlign.center,
        style: optionStyle,
      ),
      Text(
        'Blank Page For Assignment 4',
        textAlign: TextAlign.center,
        style: optionStyle,
      ),
    ];
    // void bottomNavPressed(int index) {
    //
    //     setState(() {
    //       selectedIndex = index;
    //   });
    // }

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      // ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'About Me',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Motivation',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Assignment 4',
            ),
          ],
          currentIndex: selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: (index) {
            print("selected Index =$selectedIndex");
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        //backgroundColor: Colors.teal,
        body: Center(
          child: _widgetOptions.elementAt(selectedIndex),
        ),
        //AhsanBusinessCard(),
      ),
    );
  }
}

class AhsanBusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/ahsan.jpeg'),
            //  backgroundColor: Colors.white,
          ),
          Text(
            "Ahsan Munir",
            style: TextStyle(
                //     color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 20.0),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                // color: Colors.teal.shade100,
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 250.0,
            height: 10.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.call,
                //color: Colors.teal,
              ),
              title: Text(
                '+49 176 576 326 73',
                style: TextStyle(
                    //color: Colors.teal,
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.email,

                //  color: Colors.teal,
              ),
              title: Text(
                'ahsan.munir711@gmail.com',
                style: TextStyle(
                    //color: Colors.teal,
                    fontSize: 20.0),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.email,
                //color: Colors.teal,
              ),
              title: Text(
                'https://www.linkedin.com/in/ahsandev/',
                style: TextStyle(
                    //color: Colors.teal,
                    fontSize: 20.0),
              ),
            ),
          ),
          Material(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            elevation: 5.0,
            child: MaterialButton(
              onPressed: () {
                print("I have been pressed");
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                }
              },
              minWidth: 50.0,
              height: 42.0,
              child: Text(
                'Change Theme',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
