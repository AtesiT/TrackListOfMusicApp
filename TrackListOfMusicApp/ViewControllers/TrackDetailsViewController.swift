import UIKit

final class TrackDetailsViewController: UIViewController {

    @IBOutlet var trackImage: UIImageView!
    @IBOutlet var trackLabel: UILabel!
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackImage.image = UIImage(named: track.image)
        trackLabel.text = track.name
    }
}
