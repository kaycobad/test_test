import 'package:flutter/material.dart';
import 'package:test_test/note_details.dart';
import 'providers/note_providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: NoteList(),
    );
  }
}

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NoteListState();
  }
}

class NoteListState extends StatefulWidget {
  @override
  _NoteListStateState createState() => _NoteListStateState();
}

class _NoteListStateState extends State<NoteListState> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(allNotes[index].title);
        },
        itemCount: allNotes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB Print');

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NoteDetail();
          }));
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(
                'Example ABCD',
                style: TextStyle(),
              ),
              subtitle: Text('Dummy Date'),
              trailing: Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                debugPrint('yes its print');
              },
            ),
          );
        });
  }
}
