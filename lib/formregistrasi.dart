import 'package:flutter/material.dart';
import 'package:latihanflutter2/SecondRoute.dart';
class formregistrasi extends StatefulWidget {
  const formregistrasi({Key? key}) : super(key: key);

  @override
  State<formregistrasi> createState() => _formregistrasiState();
}

class _formregistrasiState extends State<formregistrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myphone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("From Resgistrasi"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: ctrUsername,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Nama Anda'
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: ctrPassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password Anda'
                ),
              ),
              SizedBox(height: 15,),
              Text("Pilih Jenis Kelamin", style: TextStyle(fontSize: 15),),
              SizedBox(height: 15,),
              Row (
                children: [
                  Radio(value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState((){
                        id = 1;
                      });
                    },
                  ),
                  Text("Male")
                ],
              ),
              Row (
                children: [
                  Radio(value: 2,
                    groupValue: id,
                    onChanged: (val){
                      setState((){
                        id = 2;
                      });
                    },
                  ),
                  Text("Female")
                ],
              ),
              Text("Phone :" +myphone),
              ElevatedButton(onPressed: () async{
                final result = await Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => const SecondRoute()),
                );

                print("Hasil Input Phone Number :" + result.toString());
                setState(() {
                  myphone = result.toString();
                });

              }, child: Text("Phone Number")),
              Center(
                  child: Container(
                    width: 150,
                    child: ElevatedButton(onPressed: (){

                    },child: Text("Submit")),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
