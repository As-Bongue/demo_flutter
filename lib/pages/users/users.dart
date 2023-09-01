import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

// permet de controller une zonne de texte
TextEditingController textcontroller = TextEditingController();

late String query = '';
late bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users => $query'),),
      body: Center(
        child: Column(
          children: [
           Row(
            children: [
               Expanded(
                 child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onChanged: (value) { //permet de controller l'etat de changement
                      setState(() {
                        query = value;
                      });
                    },
                    controller: textcontroller,//permet de controller ce champ
                    obscureText: visible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                         onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                         },
                          icon: Icon(visible?Icons.visibility_off:Icons.visibility, color: Colors.deepOrange,)
                        ),
                      contentPadding: const EdgeInsets.only(left: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          width: 1, color: Colors.deepOrange
                        )
                      )
                    ),
                  )
                ),
               ),
                IconButton(
                onPressed: (){
                  setState(() {
                    query = textcontroller.text;
                  });
                },
                icon: Icon(Icons.search, color: Colors.deepOrange,))
            ],
           )
          ],
        )
      ),
    );
  }
}