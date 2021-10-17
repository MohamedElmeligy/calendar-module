//Menna & Youmna
import 'package:flutter/material.dart';
import 'package:calendar_module/main.dart';

class SlotTile extends StatefulWidget {
  const SlotTile({Key? key}) : super(key: key);

  @override
  _SlotTileState createState() => _SlotTileState();
}

class _SlotTileState extends State<SlotTile> {
  List<String> patients = ["yomna"];

  void addPatient() {
    patients.add("patient");
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      child: patients.isEmpty
          ? Center(
              child: IconButton(
                onPressed: addPatient,
                icon: const Icon(
                  Icons.add_circle_rounded,
                  color: Colors.pink,
                  size: 50,
                ),
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: patients.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Text(patients[index]),
                    index == 0
                        ? IconButton(
                            onPressed: addPatient,
                            icon: const Icon(
                              Icons.add_box_rounded,
                              color: Colors.black,
                              size: 45,
                            ),
                          )
                        : Container()
                  ],
                );
              }),
/*
 Align( alignment: Alignment.bottomRight,
       child: IconButton(
         onPressed: addPatient,
          icon: const Icon(Icons.add_box_rounded, color: Colors.pink, size: 45, ),
          ) ,
       )
    */
    );
  }
}
