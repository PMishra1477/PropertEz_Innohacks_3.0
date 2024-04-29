import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:propert_ez/ui/screens/signInScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: const Color(0xFF011019),
      body: Container(
        padding: const EdgeInsets.only(left: 20,top: 50),
        child: Column(
          children: [
            const Row(
              children: [
                Text("<",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                  ),
                ),
                SizedBox(width: 25,),
                Text("Profile",style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                   ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Divider(
                thickness: 2,
                color: Color(0xff2E2E2E),
              ),
            ),

            const SizedBox(height: 40,),

            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/profile.png'),
                  
                  const SizedBox(height: 35,),
                  
                  Row(
                    children: [
                      Image.asset('assets/images/person_profile.png'),
                      const SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start    ,
                        children: [
                          Text("Name",style: TextStyle(
                            color: Color(0xff949494),
                            fontFamily: 'Monterrat',
                            fontSize: 12,
                             ),
                          ),
                          Text("Ajeesh Rawal",style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Monterrat',
                            fontSize: 16,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset('assets/images/phone_profile.png'),
                      const SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start    ,
                        children: [
                          Text("Phone",style: TextStyle(
                            color: Color(0xff949494),
                            fontFamily: 'Monterrat',
                            fontSize: 12,
                          ),
                          ),
                          Text("7393085376",style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Monterrat',
                            fontSize: 16,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset('assets/images/email_profile.png'),
                      const SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start    ,
                        children: [
                          Text("Email",style: TextStyle(
                            color: Color(0xff949494),
                            fontFamily: 'Monterrat',
                            fontSize: 12,
                          ),
                          ),
                          Text("ajeeshrawal3376@gmail.com",style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Monterrat',
                            fontSize: 16,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Divider(
                      thickness: 2,
                      color: Color(0xff2E2E2E),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/images/like_profile.png'),
                        const SizedBox(width: 20,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start    ,
                          children: [
                            Text("Liked Properties",style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'Monterrat',
                              fontSize: 16,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset('assets/images/about_us_profile.png'),
                      const SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start    ,
                        children: [
                          Text("About Us",style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Monterrat',
                            fontSize: 16,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/images/help_profile.png'),
                        const SizedBox(width: 20,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start    ,
                          children: [
                            Text("Help & Support",style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'Monterrat',
                              fontSize: 16,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Divider(
                      thickness: 2,
                      color: Color(0xff2E2E2E),
                    ),
                  ),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/logout_profile.png'),
                        const SizedBox(width: 20,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start    ,
                          children: [
                            Text("Logout",style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: 'Monterrat',
                              fontSize: 16,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
