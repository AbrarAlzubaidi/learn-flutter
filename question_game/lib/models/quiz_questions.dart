// this is the blueprint of the quiz questions object that hold the questions and the answers
class QuizQuestions{
  QuizQuestions(this.questionText, this.answers);
  
  final String questionText;
  final List<String> answers;
}