import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const EditNoteView();
            }),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFCD7B),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "Bulid your Career with Abdallah Mostafa",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                ),
                child: Text(
                  'May21 , 2022',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
