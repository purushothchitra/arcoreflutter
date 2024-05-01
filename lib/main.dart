// import 'ar_augmented_images_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
//
// void main() async{
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Augmented Images from Assets',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:const ARAugmentedImagesScreen(),
//     );
//   }
// }
//
//
//
//
import '/homeView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
          GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black),
              titleTextStyle:
              GoogleFonts.nunito(color: Colors.black, fontSize: 20))),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}