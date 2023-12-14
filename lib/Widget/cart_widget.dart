import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({
    super.key,
    required this.imageUrl,
    required this.isFavorite,
    required this.space,
    required this.bathroom,
    required this.beds,
    required this.nameUser,
    required this.imageUser,
    required this.onTabUserProfile,
    required this.street,
    required this.onTab,
  });

  final String imageUrl;
  final bool isFavorite;
  final double space;
  final int bathroom;
  final int beds;
  final String nameUser;
  final String imageUser;
  final Function onTabUserProfile;
  final VoidCallback onTab;
  final String street;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.isFavorite;
    return TextButton(
      onPressed: widget.onTab,
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
        child: Column(
          children: [
            Image.asset(widget.imageUrl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.street,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      selected = !selected;
                      print(selected);
                    });
                  },
                  icon: Icon(
                    (selected)
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_outlined,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.drive_file_move_outline,
                      color: Color(0xffBD5484),
                    ),
                    Text(
                      '${widget.space}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.shower_outlined,
                      color: Color(0xffBD5484),
                    ),
                    Text(
                      '${widget.bathroom}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.bed_sharp, color: Color(0xffBD5484)),
                    Text(
                      '${widget.beds} beds in',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.imageUser),
                    ),
                    const SizedBox(width: 10),
                    Text(widget.nameUser,style: TextStyle(color: Colors.black),),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward,color: Colors.black,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}