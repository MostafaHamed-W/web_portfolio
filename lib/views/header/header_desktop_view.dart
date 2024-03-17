import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            const Color(0xffebebec),
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: 670,
      width: Sizes.defaultWidth,
      // color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: HeaderBody(
            isSmall: isSmall,
          )),
          // const SizedBox(width: 50),
          Image.asset(
            'assets/images/pic.png',
            width: isSmall ? imageWidth : 500,
          ),
          // const SizedBox(width: 40),
        ],
      ),
    );
  }
}
