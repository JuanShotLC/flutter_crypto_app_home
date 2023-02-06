import 'package:flutter/material.dart';
import 'package:flutter_crypto_app_home/components/wallet_item.dart';
import 'package:flutter_crypto_app_home/constants.dart';

class Wallets extends StatelessWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: pageHorizontalPadding),
      child: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(
        children: const [
            WalletItem(
              color: Color(0xff177DFF),
            ),
            WalletItem(
              color: Color(0xffFC9B35),
            ),
            WalletItem(
              color: Color(0xff177DFF),
            ),
        ],
        ),
      ),
    );
  }

}