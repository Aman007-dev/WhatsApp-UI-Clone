class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avtarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avtarUrl});
}

List<ChatModel> dummydata = [
  ChatModel(
      name: "Aman Gupta",
      message: "Hey Flutter, You are so amazing.",
      time: "15:30",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg"),
  ChatModel(
      name: "Harvey Spector",
      message: "Hey I am a star.",
      time: "17:00",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg"),
  ChatModel(
      name: "Raman",
      message: "How are you?",
      time: "5:30",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg"),
  ChatModel(
      name: "Rachel",
      message: "See you soon!",
      time: "8:52",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg"),
  ChatModel(
      name: "Narendra Modi",
      message: "BJP is fraud!",
      time: "00:00",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg"),
  ChatModel(
      name: "Pakistan",
      message: "We are creep...",
      time: "15:30",
      avtarUrl:
          "https://www.fashionbeans.com/wp-content/uploads/2018/06/harveyspec-top-3.jpg")
];
