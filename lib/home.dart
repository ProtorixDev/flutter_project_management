import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_management_app/sheetview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget                                                                                                                                                    {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      allowFontScaling: true,
      designSize: Size(454, 970),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String profilePic = "https://img.freepik.com/free-photo/happy-african-american-child-boy-smiling_263368-10.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent1 = "https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent2 = "https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent3 = "https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String recent4 = "https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String active1 = "https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";
  String active2 = "https://img.freepik.com/free-photo/happy-african-american-child-boy-smiling_263368-10.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634";


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Color(0xfff6f7ef),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ) + EdgeInsets.only(
                top: ScreenUtil().setHeight(50.0)
            ),
            child: Row(
              children: [
                Container(
                  height: ScreenUtil().setHeight(40.0),
                  width: ScreenUtil().setWidth(40.0),
                  decoration: BoxDecoration(
                      color: Color(0xff4d3a58).withOpacity(0.1),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(profilePic))
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(15.0),),
                Text("Hi, Tomas!",
                style: GoogleFonts.poppins(
                  color: Color(0xff4d3a58).withOpacity(0.7),
                  fontSize: ScreenUtil().setSp(14.0),
                ),),
                Spacer(),
                Stack(
                  children: [
                    Icon(Icons.notifications_none, color: Color(0xff4d3a58), size: ScreenUtil().setHeight(30.0),),
                    Positioned(
                      right: 2,
                      top: 3,
                      child: Container(
                        height: ScreenUtil().setHeight(10.0),
                        width: ScreenUtil().setWidth(10.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xffedefdf))
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(30.0),),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ),
            child: Text("You've got",
              style: GoogleFonts.poppins(
                color: Color(0xff4d3a58),
                fontWeight: FontWeight.w700,
                fontSize: ScreenUtil().setSp(24.0),
              ),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ),
            child: Text("6 tasks today",
              style: GoogleFonts.poppins(
                color: Color(0xffd43b24),
                fontWeight: FontWeight.w700,
                fontSize: ScreenUtil().setSp(24.0),
              ),),
          ),
          SizedBox(height: ScreenUtil().setHeight(30.0),),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(15.0),
                  vertical: ScreenUtil().setHeight(5.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey, size: ScreenUtil().setHeight(20.0),),
                    SizedBox(width: ScreenUtil().setWidth(10.0),),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.red,
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.none,
                            fontSize: ScreenUtil().setSp(14.0),
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(14.0),
                              color: Colors.grey
                          ),
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(30.0),),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ),
            child: Row(
              children: [
                Text("Recent chats",
                  style: GoogleFonts.poppins(
                    color: Color(0xff4d3a58),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(18.0),
                  ),),
                Spacer(),
                Text("See all",
                  style: GoogleFonts.poppins(
                    color: Color(0xff4d3a58).withOpacity(0.7),
                    fontSize: ScreenUtil().setSp(12.0),
                  ),),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(15.0),),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20.0),
            ),
            child: Wrap(
              spacing: 20.0,
              children: [
                Stack(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(40.0),
                      width: ScreenUtil().setWidth(40.0),
                      decoration: BoxDecoration(
                          color: Color(0xff4d3a58).withOpacity(0.1),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(recent1))
                      ),
                    ),
                    Positioned(
                      right: 1,
                      top: 2,
                      child: Container(
                        height: ScreenUtil().setHeight(10.0),
                        width: ScreenUtil().setWidth(10.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(40.0),
                      width: ScreenUtil().setWidth(40.0),
                      decoration: BoxDecoration(
                          color: Color(0xff4d3a58).withOpacity(0.1),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(recent2))
                      ),
                    ),
                    Positioned(
                      right: 1,
                      top: 2,
                      child: Container(
                        height: ScreenUtil().setHeight(10.0),
                        width: ScreenUtil().setWidth(10.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: ScreenUtil().setHeight(40.0),
                  width: ScreenUtil().setWidth(40.0),
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
                  height: ScreenUtil().setHeight(40.0),
                  width: ScreenUtil().setWidth(40.0),
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
                  height: ScreenUtil().setHeight(40.0),
                  width: ScreenUtil().setWidth(40.0),
                  decoration: BoxDecoration(
                    color: Color(0xff4d3a58).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text("+5",
                    style: GoogleFonts.poppins(
                      color: Color(0xff4d3a58),
                      fontSize: ScreenUtil().setSp(12.0)
                    ),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(30.0),),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0),
                    ) + EdgeInsets.only(
                      top: ScreenUtil().setHeight(20.0)
                    ),
                    child: Row(
                      children: [
                        Text("Active Projects",
                          style: GoogleFonts.poppins(
                            color: Color(0xff4d3a58),
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(18.0),
                          ),),
                        Spacer(),
                        Text("See all",
                          style: GoogleFonts.poppins(
                            color: Color(0xff4d3a58).withOpacity(0.7),
                            fontSize: ScreenUtil().setSp(12.0),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(10.0),),
                  Expanded(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(10.0),),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(20.0)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                HapticFeedback.lightImpact();
                                sheet();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Colors.grey[300])
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(20.0),
                                    vertical: ScreenUtil().setHeight(20.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Design sprint",
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff4d3a58),
                                              fontWeight: FontWeight.w500,
                                              fontSize: ScreenUtil().setSp(14.0),
                                            ),),
                                          Spacer(),
                                          Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: ScreenUtil().setWidth(30.0),
                                                  right: ScreenUtil().setWidth(5.0),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("40%",
                                                      style: GoogleFonts.poppins(
                                                        color: Color(0xff4d3a58),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: ScreenUtil().setSp(12.0),
                                                      ),),
                                                    LinearProgressIndicator(
                                                      value: 0.4,
                                                      backgroundColor: Colors.red[100],
                                                      minHeight: 5.0,
                                                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("1 d",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: ScreenUtil().setSp(8.0)
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: ScreenUtil().setHeight(20.0),),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("In Progress",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenUtil().setSp(10.0)
                                                ),),
                                            ),
                                          ),
                                          Spacer(),
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              Positioned(
                                                right: 60.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                right: 30.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: ScreenUtil().setHeight(30.0),
                                                width: ScreenUtil().setWidth(30.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: Colors.white)
                                                ),
                                                child: Center(
                                                  child: Text("+2",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: ScreenUtil().setSp(12.0)
                                                    ),),
                                                ),
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(10.0),),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(20.0)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                HapticFeedback.lightImpact();
//                        sheet();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Colors.grey[300])
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(20.0),
                                    vertical: ScreenUtil().setHeight(20.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Wireframes",
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff4d3a58),
                                              fontWeight: FontWeight.w500,
                                              fontSize: ScreenUtil().setSp(14.0),
                                            ),),
                                          Spacer(),
