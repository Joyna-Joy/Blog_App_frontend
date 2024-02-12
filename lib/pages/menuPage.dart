import 'package:blog_app_frontend/Service/blogService.dart';
import 'package:blog_app_frontend/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email="",password="";
  TextEditingController email1=new TextEditingController();
  TextEditingController pass1=new TextEditingController();

  void LoginApiService() async{
    final responce=await BlogApiService().loginApi(email1.text, pass1.text);
    if(responce["status"]=="success")
    {
      String userId=responce["userdata"]["_id"].toString();
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("userId", userId);
      print("successfully Login:"+userId);
    }
    else if(responce["status"]=="Invalid Email")
    {
      print("Invalid Email");
    }
    else
      {
        print("Invalid Password or Email");
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 60,),
              TextField(
                controller: email1,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter valid Email",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: pass1,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 25,),
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
                    onPressed:LoginApiService, child:Text("Log In")),
              ),
              SizedBox(height: 25,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                    }, child:Text("Register")),
              ),
                ],
          ),
        ),
      ),

    );
  }
}