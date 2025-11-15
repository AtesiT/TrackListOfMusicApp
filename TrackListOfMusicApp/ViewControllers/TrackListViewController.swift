import UIKit

final class TrackListViewController: UITableViewController {
    private let trackList = Track.getAllTracks()

    override func viewDidLoad() {
        super.viewDidLoad()
        // We create the measures for cell here
        tableView.rowHeight = 100
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let viewController = segue.destination as? TrackDetailsViewController
        viewController?.track = trackList[indexPath.row]
    }
    
}

extension TrackListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)
        let track = trackList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = track.name
        content.secondaryText = track.artist
        content.image = UIImage(named: track.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
}


