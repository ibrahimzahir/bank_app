class HistoryModel {
  String name;
  String photo;
  String date;
  String amount;

  HistoryModel(
    this.name,
    this.photo,
    this.date,
    this.amount,
  );
}

List<HistoryModel> history = historyData
    .map((item) =>
        HistoryModel(item['name'], item['photo'], item['date'], item['amount']))
    .toList();

var historyData = [
  {
    "name": "Grab ride",
    "photo": "assets/images/uber_photo.png",
    "date": "1st Apr 2020",
    "amount": "-\$35.214"
  },
];
