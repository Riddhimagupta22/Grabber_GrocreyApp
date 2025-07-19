class StripeService{
  StripeService._();

  static final StripeService _stripeService = StripeService._();

  Future <void> makePayment() async{
    try{}
        catch(e){
      print(e);
        }
  }

}