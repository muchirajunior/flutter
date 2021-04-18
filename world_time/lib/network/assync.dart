 void getData() async {
    //some little delay
    String name = await Future.delayed(Duration(seconds: 3), () {
      return "junior";
    });

    String details = await Future.delayed(Duration(seconds: 1), () {
      return " AI developer";
    });

    print('$name - $details');
  }
