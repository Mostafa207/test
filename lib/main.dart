import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text1/providers/login_provider.dart';
import 'package:text1/providers/products_provider.dart';
import 'package:text1/screens/login_page.dart';
import 'providers/register_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => ProductsProvider(),),
        ChangeNotifierProvider(create: (context) => RegisterProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //comment for the github
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginPage(),
      ),
    );
  }
}