import 'package:flutter/material.dart';
import 'package:geld_app2/Ui/Widgets/Button.dart';


class intro_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("تطبيق معرفة المصاريف",
        ),
        leading: IconButton(
          onPressed: (){},
          icon:Icon(Icons.menu),
        ),
           bottom: PreferredSize(
            preferredSize: Size(80,80),
              child: Container(
              ),
            ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            Image.asset('images/55.jpg'),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: Button(text:'ابد الان يامعرص' ,
                  color: Colors.deepPurple,
                splashColor: Colors.blue,
                textColor: Colors.black,
                  onPressed:(){
                 Navigator.of(context).pushReplacementNamed('home_screen');
                  } ,)
              //padding: EdgeInsets.symmetric(vertical: 18,horizontal: 160),
            )

          ],
        ),
      ),

    );
  }


}