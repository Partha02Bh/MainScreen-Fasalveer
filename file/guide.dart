import 'package:flutter/material.dart';
import 'package:mainpage/camera.dart';
import 'package:mainpage/main.dart';

// void main() {
//   runApp(MaterialApp(
//     home: PlantationGuidePage(),
//   ));
// }

class PlantationGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFDFFC6),
      appBar: AppBar(
        title: Text(
          'Plantation Guide',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFDFFC6),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                // First Box
                buildPlantationBox(
                  context,
                  'Wheat',
                  'assets/images/wheat.png',
                  'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
                ),
                SizedBox(height: 20), // Space between boxes
                // Second Box
                buildPlantationBox(
                  context,
                  'Sugarcane',
                  'assets/images/sugercane.png', // Replace with your image asset path
                  'Sugarcane is a tropical plant known for its high sugar content. It thrives in warm climates and requires regular irrigation and nutrient-rich soil for optimal growth.',
                ),
                SizedBox(height: 20), // Space between boxes
                // Third Box
                buildPlantationBox(
                  context,
                  'Potato',
                  'assets/images/potato.png', // Replace with your image asset path
                  'Potatoes are a versatile crop that grows well in cool climates. They need well-drained soil and consistent watering to produce high-quality tubers.',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFFDFFC6),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF132909),
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            HomePage(), // Your Home Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);
                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            CaptureImagePage(), // Your Capture Image Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);
                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            StorePage(), // Your Store Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);
                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      color: Color(0xFF132909),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.storefront,
                      color: Colors.yellow,
                      size: 35,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FavoritePage(), // Your Favorite Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);
                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PlantationGuideScreen(), // Your Profile Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);
                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build a plantation box
  Widget buildPlantationBox(BuildContext context, String title, String imagePath, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(title: title),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFDFFC6),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 60,
                  width: 60,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1), // Space between the title and the horizontal line
            Divider(
              color: Colors.grey, // Color of the horizontal line
              thickness: 0, // Thickness of the horizontal line
            ),
            SizedBox(height: 1), // Space between the line and the description
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details about $title'),
      ),
    );
  }
}


// class PlantationGuideScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFFDFFC6),
//       appBar: AppBar(
//         title: Text(
//           'Plantation Guide',
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFFDFFC6),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         automaticallyImplyLeading: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 0),
//                 // First Box
//                 buildPlantationBox(
//                   context,
//                   'Wheat',
//                   'assets/images/wheat.png',
//                   'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Second Box
//                 buildPlantationBox(
//                   context,
//                   'Sugercane',
//                   'assets/images/sugercane.png', // Replace with your image asset path
//                   'Rice is a crucial cereal crop, requiring ample water and warmth. Ideal in flooded or saturated soils, it demands a warm growing season for optimal yield.',
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Third Box
//                 buildPlantationBox(
//                   context,
//                   'Potato',
//                   'assets/images/potato.png', // Replace with your image asset path
//                   'Corn thrives in well-drained, fertile soils and requires full sun. It is a warm-season crop, requiring consistent watering and nitrogen-rich fertilizer for best results.',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFFFDFFC6),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF132909),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             HomePage(), // Your Home Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);
//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.account_balance_wallet,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             CaptureImagePage(), // Your Capture Image Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);
//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             StorePage(), // Your Store Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);
//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.yellow),
//                       color: Color(0xFF132909),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.storefront,
//                       color: Colors.yellow,
//                       size: 35,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.notification_add,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             FavoritePage(), // Your Favorite Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);
//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             PlantationGuideScreen(), // Your Profile Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);
//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to build a plantation box
//   Widget buildPlantationBox(BuildContext context, String title, String imagePath, String description) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(title: title),
//           ),
//         );
//       },
//       child: Container(
//         height: 160,
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFFDFFC6),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey, width: 0),
//           boxShadow: [
//             // BoxShadow(
//             //   color: Colors.grey,
//             //   offset: Offset(0, 4),
//             //   blurRadius: 10,
//             // ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   imagePath,
//                   height: 60,
//                   width: 60,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 1),
//             Padding(
//               padding: const EdgeInsets.only(left: 8),
//               child: Text(
//                 description,
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.grey[700],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   final String title;

//   DetailPage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('Details about $title'),
//       ),
//     );
//   }
// }



class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Page"),
      ),
      body: Center(
        child: Text("Details of the weather"),
      ),
    );
  }
}



// Add StorePage, FavoritePage, ProfilePage similarly
class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class BoxPage extends StatelessWidget {
  final String title;
  BoxPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title Content')),
    );
  }
}
