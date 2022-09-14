import 'package:flutter/material.dart';
import 'package:shared_proferences_3/pages/sign_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal.shade600,
      body: ListView(
        children: [
          Expanded(flex: 2,
              child: Container(padding: EdgeInsets.only(left: 30),
                color: Colors.teal.shade600,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),

                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/images/img.jpg'),fit: BoxFit.cover),
                      ),
                    ),
                    Container(),
                    SizedBox(height: 20,),
                    Text('Welcome',style: TextStyle(color: Colors.teal.shade300),),
                    SizedBox(height: 5,),
                    Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 40,)
                  ],
                ),
              )),

          Expanded(flex: 5,
                child: Container(padding: EdgeInsets.only(left: 30,top: 50,right: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40),),color: Colors.white),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      TextField(cursorColor: Colors.white,style: TextStyle(fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none

                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: 40,),
                      Text('Password',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      TextField(cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                          hintStyle: TextStyle(color: Colors.grey.shade300),
                          border: InputBorder.none
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: 40,),
                      Center(
                        child: Text('Forget Password ?',style: TextStyle(color: Colors.grey.shade300),),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Container(height: 50,
                         width: double.infinity,
                         // margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.teal),
                        child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(height: 1,
                            color: Colors.grey.shade200,
                            ),
                          ),
                          Container(padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text('OR',style: TextStyle(color: Colors.grey.shade300),),
                          ),
                          Expanded(child: Container(
                            height: 1,
                            color: Colors.grey.shade200,
                          ))
                        ],
                      ),
                      SizedBox(height: 40,),
                    Row(
                      children: [
                        SizedBox(width: 100,),
                        Text('f',style: TextStyle(color: Colors.blue.shade600,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(width: 40,),
                        Image(
                          height: 15,
                            width: 15,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img.png')),
                        SizedBox(width: 40,),
                        Image(
                            height: 15,
                            width: 15,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_1.png')),

                      ],
                    ),
                      SizedBox(height: 20,),
                      Row(children: [SizedBox(width: 60,),
                        Text('Don`t have an account ?',style: TextStyle(color: Colors.grey.shade300),),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, SignPage.id);
                        }, child: Text('SignUp',style: TextStyle(color: Colors.teal),))

                        
                      ],)
                    ],
                  ),
                ),
              )

        ],
      ),
    );
  }
}
