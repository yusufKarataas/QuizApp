class QuestionBody {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  String correctOption;

  QuestionBody({
   required this.question,
   required this.option1,
   required this.option2,
   required this.option3,
   required this.option4,
   required this.correctOption,
});
}


final List<QuestionBody> questions = [
  QuestionBody(
      question: "Flutter framework müdür",
      option1: "Frameworktür", 
      option2: "Hayır değildir",
      option3: "Bilmiyorum", 
      option4: "Düşünmüyorum", 
      correctOption: "Frameworktür"),
 
  QuestionBody(
      question: "Dart hangi yıl çıkmıştır", 
      option1: "2015", 
      option2: "2013", 
      option3: "2009", 
      option4: "2017", 
      correctOption: "2015"),
  
  QuestionBody(
      question: "Flutter'da bir widget'ı ekranda göstermek için hangi yöntemi kullanırsınız?",
      option1: "showDialog()",
      option2: "runApp()",
      option3: "setState()",
      option4: "showSnackbar()",
      correctOption: "runApp()"),
  
  QuestionBody(
      question: "Flutter'da StatefulWidget ve StatelessWidget arasındaki fark nedir?",
      option1: "StatefulWidget bir state'e sahip olabilir, StatelessWidget ise sahip olamaz.",
      option2: "StatelessWidget sadece veri alabilir, StatefulWidget ise veri alabilir ve veri gönderebilir.",
      option3: "StatefulWidget veri girişi yapabilir, StatelessWidget ise veri çıkışı yapabilir.",
      option4: "StatefulWidget daha hızlı çalışır, StatelessWidget daha yavaş çalışır.",
      correctOption: "StatefulWidget bir state'e sahip olabilir, StatelessWidget ise sahip olamaz."),
  
  QuestionBody(
      question: "ElevatedButton widget'ının arka plan rengini değiştirmek için hangi yöntemi kullanırsınız?",
      option1: "color: Colors.red",
      option2: "backgroundColor: Colors.red",
      option3: "ElevatedButton.styleFrom(backgroundColor: Colors.red)",
      option4: "background: Colors.red",
      correctOption: "ElevatedButton.styleFrom(backgroundColor: Colors.red)")
];
