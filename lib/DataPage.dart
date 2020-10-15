import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/note_list.dart';
import 'screens/note_detail.dart';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "मीटर बिल कैलकुलेटर - पुरानी रीडिंग",
      home: NoteList(),
      );
  }
}