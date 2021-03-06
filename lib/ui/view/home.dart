import 'package:auhla/core/viewmodel/data.dart';
import 'package:auhla/ui/resources/strings.dart';
import 'package:auhla/ui/widget/cardStackWidget.dart';
import 'package:auhla/ui/widget/dragTargetWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Provider.of<Data>(context).initializeDraggableList();
          Provider.of<Data>(context).changeSuccessDrop(false);
        },
        elevation: 20.0,
        label: Text('Reiniciar'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 12.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CardStackWidget(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: DragTargetWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
