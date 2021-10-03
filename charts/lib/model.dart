class CarSale{
  String? name;
  double? number;

  CarSale(this.name,this.number);

   static  salesData(){
    List<CarSale> data=[
      CarSale("Toyota", 200),
      CarSale("ferrari", 300),
      CarSale("buggati", 100),
      CarSale("harrier", 150),
      CarSale("mercedez", 80),
      CarSale("Xtrail", 250)
    ];

    return data;
  }
}