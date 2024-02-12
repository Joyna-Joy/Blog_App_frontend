import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
String Name="",Age="",Mobile="",Address="",Pincode="",Email="",Password="";
  TextEditingController name1= new TextEditingController();
  TextEditingController age1= new TextEditingController();
  TextEditingController mobile1= new TextEditingController();
  TextEditingController address1= new TextEditingController();
  TextEditingController pincode1= new TextEditingController();
  TextEditingController email1= new TextEditingController();
  TextEditingController password1= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
          title: Text("Register Page",style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF60FD05),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: name1,
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter your name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: age1,
                  decoration: InputDecoration(
                      labelText: "Age",
                      hintText: "Enter your age",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: mobile1,
                  decoration: InputDecoration(
                      labelText: "Phone no",
                      hintText: "Enter phone no",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: address1,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter your address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: pincode1,
                  decoration: InputDecoration(
                      labelText: "Pincode",
                      hintText: "Enter pincode",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: email1,
                  decoration: InputDecoration(
                      labelText: "Email Id",
                      hintText: "Enter your email id",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: password1,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    height: 45,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF60FD05),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed:(){
                          Name=name1.text;
                          Age=age1.text;
                          Mobile=mobile1.text;
                          Address=address1.text;
                          Pincode=pincode1.text;
                          Email=email1.text;
                          Password=password1.text;
                          setState(() {
                            print("Name :"+Name);
                            print("Age :"+Age);
                            print("Mobile :"+Mobile);
                            print("Address :"+Address);
                            print("Pincode :"+Pincode);
                            print("Email Id : "+Email);
                            print("Password : "+Password);
                          });
                        }, child: Text("Sign Up"))),
                SizedBox(height: 20,),
                SizedBox(
                    height: 45,
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF60FD05),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed:(){Navigator.pop(context);}, child: Text("Back to Menu"))),

              ],
            ),
          ),
        ),

      ),
    );
  }
}