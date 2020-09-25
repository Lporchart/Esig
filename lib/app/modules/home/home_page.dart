
import 'package:esig/shared/repository/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    super.initState();
    controller.getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Esig",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red[900], Colors.red[100]],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter)),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Observer(builder: (_) {
                if (controller.listPosts.isEmpty) {
                  return Container();
                }
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.listPosts.length,
                  itemBuilder: (BuildContext context, int index) {
                    String titulo = controller.listPosts[index].title;
                    String body = controller.listPosts[index].body;
                    int userId = controller.listPosts[index].userId;
                    int postId = controller.listPosts[index].id;
                    return GestureDetector(
                      child: Card(
                        margin: EdgeInsets.all(10),
                        elevation: 10,
                        child: ListTile(
                          title: Text("$titulo"),
                          leading: CircleAvatar(
                            child: Text("#$postId"),
                            backgroundColor: Colors.red[900],
                          ),
                        ),
                      ),
                      onTap: () {
                        Modular.to.pushNamed("/detail",
                            arguments: PostModel(
                                body: body,
                                id: postId,
                                title: titulo,
                                userId: userId));
                      },
                    );
                  },
                );
              })
            ]),
          ),
        ));
  }
}
