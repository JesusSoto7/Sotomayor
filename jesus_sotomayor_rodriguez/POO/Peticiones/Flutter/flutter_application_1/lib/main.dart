import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlaceHolder',
      home: Scaffold(
        appBar: AppBar(title: Text('User')),
        //backgroundColor: Colors.black,
        body: Column(
          children: [
            Text('id: 1'),
            Text('name: Leanne Graham'),
            Text('username: Bret'),
            Text('email: Sincere@april.biz'),
            Text('address: {'
                'street: Kulas Light,'
                'suite: Apt. 556,'
                'city: Gwenborough,'
                'zipcode: 92998-3874,'
                'geo: {'
                'lat: -37.3159,'
                'lng: 81.1496}'
                '}'),
            Text('phone: 1-770-736-8031 x56442'),
            Text('website: hildegard.org'),
            Text('company: {'
                'name: Romaguera-Crona, '
                'catchPhrase: Muti-layered client-server neural-net, '
                'bs: harness real-time e-markets}'),
            ElevatedButton(onPressed: () {}, child: Text('Buscar USER')),
            Icon(
              Icons.favorite,
              color: Colors.green,
              size: 24.0,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
