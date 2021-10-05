import 'package:agenda_contatos/models/contact.dart';
import 'package:agenda_contatos/style.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Details extends StatelessWidget {

  final Contact _contact;

  Details(this._contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_contact.isFavorite) 
          ? Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.star),
          )
          : Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.star_outline),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(_contact.photo),
            Padding(
              padding: const EdgeInsets.only(
                left: 16, 
                top: 20,
              ),
              child: Text(
                _contact.name,
                style: TextStyle(
                  color: grayTheme,
                  fontSize: 24,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.local_phone_outlined,
                  color: blueTheme,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Transform(
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(
                      Icons.insert_comment_outlined,
                      color: blueTheme,
                      size: 25,
                    ),
                  ),
                ),
                Icon(
                  Icons.videocam_outlined,
                  color: blueTheme,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.email_outlined,
                    color: blueTheme,
                    size: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    "Ligar",
                    style: TextStyle(
                      fontSize: 14,
                      color: blueTheme,
                    ),
                  ),
                ),
                Text(
                  "Mensagem SMS",
                  style: TextStyle(
                    fontSize: 14,
                    color: blueTheme,
                  ),
                ),
                Text(
                  "Vídeo",
                  style: TextStyle(
                    fontSize: 14,
                    color: blueTheme,
                  ),
                ),
                Text(
                  "Enviar email",
                  style: TextStyle(
                    fontSize: 14,
                    color: blueTheme,
                  ),
                ),
              ]
            ),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.local_phone_outlined,
                    color: blueTheme,
                    size: 25,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  _contact.phone,
                  style: TextStyle(
                    fontSize: 12,
                    color: blackTheme,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 174.6),
                  child: Icon(
                    Icons.videocam,
                    color: blueTheme,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.6),
                  child: Transform(
                      transform: Matrix4.rotationY(math.pi),
                      child: Icon(
                      Icons.insert_comment_outlined,
                      color: blueTheme,
                      size: 25,
                      ),
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    "Celular",
                    style: TextStyle(
                      fontSize: 12,
                      color: blackTheme,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Divider(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: blueTheme,
                    size: 25,
                  ),
                  SizedBox(width: 3),
                  Text(
                    _contact.email,
                    style: TextStyle(
                      fontSize: 12,
                      color: blackTheme,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}