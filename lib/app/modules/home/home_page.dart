import 'package:animated_card/animated_card.dart';
import 'package:dio/dio.dart';
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

class _HomePageState extends ModularState<HomePage, HomeController> with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text("Index $index")),
            ),
          ),
          Observer(
            builder: (_){
              if(controller.showContainerDialog == false){
                return Positioned(
                  right: 20,
                  bottom: 20,
                  child: InkWell(
                    onTap: (){
                      controller.showContainer();
                    },
                    child: CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.add),
                    ),
                  ),
                );
              } else {
                return InkWell(
                    onTap: (){
                      controller.hideContainer();
                    },
                    child: Container(
                      color: Colors.white.withOpacity(0.1),
                      width: 1000,
                      height: 1000,
                    )
                );
              }
            },
          ),
          Positioned(
            bottom: 10,
            child: Observer(
              builder: (_) {
                return controller.showContainerDialog == false ? SizedBox() : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedCard(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    direction: AnimatedCardDirection.bottom,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      height: 150,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 10,
                                height: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              SizedBox(width: 10,),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                    onTap: (){},
                                    child: Text("Aqui vai um texto", style: TextStyle(color: Colors.white),)),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 10,
                                height: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                    onTap: (){},
                                    child: Text("Aqui vai um outro texto", style: TextStyle(color: Colors.white),)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text("Favorites"),
              icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              title: Text("Profile"),
              icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}

//class AnimatedContainerWidget extends Ani