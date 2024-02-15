import 'package:flutter/material.dart';

import '../model/item.dart';
import '../shared/appbar.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isShowmore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgpath),
            SizedBox(
              height: 23,
            ),
            Text(
              "\${widget.product.price}",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "new",
                    style: TextStyle(fontSize: 17),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 70,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 23,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      widget.product.location,
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details :",
                style: TextStyle(fontSize: 21),
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The gametophyte, which produces non-motile sperm, is enclosed within pollen grains; the dfniudsnfuhdshnfusdhfushfidhsfushdfusdhfusdhfdsipfhef89ewhfr8w33qreufhuduhfudhcuhdcsdhcilsdhvushdiuhvkdfgodkfdjfidjfuhefiuoshfspifawhfhe;wjsf;hdifhsdihfi;ojdjfdjfjdo;fad;ofcshfhshfsdhf;sjsdoijchvrufehvcvnfjvudhsods ",
              style: TextStyle(fontSize: 18),
              maxLines: isShowmore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowmore = !isShowmore;
                  });
                },
                child: Text(isShowmore ? "Show more" : "Show less",
                    style: TextStyle(fontSize: 18)))
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 141, 95),
        title: Text("Details screen"),
        actions: [
          
          Productsandprice(),
        ],
      ),
    );
  }
}
