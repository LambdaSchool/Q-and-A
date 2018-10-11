import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?

    @IBOutlet weak var askerTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var submitQuestion: UIBarButtonItem!
    
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let askerName = askerTextField.text,
            let questionText = questionTextView.text else { return }
        if askerName != "" && questionText != "" {
            questionController?.createQuestion(question: questionText, asker: askerName)
            navigationController?.popViewController(animated: true)
        }
    }
}
