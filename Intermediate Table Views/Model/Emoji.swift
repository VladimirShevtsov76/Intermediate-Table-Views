//
//  Emoji.swift
//  Intermediate Table Views
//
//  Created by Vladimir Shevtsov on 01.12.2021.
//

struct Emoji {
    
    let emoji: String
    let name:  String
    let desc:  String
    
    static func load() -> [Emoji] {
        let emojis = [
            Emoji(emoji: "👸", name: "Princess",     desc: "Принцесса"),
            Emoji(emoji: "😹", name: "Crying Cat",   desc: "Плачущий кот"),
            Emoji(emoji: "👁", name: "An eye",       desc: "Глаз"),
            Emoji(emoji: "😀", name: "Smile",        desc: "Смайлик"),
            Emoji(emoji: "☺️", name: "Red smile",    desc: "Смущённая улыбка"),
            Emoji(emoji: "👮‍♂️", name: "Policeman",    desc: "Полицейский"),
            Emoji(emoji: "🎅", name: "Santa Clause", desc: "Дед Мороз"),
        ]
        
        return emojis
    }
}
