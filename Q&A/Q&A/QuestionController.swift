import Foundation

class QuestionController {
    
    private(set) var questions: [Question] = []
    
    func createQuestion(question: String, asker: String) -> Question {
        let question = Question(question: question, asker: asker)
        questions.append(question)
        
        return question
    }
    
    func updateQuestion(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else { return }
        
        var tempQuestion = question
        tempQuestion.answer = answer
        tempQuestion.answerer = answerer
        
        questions.remove(at: index)
        questions.insert(tempQuestion, at: index)
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
