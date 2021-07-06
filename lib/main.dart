import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile List",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 class MainPage extends StatefulWidget {
   @override
   _MainPageState createState() => _MainPageState();
 }

 class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
   late TabController controller;
   @override
   void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

   @override
   Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlays(SystemUiOverlayStyle().copyWith
   //    (statusBarColor: Colors.blue ));
     return Scaffold(
       appBar: AppBar(
         title: TabBar(
         //  indicator: EdgeInsets.symmetric(horizontal: 16.0),
           controller: controller,
           labelColor: Colors.white,
           unselectedLabelColor: Colors.white,
           tabs:<Widget> [
             Tab(icon: Icon(Icons.home)),
             Tab(icon: Icon(Icons.person_add)),
             Tab(icon: Icon(Icons.notifications)),
             Tab(icon: Icon(Icons.clear_all)),
           ],
         ),
       ),
       body: TabBarView(
         controller: controller,
         children: <Widget>[
           HomePage(),
           HomePage(),
           HomePage(),
           HomePage(),
         ],
       ),
     );
   }
 }
class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

List names =["Junaid","Ahmed khan", "Aqib", "zaid","saqib","qasim","sohail","saif","adnan","nauman"];
List designations =["pro","data sci","project M","teamleader","developer","designer","marketing","coder","manager","web dev"];




class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget> [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.green,
                            backgroundImage: NetworkImage
                            ("76729750.jpg"),
                          ),
                        ),
                        SizedBox(width: 6.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Text(names[index], style: TextStyle(color: Colors.black,fontSize:
                            18.0,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5.0),
                            Text(designations[index], style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                 /*     child: TextButton(
                        onPressed: (){},
                        //color: Colors.red[200],
                       // shape: RoundedRectangleBorder(
                      //    borderRadius: BorderRadius.circular(20.0), child: null,
                        ),*/
                //        child:  Text("Invite", style: TextStyle(color: Colors.white)),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
