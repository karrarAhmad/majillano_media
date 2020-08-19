import 'package:flutter/material.dart';
import 'package:majillano_media/screens/constans.dart';

class DetilsScreen extends StatelessWidget {
  final ListViewItems listViewItems;
  DetilsScreen(this.listViewItems);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(listViewItems.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 500,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: Text(
                        listViewItems.name,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: Text(listViewItems.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 117, 117, 117))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 20),
                      child: Text(
                        'صور أخرى',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Image.asset(listViewItems.image),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Image.asset(listViewItems.image),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Image.asset(listViewItems.image),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {
                            _showAlatrDilog(context);
                          },
                          child: Text(
                            'زيارة الموقع الرسمي',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 117, 117, 117),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(20, 50),
            child: IconButton(
                iconSize: 40,
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ],
      ),
    );
  }

  _showAlatrDilog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(' تحذير'),
          content: Text('    تم الضغط على اتصل بنا '),
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
