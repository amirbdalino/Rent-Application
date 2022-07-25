import 'package:flutter/material.dart';
import 'package:house_rent_application/home/home_page.dart';

class GuestHouse extends StatefulWidget {
  const GuestHouse({Key? key}) : super(key: key);

  @override
  State<GuestHouse> createState() => _GuestHouseState();
}

class _GuestHouseState extends State<GuestHouse> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: AlertMessage(),
        ));
  }
}

class AlertMessage extends StatelessWidget {
  const AlertMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
            backgroundColor: Colors.grey[900],
            title: const Text('Guest House'),
            centerTitle: true,
          ),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 5 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network(
                  'https://tinyurl.com/38yjzdwh',
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 7 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/3tj3kpvy',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 7 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/58urh7af',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 1 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/k29r65xd',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 2 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/3ak2yy24',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 8 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/bdnbsaax',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 1 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/3f7ddbem',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 4 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/538ap3eu',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 1 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/2cfkvv2k',
                    fit: BoxFit.cover),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Guest House Details '),
                      content: const Text('Entire apartment: 6 Bedroom   '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Image.network('https://tinyurl.com/4ptv87t2',
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
