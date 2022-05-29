import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
void _executar() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = documentsDirectory.path + "/demo.db";
  
  var database = await openDatabase(path, version: 1,
        onUpgrade: (Database db, int version, int info) async {
       
        },
         onCreate: (Database db, int version) async {
        
       await db.execute (
          "CREATE TABLE Pessoa (id integer primary key autoincrement, nome TEXT, telefone TEXT)");
         });
  
       await database.rawInsert(
        'insert into Pessoa(nome, telefone) values(?,?)',
         ["TIAGO, 999999"]);
  
       await database.rawInsert(
        'insert into Pessoa(nome, telefone) values(?,?)',
         ["ANDRE, 888888"]);
  
        await database.rawInsert(
        'insert into Pessoa(nome, telefone) values(?,?)',
         ["FABIO, 77777777"]);
  
    await database.rawUpdate(
       'update pessoa set nome=?, telefone=? where nome=?',
        ["PEDRO", "888888", "TIAGO"]);
  
    await database.rawDelete(
       'delete from Pessoa where nome=?',
        ["FABIO"]);
  
   var lista = await database.query("Pessoa",
      columns: ["id", "nome", "telefone"],
      where: "id>?",
      whereArgs: ["0"]);
  
  for (var item in lista) {
    setState(() {
      _lista += item['nome']+"\n\";
      });
    }
    
    await database.rawDelete(
    'delete from Pessoa');
    
    await database.close();
  }
  
  String _lista = "";
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TCC',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
  
  mainAxisAligment: MainAxisAlignment.center,
  children: <Widget>[
    new FlatButton(
      child: new Text('executar sqflite'),
      onPressed: () {
        _executar();
      },
    ),
    new Text('$_lista')
  ]
  
}
