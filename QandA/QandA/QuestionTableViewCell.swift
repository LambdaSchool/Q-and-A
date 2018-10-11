import UIKit

class QuestionTableViewCell: UITableViewCell {
    var question: Question?
    
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var askedByNameLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
