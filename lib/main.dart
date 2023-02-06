import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crypto_app_home/components/appbar.dart';
import 'package:flutter_crypto_app_home/components/crypto_list.dart';
import 'package:flutter_crypto_app_home/components/for_you_section.dart';
import 'package:flutter_crypto_app_home/components/wallets.dart';

void main() {
  runApp(const CryptoApp());
}


class CryptoApp extends StatelessWidget {
  const CryptoApp({Key? key}) : super(key: key);

    @override 
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    }
}

class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);
    
    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    @override
    void initState() {
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      int selectedIndex = 0;

      // ignore: no_leading_underscores_for_local_identifiers
      void _onItemTapped(int index) {
        setState(() {
          selectedIndex = index;
        });
      }

      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  MAppBar(),
                 SizedBox(
                  height: 30,
                ),
                  Wallets(),
                  ForYouSection(),
                  CryptoList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xff177DFF),
          onTap: _onItemTapped,
          items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home, size: 27),
            label: 'Home',
          ),
                        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag, size: 27),
            label: 'Business',
          ),
                        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart, size: 27),
            label: 'School',
          ),
                        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.link, size: 27),
            label: 'School',
          ),

          ],
        ),
      );
    }
}
