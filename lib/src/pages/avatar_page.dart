import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prueba Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.rollingstone.com/wp-content/uploads/2019/11/Dave-mustaine.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: Text('Froy'),
              backgroundColor: Colors.black26,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar_loading.gif'),
          fadeInDuration: Duration(seconds: 2),
          image: NetworkImage(
              'https://www.rollingstone.com/wp-content/uploads/2019/11/Dave-mustaine.jpg'),
        ),
      ),
    );
  }
}
