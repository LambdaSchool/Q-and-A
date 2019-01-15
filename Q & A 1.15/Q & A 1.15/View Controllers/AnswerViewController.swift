import UIKit

class AnswerViewController: UIViewController {
    
    var questionContoller: QuestionController?
    
    var question: Question?

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveClicked(_ sender: Any) {
        guard let text = textView.text, !text.isEmpty else { return }
        //guard let textF = textField.text, !text.isEmpty else { return }
            questionContoller?.update(question: text)
        
   //     poptoprviescontoellr
    }
    
    func updateViews() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
  //  }
    

}
