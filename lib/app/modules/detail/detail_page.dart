import 'package:esig/shared/repository/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detail_controller.dart';

class DetailPage extends StatefulWidget {
  final PostModel postModel;
  const DetailPage({
    Key key,
    @required this.postModel,
  }) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends ModularState<DetailPage, DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalhes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red[900], Colors.red[100]],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: ListTile(
                  title: Text(
                    "Titulo: ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),
                    
                  ),
                  subtitle: Text("${widget.postModel.title}",
                    style: TextStyle(fontSize: 20,),),
                  leading: CircleAvatar(
                    child: Text("#${widget.postModel.id}"),
                    backgroundColor: Colors.red[900],
                    radius: 20,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  elevation: 10,
                  child: ListTile(
                    title: Text(
                      "${widget.postModel.body}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
