//
//  Emoji.swift
//  Intermediate Table Views
//
//  Created by Denis Bystruev on 24/01/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

struct Emoji {
    let emoji: String
    let name: String
    let desc: String
    
    static func load() -> [Emoji] {
        let emojis = [
            Emoji(emoji: "😀", name: "Smile", desc: "Смайлик"),
            Emoji(emoji: "☺️", name: "Red smile", desc: "Смущённая улыбка"),
            Emoji(emoji: "😹", name: "Crying Cat", desc: "Плачущий кот"),
            Emoji(emoji: "👁", name: "An eye", desc: "Глаз"),
            Emoji(emoji: "👮‍♂️", name: "Policeman", desc: "Полицейский"),
            Emoji(emoji: "🎅", name: "Santa Clause", desc: "Дед Мороз"),
            Emoji(emoji: "👸", name: "Princess", desc: "Принцесса"),
        ]
        
        return emojis
    }
}
