import 'package:apartment_app_ui/model/apartment.dart';
import 'package:flutter/material.dart';

class DetailApartment extends StatefulWidget {
  Apartment apartment;
  DetailApartment(this.apartment);
  @override
  _DetailApartmentState createState() => _DetailApartmentState();
}

class _DetailApartmentState extends State<DetailApartment> {
  var _selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      widget.apartment.images[_selectedImage],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.apartment.images.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedImage = index;
                        });
                      },
                      child: Container(
                        height: index == _selectedImage ? 40 : 20,
                        width: index == _selectedImage ? 60 : 50,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.blue.withOpacity(
                              index == _selectedImage ? 1 : 0,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.apartment.images[index],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Text(
                "\$ ${widget.apartment.price}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "${widget.apartment.buildingName}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "${widget.apartment.location}",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/bedrom.png',
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: 7),
                        Text(
                          "${widget.apartment.bedroom} Beds",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/bathroom.png',
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: 7),
                        Text(
                          "${widget.apartment.bathroom} Bathroom",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.black,
                height: 30,
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Text(
                        "Detail ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "${widget.apartment.about}",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "E-mail",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
