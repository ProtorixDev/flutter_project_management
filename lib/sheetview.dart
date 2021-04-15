import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(454, 970),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SheetView(),
      ),
    );
  }
}

class SheetView extends StatefulWidget {

  @override
  _SheetViewState createState() => _SheetViewState();
}

class _SheetViewState extends State<SheetView> {

  String recent1 = "https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent2 = "https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent3 = "https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent4 = "https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(30.0)
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(30.0),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0),
              ),
              child: Text("Design sprint",
                style: GoogleFonts.poppins(
                  color: Color(0xff4d3a58),
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(26.0),
                ),),
            ),
            SizedBox(height: ScreenUtil().setHeight(30.0),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("In Progress",
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(12.0),
                        ),),
                      Spacer(),
                      Text("40%",
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(12.0),
                        ),),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(10.0),),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: Colors.grey[300],
                      minHeight: 5.0,
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(50.0),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0)
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                        shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.date_range_outlined, color: Color(0xff4d3a58), size: ScreenUtil().setHeight(24.0),),
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(15.0),),
                  Text("Nov 12, at 9:00 AM",
                    style: GoogleFonts.poppins(
                      color: Color(0xff4d3a58),
                      fontSize: ScreenUtil().setSp(14.0),
                    ),),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(50.0),),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20.0)
              ),
              child: Text("Overview",
                style: GoogleFonts.poppins(
                  color: Color(0xff4d3a58),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(18.0),
                ),),
            ),
            SizedBox(height: ScreenUtil().setHeight(10.0),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0)
              ),
              child: Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                style: GoogleFonts.poppins(
                  color: Color(0xff4d3a58).withOpacity(0.7),
                  fontSize: ScreenUtil().setSp(14.0),
                ),),
            ),
            SizedBox(height: ScreenUtil().setHeight(50.0),),
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(20.0)
              ),
              child: Text("Members",
                style: GoogleFonts.poppins(
                  color: Color(0xff4d3a58),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(18.0),
                ),),
            ),
            SizedBox(height: ScreenUtil().setHeight(10.0),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0),
              ),
              child: Wrap(
                spacing: 20.0,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(50.0),
                    width: ScreenUtil().setWidth(50.0),
                    decoration: BoxDecoration(
                        color: Color(0xff4d3a58).withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(recent1))
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(50.0),
                    width: ScreenUtil().setWidth(50.0),
                    decoration: BoxDecoration(
                        color: Color(0xff4d3a58).withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(recent2))
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(50.0),
                    width: ScreenUtil().setWidth(50.0),
                    decoration: BoxDecoration(
                        color: Color(0xff4d3a58).withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(recent3))
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(50.0),
                    width: ScreenUtil().setWidth(50.0),
                    decoration: BoxDecoration(
                        color: Color(0xff4d3a58).withOpacity(0.1),
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(recent4))
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(50.0),
                    width: ScreenUtil().setWidth(50.0),
                    decoration: BoxDecoration(
                      color: Color(0xff4d3a58).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text("+",
                        style: GoogleFonts.poppins(
                            color: Color(0xff4d3a58),
                            fontSize: ScreenUtil().setSp(24.0)
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}