import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String title, imageURL;

  // Constructor
  ProductPage(this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageURL),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(title),
              ),
              Container(
                child: RaisedButton(
                  child: Text('Delete'),
                  color: Theme.of(context).accentColor,
                  onPressed: ()=> Navigator.pop(context, true),
                ),
              )
            ],
          ),
        ));
  }
}
