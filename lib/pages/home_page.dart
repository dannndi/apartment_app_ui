import 'package:apartment_app_ui/model/apartment.dart';
import 'package:apartment_app_ui/pages/detail_apartment.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _cities;
  String _selectedCity;

  List<String> _order;
  String _selectedOrder;

  @override
  void initState() {
    _cities = [
      "New York",
      "Las Vegas",
      "Los Angeles",
    ];
    _selectedCity = _cities[0];

    _order = [
      "Price Asc",
      "Price Des",
      "Popular",
      "Most Like",
    ];

    _selectedOrder = _order[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          "Hey Frank",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          //* Header
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: Colors.black,
                    ),
                    isExpanded: false,
                    elevation: 1,
                    value: _selectedCity,
                    dropdownColor: Colors.white,
                    items: _cities
                        .map<DropdownMenuItem>(
                          (city) => DropdownMenuItem(
                            child: Text(
                              city,
                              style: TextStyle(
                                fontSize: city == _selectedCity ? 32 : 16,
                                fontWeight: city == _selectedCity
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            value: city,
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Order by :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 10),
                          DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: Colors.black,
                              ),
                              isExpanded: false,
                              elevation: 1,
                              value: _selectedOrder,
                              dropdownColor: Colors.white,
                              items: _order
                                  .map<DropdownMenuItem>(
                                    (order) => DropdownMenuItem(
                                      child: Text(
                                        order,
                                        style: TextStyle(
                                          fontSize:
                                              order == _selectedOrder ? 14 : 12,
                                          fontWeight: order == _selectedOrder
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          color: Colors.black,
                                        ),
                                      ),
                                      value: order,
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedOrder = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.settings_input_component,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //* ListView
          Expanded(
            child: ListView.builder(
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailApartment(
                          apartments[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          apartments[index].images[0],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          stops: [
                            0.0,
                            0.8,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "\$ ${apartments[index].price}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "${apartments[index].buildingName}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${apartments[index].location}",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/bedrom.png',
                                      color: Colors.white,
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "${apartments[index].bedroom} Beds",
                                      style: TextStyle(
                                        color: Colors.white,
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
                                      color: Colors.white,
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "${apartments[index].bathroom} Bathroom",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
