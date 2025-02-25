import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/views/portfolio/portfolio_view.dart';

class DrawerMobileView extends StatelessWidget {
  const DrawerMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          const SizedBox(height: 20),
          for (var item in navigationItems)
            Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 20),
                  title: Text(
                    item.text,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    scrollController.animateTo(item.position,
                        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
                  },
                ),
                const Divider(endIndent: 20, indent: 20),
              ],
            )
        ],
      ),
    );
  }
}
