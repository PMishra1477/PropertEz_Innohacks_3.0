import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:propert_ez/ui/components/MyCard.dart';

// Import the FavoriteScreen



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF011019),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              /*padding: EdgeInsets.fromLTRB(30, 30, 34.3, 19),
              width: double.infinity,*/
              color: const Color(0xFF011019),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/logo4.png',
                      width: 140,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/dp.png'),
                      ),

                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/bell.png',
                    width: 21.5,
                    height: 22.5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15.2,0, 15.2, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF012940),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/images/Search.png'
                    ),
                  ),
                   const Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            fontFamily: 'Commissioner',
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Color(0xFF748C99),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                    width: 145,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF012940),
                    ),
                    child: const Center(
                      child: Text(
                        'Flat',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                    width: 145,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFF012940),
                    ),
                    child: const Center(
                      child: Text(
                        'PG’s',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20, top: 15),
                    child: MyCard()
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recently Viewed',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(right: 20, top: 15),
                      child: MyCard()
                  );
                },
              ),
            ),
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      elevation: 30 ,
      backgroundColor: Color(0xFF012940),
      items: [
        //home
        BottomNavigationBarItem(
            icon:
            Image.asset('assets/images/home.png'),
          label: ""
        ),

        //logs
        BottomNavigationBarItem(
          icon:
          Image.asset('assets/images/logs.png'),
            label: ""
        ),

        //favourite
        BottomNavigationBarItem(
          icon:
          Image.asset('assets/images/Vector.png'),
            label: ""
        )
      ],
       onTap: _onItemTapped, // Add onTap function

    ),
    );
  }
}


//
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       if (_selectedIndex == 2) {
//         // Navigate to the FavoriteScreen when the vector image is clicked
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF011019),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: const Color(0xFF011019),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 40),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Image.asset(
//                       'assets/images/logo4.png',
//                       width: 140,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.2),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(right: 10),
//                         width: 30,
//                         height: 30,
//                         child: Image.asset('assets/images/dp.png'),
//                       ),
//                       const Text(
//                         'Welcome Back!',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Image.asset(
//                     'assets/images/bell.png',
//                     width: 21.5,
//                     height: 22.5,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               padding: const EdgeInsets.fromLTRB(15.2,0, 15.2, 0),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: const Color(0xFF012940),
//               ),
//               child:  Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 10),
//                     child: Image.asset(
//                         'assets/images/Search.png'
//                     ),
//                   ),
//                   const Expanded(
//                     child: SizedBox(
//                       height: 45,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Search...',
//                           hintStyle: TextStyle(
//                             fontFamily: 'Commissioner',
//                             fontWeight: FontWeight.normal,
//                             fontSize: 16,
//                             color: Color(0xFF748C99),
//                           ),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                     width: 145,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: const Color(0xFF012940),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'Flat',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
//                     width: 145,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: const Color(0xFF012940),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'PG’s',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 'Popular',
//                 style: TextStyle(
//                   fontFamily: 'Montserrat',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//
//             Container(
//               height: 300,
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//
//                 itemCount: 10,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                       margin: EdgeInsets.only(right: 20, top: 15),
//                       child: MyCard()
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 'Recently Viewed',
//                 style: TextStyle(
//                   fontFamily: 'Montserrat',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//
//             Container(
//               height: 300,
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//
//                 itemCount: 10,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                       margin: EdgeInsets.only(right: 20, top: 15),
//                       child: MyCard()
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 30 ,
//         backgroundColor: Color(0xFF012940),
//         items: [
//           //home
//           BottomNavigationBarItem(
//               icon:
//               Image.asset('assets/images/home.png'),
//               label: ""
//           ),
//
//           //logs
//           BottomNavigationBarItem(
//               icon:
//               Image.asset('assets/images/logs.png'),
//               label: ""
//           ),
//
//           //favourite
//           BottomNavigationBarItem(
//               icon:
//               Image.asset('assets/images/Vector.png'),
//               label: ""
//           )
//         ],
//         onTap: _onItemTapped, // Add onTap function
//       ),
//     );
//   }
// }
//
