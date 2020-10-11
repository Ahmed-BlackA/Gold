import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:geld_app2/Model/user_var.dart';
import 'package:geld_app2/Ui/Widgets/text_field.dart';
import 'package:geld_app2/Method/method.dart';
import 'package:geld_app2/DAL/DataBase.dart';

class money_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _money_screen();
  }
}

class _money_screen extends State<money_screen>{

  List users =new List();//عشان ما جبت العناصر من الواجهة
  void refreschscreen() {
    Method.GetAllVar().then((vaules) {
      setState(() {//تعني حدث الواجهة
        users = vaules;
      });
    });
    @override
    void initState(){//عند التشغيل الاولي سوي تحديث لليبانات
      super.initState();
      refreschscreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('home_screen');
          },
        ),
      ),
      body:Column(
        children: [
          new Container(
              child:Expanded(
                  child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int Position){
                        return ListTile(
                            title: Text("adggds"),
                            subtitle: Text("tttmklmlk"),
                            trailing:  Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [IconButton(icon: Icon(Icons.read_more), onPressed: (){
                              Method.DeleteVar(users[Position]["idUser"]);
                              })],
                            ),
                          );

                      })
              )

          ),
        ],
      )
    );

  }

}
