import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // connected outlets
    // call questionController --> createQuestions Method
    // have navigation controller pop to previous controller
    
    @IBAction func submitQuestionButton(_ sender: Any) {
        guard let submitQuestionTextField = submitQuestionTextField.text,
            let submitQuestionTextView = submitQuestionTextView.text else {return}
        questionController?.createQuestion(question: submitQuestionTextView, asker: submitQuestionTextField)
        navigationController?.popViewController(animated: true)
    }
    
    // Next time use shorter names, although these are very descriptive
    @IBOutlet weak var submitQuestionTextField: UITextField!
    
    @IBOutlet weak var submitQuestionTextView: UITextView!
}
