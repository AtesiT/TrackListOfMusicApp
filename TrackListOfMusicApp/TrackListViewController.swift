import UIKit

final class TrackListViewController: UITableViewController {
    private let trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }

    // MARK: - Navigation
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

// MARK: - UITableViewDataSource
extension TrackListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return trackList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)
        let track = trackList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
        
    }
}
