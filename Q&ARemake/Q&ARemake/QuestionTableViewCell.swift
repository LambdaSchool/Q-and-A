
import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question?{
        didSet {
            updateViews()
        }
    }
    
    func updateViews(){
        questionLabel?.text = question?.question
        askerLabel?.text = question?.asker
        answerLabel?.text = question?.answer
        
question?.answer == nil ? (answerLabel?.text = "Can you answer this?" ) : (answerLabel?.text = "Tap to view Answer.")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
