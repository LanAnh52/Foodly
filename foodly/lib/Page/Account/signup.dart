import 'package:flutter/material.dart';
import 'package:foodly/Page/Account/login.dart';
import 'package:foodly/Widget/mybutton.dart';
import 'package:foodly/Widget/mytextformfield.dart';

 //or import '../Widget/button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Signup();
  }
}

class _Signup extends State<Signup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordControllor = TextEditingController();
  bool isPass = true;

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
              SizedBox (
                width: double.infinity,
                height: height / 3.5,
                child: Image.asset("images/Logo.png")
              ),
              const SizedBox(height: 25),
              TextFiledInput(
                label: 'Họ và tên',
                textEditingController: nameController, 
                hintText: "Họ và tên", 
                icon: Icons.person, 
              ),
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

              MyButton(onTab: () {}, text: "Đăng kí"),

              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                  "Bạn đã có tài khoản?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector (
                    onTap: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      " Đăng nhập",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ),
    );
  }
}