//                                  Expanded(
//                                      child: Padding(
//                                        padding: EdgeInsets.only(
//                                          left: ScreenUtil().setWidth(30.0),
//                                          right: ScreenUtil().setWidth(5.0),
//                                        ),
//                                        child: Column(
//                                          crossAxisAlignment: CrossAxisAlignment.start,
//                                          children: [
//                                            Text("40%",
//                                              style: GoogleFonts.poppins(
//                                                color: Color(0xff4d3a58),
//                                                fontWeight: FontWeight.w500,
//                                                fontSize: ScreenUtil().setSp(12.0),
//                                              ),),
//                                            LinearProgressIndicator(
//                                              value: 0.4,
//                                              backgroundColor: Colors.red[100],
//                                              minHeight: 5.0,
//                                              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
//                                            ),
//                                          ],
//                                        ),
//                                      )),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlueAccent,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("3 d",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: ScreenUtil().setSp(8.0)
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: ScreenUtil().setHeight(20.0),),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("Not yet started",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenUtil().setSp(10.0)
                                                ),),
                                            ),
                                          ),
                                          Spacer(),
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              Positioned(
                                                right: 60.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                right: 30.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: ScreenUtil().setHeight(30.0),
                                                width: ScreenUtil().setWidth(30.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: Colors.white)
                                                ),
                                                child: Center(
                                                  child: Text("+2",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: ScreenUtil().setSp(12.0)
                                                    ),),
                                                ),
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(10.0),),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(20.0)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                HapticFeedback.lightImpact();
                                sheet();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Colors.grey[300])
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(20.0),
                                    vertical: ScreenUtil().setHeight(20.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Design sprint",
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff4d3a58),
                                              fontWeight: FontWeight.w500,
                                              fontSize: ScreenUtil().setSp(14.0),
                                            ),),
                                          Spacer(),
                                          Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: ScreenUtil().setWidth(30.0),
                                                  right: ScreenUtil().setWidth(5.0),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("40%",
                                                      style: GoogleFonts.poppins(
                                                        color: Color(0xff4d3a58),
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: ScreenUtil().setSp(12.0),
                                                      ),),
                                                    LinearProgressIndicator(
                                                      value: 0.4,
                                                      backgroundColor: Colors.red[100],
                                                      minHeight: 5.0,
                                                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("1 d",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: ScreenUtil().setSp(8.0)
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: ScreenUtil().setHeight(20.0),),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10.0),
                                                vertical: ScreenUtil().setWidth(5.0),
                                              ),
                                              child: Text("In Progress",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenUtil().setSp(10.0)
                                                ),),
                                            ),
                                          ),
                                          Spacer(),
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              Positioned(
                                                right: 60.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/young-handsome-happy-surprised-hipster-man-listening-music-with-headphones-black-studio-with-neon-lights_155003-18106.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                right: 30.0,
                                                child: Container(
                                                  height: ScreenUtil().setHeight(30.0),
                                                  width: ScreenUtil().setWidth(30.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff4d3a58).withOpacity(0.1),
                                                      border: Border.all(color: Colors.white),
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage("https://img.freepik.com/free-photo/female-enterpreneur-businesswoman-being-disappointed-with-news-from-colleague-reads-message-smartphone-shocked-recieve-responsibility-prepare-difficult-project-tomorrow-s-meeting_273609-2441.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634"))
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: ScreenUtil().setHeight(30.0),
                                                width: ScreenUtil().setWidth(30.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(color: Colors.white)
                                                ),
                                                child: Center(
                                                  child: Text("+2",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: ScreenUtil().setSp(12.0)
                                                    ),),
                                                ),
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(10.0),),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ],
      ),

    );
  }

  void sheet() {
    showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          backgroundColor: Color(0xff4d3a58),
          builder: (BuildContext bc) {
            return Container(
              color: Color(0xff4d3a58),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0)
                    ) + EdgeInsets.only(
                      top: ScreenUtil().setHeight(50.0)
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            HapticFeedback.lightImpact();
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white54)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.close_rounded, color: Colors.white, size: ScreenUtil().setHeight(24.0),),
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.more_horiz, color: Colors.white, size: ScreenUtil().setHeight(24.0),),
                      ],
                    ),
                  ),
                  Expanded(child: SheetView()),
                ],
              ),

            );
          }
      );
  }
}