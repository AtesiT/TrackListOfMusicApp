struct Track {
    let artist: String
    let song: String
    
    var title: String
    
    static func getTrackList() -> [Track] {
        [
            Track(artist: "MIA", song: "Paper Planes", title: "1"),
            Track(artist: "PSY", song: "Gangnam Style", title: "2"),
            Track(artist: "Carly Rae Jepsen", song: "Call Me Maybe", title: "2"),
            Track(artist: "Justin Bieber", song: "Boyfriend", title: "4")
        ]
    }
}
