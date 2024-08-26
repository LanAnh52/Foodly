import 'package:flutter/material.dart';
import 'package:foodly/Page/Account/signup.dart';


class SocialLogin extends StatelessWidget {
  const SocialLogin ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
       Container(
          child: Row(
            children: [
              //Google
              Expanded(
                child:Container(
                  height: 1, 
                  color: const Color.fromARGB(255, 158, 156, 156),
                )
              ),
          
              const Text(
                '     Đăng nhập bằng cách khác     ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
          
              //Phone
              Expanded(
                child: Container(
                height: 1, 
                color: Color.fromARGB(255, 158, 156, 156),
                
                )
              ),
            ],
          ),
        ),


        const SizedBox(height: 17),
        Container(
          width: MediaQuery.of(context).size.width *0.8,
          child: Row(
            children: [
              //Google
              Expanded(
                child:Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: 
                  Image.asset("images/google.png", height: 40,),
                )
              ),
          
              const SizedBox(width: 20),
          
              //Phone
              Expanded(
                child:Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: 
                  Image.asset("images/phone.png", height: 40,),
                )
              ),

              const SizedBox(width: 20),

               Expanded(
                child:Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                      )
                    ]
                  ),
                  child: 
                  Image.asset("images/Facebook.png", height: 40,),
                )
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Bạn chưa có tài khoản?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              GestureDetector (
                onTap: () {
                  Navigator.of(context).push(                
                    MaterialPageRoute(
                      builder: (context) => const Signup(),
                    ),
                  );
                },
                child: const Text(
                  " Đăng kí",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
