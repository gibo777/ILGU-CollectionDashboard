import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isContainer1Expanded = false;
  bool _isContainer2Expanded = false;
  bool _isContainer3Expanded = false;
  bool _isContainer4Expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('ILGU ONLINE DASHBOARD MUNICIPALITY OF PATEROS'),
        backgroundColor: Color(0xFF065FB3),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // TODO: Implement notification screen navigation
            },
          ),
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {
              // TODO: Implement inbox screen navigation
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // TODO: Implement user screen navigation
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF065FB3),
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MENU',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 14),
                    Container(
                      width: 125.0,
                      height: 125.0,
                      child: Image.asset(
                        'assets/images/pateroslogo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard, color: Colors.white),
                title: Text('Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Logout',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Confirm Logout'),
                        content: Text('Are you sure you want to log out?'),
                        actions: [
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text('Logout'),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            width: 100.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isContainer1Expanded = !_isContainer1Expanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard, color: Color(0xFF065FB3)),
                    SizedBox(height: 16.0),
                    Text(
                      'REVENUE (MONTH)',
                      style: TextStyle(
                        color: Color(0xFF065FB3),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    _isContainer1Expanded
                        ? Text(
                            'This is the expanded content of dashboard 1. Click again to collapse.',
                            textAlign: TextAlign.center,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            width: 100.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isContainer2Expanded = !_isContainer2Expanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard, color: Color(0xFF065FB3)),
                    SizedBox(height: 16.0),
                    Text(
                      'REVENUE (YEAR)',
                      style: TextStyle(
                        color: Color(0xFF065FB3),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    _isContainer2Expanded
                        ? Text(
                            'This is the expanded content of dashboard 2. Click again to collapse.',
                            textAlign: TextAlign.center,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            width: 100.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isContainer3Expanded = !_isContainer3Expanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard, color: Color(0xFF065FB3)),
                    SizedBox(height: 16.0),
                    Text(
                      'COLLECTED',
                      style: TextStyle(
                        color: Color(0xFF065FB3),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    _isContainer3Expanded
                        ? Text(
                            'This is the expanded content of dashboard 3. Click again to collapse.',
                            textAlign: TextAlign.center,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            width: 100.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isContainer4Expanded = !_isContainer4Expanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard, color: Color(0xFF065FB3)),
                    SizedBox(height: 16.0),
                    Text(
                      'SAFETY INDEX',
                      style: TextStyle(
                        color: Color(0xFF065FB3),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    _isContainer4Expanded
                        ? Text(
                      'This is the expanded content of dashboard 4. Click again to collapse.',
                      textAlign: TextAlign.center,
                    )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}