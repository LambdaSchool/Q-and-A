import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var questionController: QuestionController?
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    var question: Question? {
        didSet {
            updateViews()
            
        }
    }
    
    func updateViews(){
        questionLabel?.text = question?.question
        askerLabel?.text = question?.asker
        answerLabel?.text = question?.answer
        
        question?.answer == nil ? (answerLabel?.text = "What's your answer?") : (answerLabel?.text = "Tap to see the answer.")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    


}
    
    
    


