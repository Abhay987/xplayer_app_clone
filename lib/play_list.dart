import 'package:flutter/material.dart';
class PlayList extends StatefulWidget {
  const PlayList({ Key? key }) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
              showMyDialog(){
 showDialog(
          context: context,
           builder: (context)=>AlertDialog(
             title: const Text('Create Playlist'),
             content: const TextField(
               keyboardType: TextInputType.text,
             ),
             actions: [
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: const Text('Cancel')),
                 TextButton(onPressed: (){}, child: const Text('Confirm')),              
             ],
           ));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(          
       appBar: AppBar(title: const Text('Playlist'),
        backgroundColor: const Color.fromARGB(221, 26, 24, 24),),
        body: ListView(
          children: [
             ListTile(
               title: const Text('Playlists'),
               trailing: const Icon(Icons.add),
               onTap: showMyDialog,
             ),
           ListTile (
            leading: const Icon(Icons.heart_broken),
            title: const Text('My Favorites'),
            subtitle:const Text('0 song'),
            trailing: IconButton(onPressed: () {}, icon:const Icon(Icons.more_vert))),
          const ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Abhay'),
            trailing: Icon(Icons.more_vert_sharp),
            subtitle: Text('9 songs,14 videos'),
          ), 
          const ListTile (
            leading: Icon(Icons.queue_music),
            title:  Text('new songs'),
            subtitle: Text('6 songs'),
            trailing: Icon(Icons.more_vert_sharp),
          ), 
          ],
        ),

    );
  }
}