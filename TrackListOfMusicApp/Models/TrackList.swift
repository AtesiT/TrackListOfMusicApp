struct Track {
    let name: String
    let artist: String
    
    static func getAllTracks() -> [Track] {
        [
            Track(name: "One", artist: "A"),
            Track(name: "Two", artist: "B"),
            Track(name: "Three", artist: "C"),
        ]
    }
}
