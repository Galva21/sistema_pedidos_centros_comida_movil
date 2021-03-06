import 'package:flutter/material.dart';
import 'package:sistema_registro_pedidos/models/FoodCenter.dart';

class CardListSubCategories extends StatelessWidget {
  FoodCenter category;
  Function onCardClick;

  CardListSubCategories({this.category, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                child: Opacity(
                  child: Image.network(
                    this.category.banner,
                    fit: BoxFit.cover,
                  ),
                  opacity: 0.7,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Positioned(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.transparent
                        ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              bottom: 0,
              left: 0,
              right: 0,
            ),
            Positioned(
              bottom: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(this.category.logo),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(25)
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(this.category.nombre,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Text(
                          this.category.descripcion,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Horario de atencion:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      this.category.horario,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      this.category.numero,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      this.category.direccion,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        this.onCardClick();
      },
    );
  }
}
