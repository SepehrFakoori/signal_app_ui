import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> listBlogWidget = [
      getBlogPost(imageName: "a.png", title: "Alchemy Pay"),
      getBlogPost(imageName: "c.png", title: "Cosmos"),
      getBlogPost(imageName: "r.png", title: "Ripple"),
      getBlogPost(imageName: "s.png", title: "Safemoon")
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "VIP اخبار و سیگنال های",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Spread Operator
                  ///
                  ...listBlogWidget,

                  ///
                  /// Spread Operator
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "خروج از حساب",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: Size(200.0, 40.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
