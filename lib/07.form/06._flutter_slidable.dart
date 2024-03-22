import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SlidableDemo(),
    );
  }
}


class SlidableDemo extends StatefulWidget {
  const SlidableDemo({super.key});

  @override
  State<SlidableDemo> createState() => _SlidableDemoState();
}

class _SlidableDemoState extends State<SlidableDemo> with SingleTickerProviderStateMixin {
  // final controller = SlidableController(this);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Slidable(

            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.yellow,
              child: Text(
                  '滑动',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            key: ValueKey(0),
            startActionPane: ActionPane(
              motion: ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            endActionPane:  ActionPane(
              motion: ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {
                print('点击');
              }),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  // flex: 2,
                  onPressed: doNothing,
                  backgroundColor: const Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Archive',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: const Color(0xFF0392CF),
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
              ],
            ),

            // The child of the Slidable is what the user sees when the
            // component is not dragged.
          ),
          Icon(Icons.add),
          Theme(data: ThemeData(), child: Icon(Icons.accessibility))
        ],
      ),
    );
  }
}

void doNothing (BuildContext context) {
  print('点击${context}');
}
