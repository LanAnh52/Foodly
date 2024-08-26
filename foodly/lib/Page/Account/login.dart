import 'package:flutter/material.dart';
import 'package:foodly/Widget/mybutton.dart';
import 'package:foodly/Widget/mysocial_login.dart';
import 'package:foodly/Widget/mytextformfield.dart';


class Login extends StatefulWidget {
  const Login({super.key});
@override
  State<StatefulWidget> createState() {

    return _Login();
  }
}

class _Login extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordControllor = TextEditingController();
  bool isPass = true;
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SafeArea(
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

              //buttons
              SizedBox (
                width: double.infinity,
                height: height / 3.5,
                child: Image.asset("images/Logo.png")
              ),
              const SizedBox(height: 25),
              TextFiledInput(
                label: 'Email',
                textEditingController: emailController, 
                hintText: "Email", 
                icon: Icons.email, 
              ),
              TextFiledInput(
                label: 'Mật khẩu',
                textEditingController: passwordControllor, 
                hintText: "Mật khẩu", 
                isPass: isPass,
                icon: Icons.lock, 
                iconPass: true,
                onPressed: (){
                  setState(() {
                    isPass = !isPass;
                  });
                }
              ),

              //Quên mật khẩu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Checkbox(
                        value: rememberPassword, 
                        onChanged: (bool? value){
                          setState(() {
                            rememberPassword = value!;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      const Text(
                        "Nhớ mật khẩu",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                  child: const Text (
                    "Quên mật khẩu?",
                    style: TextStyle (
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 27, 158, 29),
                    ),
                  ),
                ),
                ],
              ),
              ),

              //nút đăng nhập
              MyButton(
                onTab: () {},
                text: "Đăng nhập"
              ),
              
              //social
              const SizedBox(height: 5),
              const SocialLogin(),
                  
            ],
          )
        ),
    );
  }
}