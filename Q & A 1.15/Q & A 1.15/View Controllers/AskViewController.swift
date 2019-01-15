
import UIKit

class AskViewController: UIViewController {
    
    var questionController: QuestionController?
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        questionController?.createQuestion(question: text)
        textField.text = nil
        
        // poptoPrevious..
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
