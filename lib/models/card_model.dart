class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementBottom;

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementBottom);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['user'],
        item['cardNumber'],
        item['cardExpired'],
        item['cardType'],
        item['cardBackground'],
        item['cardElementBottom'],
      ),
    )
    .toList();

var cardData = [
  {
    "user": "MAEESHA SAEED",
    "cardNumber": "4213 6300 1706 1245",
    "cardExpired": "01/24",
    "cardType": "BML ISLAMIC",
    "cardBackground": 0xFF1E1E99,
    "cardElementBottom": "assets/images/visa.png"
  },
  {
    "user": "MAEESHA SAEED",
    "cardNumber": "4213 6300 1706 1325",
    "cardExpired": "07/24",
    "cardType": "AMERICAN EXPRESS",
    "cardBackground": 0xFFD9AF5B,
    "cardElementBottom": "assets/images/mastercard.png"
  },
  {
    "user": "MAEESHA SAEED",
    "cardNumber": "4213 6300 1706 1531",
    "cardExpired": "09/24",
    "cardType": "BANK OF MALDIVES",
    "cardBackground": 0xFF39B49A,
    "cardElementBottom": "assets/images/americanExpress.png"
  },
];
