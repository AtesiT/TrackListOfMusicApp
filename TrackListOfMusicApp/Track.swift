struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
    
    static func getTrackList() -> [Track] {
        [
            Track(artist: "MIA", song: "Paper Planes"),
            Track(artist: "PSY", song: "Gangnam Style"),
            Track(artist: "Carly Rae Jepsen", song: "Call Me Maybe"),
            Track(artist: "Justin Bieber", song: "Boyfriend")
        ]
    }
}
