import 'package:flutter/material.dart';

class Historywidget extends StatelessWidget {
  final String nama;
  final String username;
  final String photo;
  final String coment;
  final String user;
  final bool isLiked;
  final VoidCallback favorites;

  Historywidget({
    required this.nama,
    required this.username,
    required this.photo,
    required this.coment,
    required this.isLiked,
    required this.favorites,
     required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(photo),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      username,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Image.asset(
            photo,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Text(
              coment,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: favorites,
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.black,
                    size: 28,
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    color: Colors.black,
                    size: 28,
                  ),
                ),

                Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}