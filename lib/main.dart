import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Посуточная аренда недвижимости',
          titleFontSize: 35.0,
          titleFontWeight: FontWeight.bold,
          appBarHeight: 150.0,
          titleAlignment: TextAlign.left,
          titlePadding: EdgeInsets.only(top: 20.0, left: 16.0),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Где арендовать',
                          style: TextStyle(fontSize: 24.0),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          width: double.infinity, // Full width of the button
                          height: 2.0, // Height of the divider
                          color: Colors.grey,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Когда',
                          style: TextStyle(fontSize: 24.0),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Button action
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Мои заселения',
                          style: TextStyle(fontSize: 24.0),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Предстоящие и предыдущие',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double titleFontSize;
  final FontWeight titleFontWeight;
  final double appBarHeight;
  final TextAlign titleAlignment;
  final EdgeInsetsGeometry titlePadding;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.titleFontSize = 24.0,
    this.titleFontWeight = FontWeight.bold,
    this.appBarHeight = kToolbarHeight,
    this.titleAlignment = TextAlign.center,
    this.titlePadding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: Container(
        padding: titlePadding,
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Text(
          title,
          textAlign: titleAlignment,
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: titleFontWeight,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
