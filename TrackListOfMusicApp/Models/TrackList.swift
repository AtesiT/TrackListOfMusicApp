struct Track {
    let name: String
    let artist: String
    let image: String
    
    static func getAllTracks() -> [Track] {
        [
            Track(name: "One", artist: "A", image: "1"),
            Track(name: "Two", artist: "B", image: "2"),
            Track(name: "Three", artist: "C", image: "3"),
            Track(name: "Four", artist: "D", image: "4"),
        ]
    }
}
