//
//
// TabView-AboutMe
// Data.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    image: "person.fill",
    name: "My Name",
    story: "A story can be about anything you can dream up!, There are no right answers, there is no one else.\n\nNeed some inspiration?\n• 🐶🐱🛶️🎭🎤🎧🎸\n• 🏄‍♀️🚵‍♀️🚴‍♀️⛵️🥾🏂⛷📚\n• ✍️🥖☕️🏋️‍♂️🚲🧗‍♀️",
    hobbies: ["bicycle", "ticket.fill", "book.fill", "music.note.list", "moon", "sun.max"],
    foods: ["🥐", "🍎", "🌮", "🍰", "🍔"],
    colors: [Color.blue, Color.red, Color.yellow, Color.green],
    funFacts: ["The femur is the longest and largest bone in the human body.",
               "The moon is 238,900 miles away.",
               "Prince’s last name was Nelson.",
               "503 new species were discovered in 2020.",
               "Ice is 9 percent less dense than liquid water.",
               "You can spell every number up to 1,000 without using the letter A.\n\n...one, two, three, four...ninety-nine...nine hundred ninety-nine 🧐",
               "A collection of hippos is called a bloat.",
               "White sand beaches are made of parrotfish poop."
              ]
)
