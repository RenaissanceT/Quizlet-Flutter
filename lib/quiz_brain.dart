import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    // Analyzing Information on Financial Statements True or False
    Question(
        'Question 1: The statement of changes in owner\'s equity is prepared before the balance sheet',
        true),
    Question(
        'Question 2: The balance sheet is prepared from the information in the balance sheet section of the work sheet and from the statement of changes in owner\'s equity',
        true),
    Question(
        'Question 3: A net loss and withdrawals both cause an increase in the capital account',
        false),
    Question(
        'Question 4: The balance sheet represents the basic accounting equation',
        true),
    Question(
        'Question 5: The wording of the date line in the heading on the income statement is important',
        true),
    Question(
        'Question 6: The balance sheet contains only the permanent general ledger accounts',
        true),
    Question(
        'Question 7: The statement of changes in owner\'s equity is completed as a supporting document for the income statement',
        false),
    Question(
        'Question 8: The sections are listed on the income statement are the heading, the revenue for the period, the capital for the period, and the net income or loss for the period',
        false),
    Question(
        'Question 9: Active management necessarily implies very high portfolio turnover in an attempt to beat the Market Portfolio',
        false),
    Question(
        'Question 10: Asset allocation refers to portfolio choice among broad asset classes. Security selection refers to portfolio choice of specific securities within an asset class',
        true),
    Question(
        'Question 11: The Market Portfolio (of stocks) contains all stocks available, each in proportion to its capitalization',
        true),
    Question(
        'Question 12: Quantitative investors choose stocks based on thorough valuation of individual stocks, including detailed discounted cash flow calculations',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
