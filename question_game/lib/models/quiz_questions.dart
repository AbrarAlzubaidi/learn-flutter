// this is the blueprint of the quiz questions object that hold the questions and the answers
// it is most common in programming to separate the data from the logic and from seeding the data.
// this is a good practice to follow to make the code more readable and maintainable.

// *** NOTE FOR ME: it is similar to the concept of the model in the MVC pattern(like node.js)
class QuizQuestions{
  QuizQuestions(this.questionText, this.answers, this.correctAnswer);
  
  final String questionText;
  final List<String> answers;
  final String correctAnswer;
}