import 'package:flutter/material.dart';
import 'package:majillano_media/screens/constans.dart';
import 'package:majillano_media/screens/contactus_screen.dart';
import 'package:majillano_media/screens/detils_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[850]),
        backgroundColor: Colors.white,
        title: _container(),
        centerTitle: true,
      ),
      endDrawer: _drawer(),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.transparent,
                elevation: 0,
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 6,
                      child: Container(
                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(items[index].image),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 10),
                              child: Transform.translate(
                                offset: Offset(-30, 0),
                                child: RaisedButton(
                                    elevation: 0.5,
                                    child: Text(
                                      'عرض',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 236, 34, 40),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => DetilsScreen(
                                            items[index],
                                          ),
                                        ),
                                      );
                                    },
                                    color: Color.fromARGB(255, 247, 247, 247),
                                    shape: StadiumBorder()),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            items[index].name,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 117, 117, 117),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Transform.translate(
            offset: Offset(0, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    _showAlatrDilog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        shape: BoxShape.circle),
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.lightbulb_outline,
                      size: 50,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showAlatrDilog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.leak_add,
                      size: 50,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showAlatrDilog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        shape: BoxShape.circle),
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.mail_outline,
                      size: 50,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 30,
              ),
              accountName: Text('أسم المسخدم : كرار احمد حسين'),
              accountEmail: Text('karrar.ahmad.hussen@gmail.com')),
          Transform.translate(
            offset: Offset(0, 150),
            child: Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: 200,
              child: FlatButton.icon(
                color: Color.fromARGB(255, 247, 247, 247),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.home,
                  size: 50,
                  color: Colors.grey[700],
                ),
                label: Text(
                  'الرئيسية',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Transform.translate(
            offset: Offset(0, 250),
            child: Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: 200,
              child: FlatButton.icon(
                color: Color.fromARGB(255, 247, 247, 247),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactUsScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.mail_outline,
                  size: 50,
                  color: Colors.grey[700],
                ),
                label: Text(
                  'أتصل بنا',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _container() {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/logo.jpg'), fit: BoxFit.fill),
      ),
    );
  }

  _showAlatrDilog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(' تحذير'),
          content: Text('    تم الضغط على الايقونة '),
          actions: <Widget>[
            FlatButton.icon(
              color: Colors.grey[500],
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.cancel),
              label: Text('خروج'),
            ),
          ],
        );
      },
    );
  }
}
