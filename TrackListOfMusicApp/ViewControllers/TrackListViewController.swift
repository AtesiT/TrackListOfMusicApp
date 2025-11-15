import UIKit

final class TrackListViewController: UITableViewController {
    private let trackList = Track.getAllTracks()

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        cell.contentConfiguration = content
        return cell
    }
}


