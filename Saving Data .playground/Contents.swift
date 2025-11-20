import Foundation

var greeting = "Hello, playground"

//codable protocol

struct Note: Codable {
    let title: String
    let text: String
//    let timestamp: Date
}

let note1 = Note(title: "First Note", text: "Hello World")
let note2 = Note(title: "Second Note", text: "Swift is awesome")
let note3 = Note(title: "Third Note", text: "This is fun")

let notes: [Note] = [note1, note2, note3]

let documentaDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

let archiveURL = documentaDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

let propertyLisEncoder = PropertyListEncoder()

//print(documentaDirectory.path)
if let encodedNotes = try? propertyLisEncoder.encode(notes) {
    print("Encoded Note: \(encodedNotes)")
    
    try? encodedNotes.write(to: archiveURL, options: .noFileProtection)
    
    let propertyListDecoder = PropertyListDecoder()
    if let decodedNotes = try? propertyListDecoder.decode([Note].self, from: encodedNotes) {
        print("Decoded Note: \(decodedNotes)")
    }
        
}

print("Document directory \(documentaDirectory)")
print("Archieve Url: \(archiveURL)")

