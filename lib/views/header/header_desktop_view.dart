import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';
import 'package:web_portfolio/utils/hover_extensions.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/footer/widgets/social_info.dart';
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
      decoration: getGraidentBackround(context),
      padding: kScreenPadding,
      height: 670,
      width: Sizes.defaultWidth,
      // color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var social in socials)
                IconButton(
                  color: Colors.black,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () => launchUrlString(social.url),
                  icon: social.icon,
                ).moveUpHover,
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
              child: HeaderBody(
            isSmall: isSmall,
          )),
          // const SizedBox(width: 50),
          Image.asset(
            'assets/images/personal_photo.png',
            width: isSmall ? imageWidth : 450,
          ),
          // const SizedBox(width: 40),
        ],
      ),
    );
  }
}
