import 'package:flutter/material.dart';
import 'package:xplayer_clone/play_list.dart';

void main (){
  runApp(const MaterialApp(home: HomeScreen(),));
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
    
   
  
  
    int _selectedIndex=0;
   

    
    void itemTapped(int index)
    {
      setState(() {
        _selectedIndex=index;
    
       
        
      });
    }
   
    List page=[
         Scaffold(
      appBar: AppBar(title: const Text('Video'),
      backgroundColor: const Color.fromARGB(221, 41, 39, 39),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.folder)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
      ],
      ),
      body: ListView(
        children: const [
          ListTile (
            leading: Icon(Icons.folder_shared),
            title:  Text('Recent Added'),
           ),
           ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Internal Storage'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Camera'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Download'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Status Download for whatsapp'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Directories'),
          ),

        ],
      ),
     ),
      DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: const Text('Music'),
        backgroundColor: const Color.fromARGB(221, 41, 39, 39),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),         
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],
        bottom: const TabBar(tabs: [
          Tab(text: 'Songs'),
          Tab(text: 'Folders'),
          Tab(text: 'Albums'),
          Tab(text: 'Artists'),
        ],
        indicatorColor: Colors.white,
        ),
        ),    
        body:  TabBarView(children: [
                const Center(child: Text('Songs')),
                  ListView(children: const[
                    ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Download'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Sent'),
            trailing: Icon(Icons.more_vert_sharp),
          ), ListTile (
            leading: Icon(Icons.folder),
            title:  Text('Whatsapp Audio')),
                  ],),
                  ListView(children: const [
                        ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Download'),
                          subtitle: Text('<unknown>'),
                          trailing: Icon(Icons.more_vert),
                        ),
                         ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Unknown'),
                          subtitle: Text('<unknown>'),
                          trailing: Icon(Icons.more_vert),
                        ),
                         ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('WhatsApp Audio'),
                          subtitle: Text('<unknown>'),
                          trailing: Icon(Icons.more_vert),
                        ),

                  ],),
                  ListView(
                    children: const [
                             ListTile(
                         
                          title: Text('<Unknown'),
                          
                          trailing: Icon(Icons.more_vert),
                        ),
                         ListTile(
                       
                          title: Text('Unknown'),
                          
                          trailing: Icon(Icons.more_vert),
                        ),
                    ],
                  ),
                
        ]),    
      ),
    ),
       const PlayList(),
             ];


  @override
  Widget build(BuildContext context) {
     
    
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.video_library),label: 'Video',),
          BottomNavigationBarItem(icon: Icon(Icons.queue_music),label: 'Music'),
          BottomNavigationBarItem(icon: Icon(Icons.playlist_play_rounded),label: 'Playlist'),          
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: itemTapped,
      iconSize: 30,
      showUnselectedLabels: true,
      selectedItemColor: const Color.fromARGB(255, 24, 197, 30),
      ),
      body: page[_selectedIndex],
      
    );
  }
}