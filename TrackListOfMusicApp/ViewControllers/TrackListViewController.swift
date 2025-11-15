import UIKit

final class TrackListViewController: UITableViewController {
    private var trackList = Track.getAllTracks()

    override func viewDidLoad() {
        super.viewDidLoad()
        // We create the measures for cell here
        tableView.rowHeight = 100
        navigationItem.leftBarButtonItem = editButtonItem
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TrackDetailsViewController
        viewController?.track = sender as? Track
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
    
    // To make "burger" on right side on cells
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // We can launch the program without any codes just use the func but it will be only UI move not logic in arrays
        let currentTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currentTrack, at: destinationIndexPath.row)
    }
}

// MARK: - UITableViewDelegate
extension TrackListViewController {
    //  For select a cell
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.description)    // Output
        let track = trackList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: track)
    }
    // Destroy symbol minus - on left side when we click on edit (navigationitem)
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    // To fix slide in the right side the cells
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
 
