import UIKit

final class TrackDetailsViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let track = track else {
            print("Track is nil!")
            return
        }
        
        imageView.image = UIImage(named: track.title)
        label.text = track.artist
        
    }
}
