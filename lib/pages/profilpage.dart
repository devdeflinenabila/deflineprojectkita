import 'package:flutter/material.dart';

class Profilpage extends StatefulWidget {
  Profilpage({super.key});

  @override
  State<Profilpage> createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.cyan, Colors.purple, Colors.pink],
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PROFILE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage('asset/image/kisah2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DEFADMIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "@defmin",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Mengikuti",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "Pengikut",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Container(
                color: Colors.grey[300],
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.play_arrow_outlined, color: Colors.black, size: 28),
                    Icon(Icons.image_outlined, color: Colors.black, size: 28),
                    Icon(Icons.favorite_border, color: Colors.black, size: 28),
                  ],
                ),
              ),


              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(2),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      Image.asset('asset/image/wls1.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls2.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls3.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls3.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls1.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls2.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls2.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls3.jpg', fit: BoxFit.cover),
                      Image.asset('asset/image/wls1.jpg', fit: BoxFit.cover),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}
