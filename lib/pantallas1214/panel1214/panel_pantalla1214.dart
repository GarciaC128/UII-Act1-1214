import 'package:flutter/material.dart';
import 'package:garcia1214/pantallas1214/panel1214/itemplatillo.dart';

class PanelPantalla1214 extends StatelessWidget {
  const PanelPantalla1214({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff331F1A),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/GarciaC128/Img_IOS/main/icon_restaurante.jpg")),
          ),
        ],
        title: const Text(
          'Restaurante Garcia1214',
          style: TextStyle(color: Color(0xfffefefe), fontSize: 20),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFEEDEC9),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "que quieres ver",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon:
                      Icon(Icons.search, color: const Color(0xFF716961))),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/GarciaC128/Img_IOS/main/FlutterFlowA12/pica%C3%B1a.jpg")),
            ),
          ),
          ListTile(
            title: Text("Mejores platillos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemplatillo()],
          ))
        ],
      ),
    );
  }
}
