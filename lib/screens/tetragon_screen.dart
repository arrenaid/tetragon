import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetragon/main.dart';

import '../widgets/rect_painter.dart';

class TetragonScreen extends ConsumerWidget {
  const TetragonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final first = ref.watch(firstProvider);
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.white38,
                child: Stack(
                  children: [
                    Align(
                      alignment: const FractionalOffset(0.05, 0.05),
                      child: Container(
                        width: 102,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      CupertinoIcons.arrow_turn_up_left)),
                            ),
                            const VerticalDivider(
                              width: 2,
                              thickness: 2,
                              indent: 8,
                              endIndent: 8,
                            ),
                            SizedBox(
                                width: 50,
                                height: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        CupertinoIcons.arrow_turn_up_right))),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const FractionalOffset(0.5, 0.4),
                      child: Text(
                        first.toString(),
                        style:
                        TextStyle(fontSize: 50, color: Colors.deepPurple),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Tetragon',
                        style:
                            TextStyle(fontSize: 50, color: Colors.deepPurple),
                      ),
                    ),
                    ///
                    Align(
                      alignment: const FractionalOffset(0.5, 0.5),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3)),
                          width: 300, height: 300,
                          child: CustomPaint(
                            painter: RectPainter()/*..upd(_counter)*/,
                          )),
                    ),

                    ///подсказка
                    Align(
                      alignment: const FractionalOffset(0.5, 0.98),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 20,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text('Сделай нас единым',
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //bottom
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white38),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    //height: 100,
                    padding: const EdgeInsets.all(10),
                    child: Center(
                        child: Column(
                      children: [
                        Icon(CupertinoIcons.delete),
                        Text(
                          'Delete',
                        ),
                      ],
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
