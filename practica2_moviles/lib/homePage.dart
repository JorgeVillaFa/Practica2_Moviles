import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _iconColor1 = Colors.black;
  Color _iconColor2 = Colors.black;
  Color _iconColor3 = Colors.black;
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Iteso'),
      ),
      body: Column(
        children: [
          Image.network(
              "https://keystoneacademic-res.cloudinary.com/image/upload/element/12/121980_121891__MG_2277.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                  "Instituto Tecnológico y de Estudios Superiores de Occidente (ITESO)"),
              subtitle: Text("San Pedro Tlaquepaque, Jal."),
              trailing: TextButton.icon(
                onPressed: () {
                  _counter++;
                  setState(() {});
                },
                icon:
                    Icon(Icons.thumb_up_alt, textDirection: TextDirection.ltr),
                label: Text('$_counter'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        if (_iconColor1 == Colors.black) {
                          _iconColor1 = Colors.indigo;
                        } else {
                          _iconColor1 = Colors.black;
                        }
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Contactanos!"),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.mail,
                        color: _iconColor1,
                      ),
                    ),
                    Text("Correo"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        if (_iconColor2 == Colors.black) {
                          _iconColor2 = Colors.indigo;
                        } else {
                          _iconColor2 = Colors.black;
                        }
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Llamada!"),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.phone_callback,
                        color: _iconColor2,
                      ),
                    ),
                    Text("Llamada"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        if (_iconColor3 == Colors.black) {
                          _iconColor3 = Colors.indigo;
                        } else {
                          _iconColor3 = Colors.black;
                        }
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Como llegar!"),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.roundabout_left_sharp,
                        color: _iconColor3,
                      ),
                    ),
                    Text("Ruta"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            /* El espacio tambien s epuede hacer con un sizedbox */
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
            child: Text(
              "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
