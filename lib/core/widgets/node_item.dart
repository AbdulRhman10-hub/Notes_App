import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 30,right: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              subtitle: Text("Abdo Ahmed",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 20)),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.delete,size: 40,),color: Colors.black,),

            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Text("May21 , 2022",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 18),),
            )
          ]
        ),
      ),
    );
  }
}