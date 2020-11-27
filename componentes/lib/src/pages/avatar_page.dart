import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [

          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.estadao.com.br/fotos/crop/320x300/resources/jpg/0/1/1542051739210.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.white70,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://static.wikia.nocookie.net/spiderman/images/9/9f/Stan-lee-spider-man-wmb-3d-nick-saglimbeni-photography.jpg/revision/latest/scale-to-width-down/340?cb=20120719044541'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200 ),
        ),
      ),
    );

  }
}