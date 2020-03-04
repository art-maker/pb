import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Супер приложение по ПБ и ГО ЧС',
    theme: ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.red,
      buttonTheme: ButtonThemeData(
        padding: EdgeInsets.all(20.0),
        textTheme: ButtonTextTheme.primary,
        buttonColor: Colors.amber[100],
        height: 44,

        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),

    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/reglaments': (context) => Reglaments(),
      '/templates': (context) => Templates(),
      '/checklists': (context) => CheckLists(),
      '/reglamentPB': (context) => ReglamentsPB(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Помощник по ПБ и ГО ЧС'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: RaisedButton(
                // textColor: Colors.white,
                child: Text(
                  'Регламенты работы ПБ и ГО ЧС',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/reglaments');
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: RaisedButton(
                child: Text(
                  'Шаблоны документов по ПБ и ГО ЧС',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/templates');
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: RaisedButton(
                child: Text(
                  'Чек лист проверок по ПБ и ГО ЧС',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/checklists');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Reglaments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Регламенты ГО и ЧС"),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RaisedButton(
                  color: Colors.white,
                  //  textColor: Colors.white,
                  child: Text(
                    'Регламенты работы ПБ №1',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/reglamentPB');
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RaisedButton(
                  color: Colors.blueGrey,
                  child: Text(
                    'Регламенты работы ПБ №2',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/templates');
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RaisedButton(
                  color: Colors.blueGrey,
                  child: Text(
                    'Регламенты работы ПБ №3',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/checklists');
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

class Templates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Шаблоны ГО и ЧС"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class CheckLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Тут будет Чек лист!!!"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class ReglamentsPB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регламент по ПБ №1"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Приказ МЧС РФ г. N 645 \"Об утверждении Норм пожарной безопасности \"Обучение мерам пожарной безопасности работников организаций\" (с изменениями и дополнениями)",
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 10.0),
                  Text("от 12 декабря 2007 "),
                  SizedBox(height: 10.0),
                  Divider(),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("20.2k"),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("2.2k"),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "1. Нормы пожарной безопасности \"Обучение мерам пожарной безопасности работников организаций\" (далее - Нормы пожарной безопасности) устанавливают требования пожарной безопасности к организации обучения мерам пожарной безопасности работников организаций.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "2. Ответственность за организацию и своевременность обучения в области пожарной безопасности и проверку знаний правил пожарной безопасности работников организаций несут администрации (собственники) этих организаций, должностные лица организаций, предприниматели без образования юридического лица, а также работники, заключившие трудовой договор с работодателем в порядке, установленном законодательством Российской Федерации",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
