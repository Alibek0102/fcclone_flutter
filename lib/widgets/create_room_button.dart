import 'package:flutter/material.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return OutlinedButton(
      onPressed: () {}, 
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(width: 2.0, color: Colors.blueAccent)
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          )
        )
      ),
      child: const Row(
        children: [
          Icon(Icons.video_call),
          const SizedBox(width: 8.0),
          Text("Create\nroom", style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}