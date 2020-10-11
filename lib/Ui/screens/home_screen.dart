import 'package:flutter/material.dart';
import 'package:geld_app2/Method/method.dart';
import 'package:geld_app2/Ui/Widgets/Button.dart';
import 'package:geld_app2/Ui/Widgets/text_field.dart';
import 'package:geld_app2/Ui/screens/money_screen.dart';
import 'package:geld_app2/Model/user_var.dart';

class home_screen extends StatelessWidget {
  @override
  final TextEditingController textcont = new TextEditingController();
  final TextEditingController textcont1 = new TextEditingController();
  DateTime _datetime;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("اضغط على علامة الدولار لرؤية مصاريفك",
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('money_screen');
            },
            icon:Icon(Icons.attach_money),
          ),
          bottom: PreferredSize(
            preferredSize: Size(60,60),
            child: Container(
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/55.jpg'),
                Form(
                  child:Padding (
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: "مالذي قمت بشرائه" ,
                      ),
                      controller:textcont ,
                      validator: (vaule) => vaule.isEmpty ? 'ادخل اي قيمة ':null,
                    ),
                  ),
                ),
                Form(
                  child:Padding (
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child:TextFormField(
                      decoration: InputDecoration(
                        labelText: "hhhhh" ,
                      ),
                      controller:textcont1 ,
                      validator: (vaule) => vaule.isEmpty ? 'ادخل اي قيمة ':null,
                    ),
                  ),
                ),
                //  textfiled(text: text,),
                //   textfiled(text: "قم بادخال المبلغ الذي قمت بصرفه",),
                SizedBox(
                  height: 80,
                  width: 160,
                  child: RaisedButton(
                      child: Text('قم بادخال التاريخ'),
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2021)
                        ).then((value) =>
                        value = _datetime);
                      }
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Button(text: 'سجل',
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  splashColor: Colors.blue,
                  onPressed: (){
                    // String s = textcont.value.text; textcont1.text =s;
                    if (textcont1.text.length>0 && textcont.text.length>0){
                      Method.AAddusr(new user_var(
                          0,textcont1.text,textcont1.text));//المتغيران يجب تغيرها فيما بعد
                      textcont.text=textcont.text;
                      textcont1.text="";
                    }
                  },),



              ]
          ),
        )
    );
  }
}