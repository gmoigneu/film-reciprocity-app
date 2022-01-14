//
//  FilmData.swift
//  ReciprocityTimer
//
//  Created by Guillaume Moigneu on 1/13/22.
//

import Foundation



let speeds = [
    Speed(label: "1/1000", value: 1/1000),
    Speed(label: "1/500", value: 1/500),
    Speed(label: "1/250", value: 1/250),
    Speed(label: "1/125", value: 1/125),
    Speed(label: "1/60", value: 1/60),
    Speed(label: "1/30", value: 1/30),
    Speed(label: "1/15", value: 1/15),
    Speed(label: "1/8", value: 1/8),
    Speed(label: "1/4", value: 1/4),
    Speed(label: "1/2", value: 1/2),
    Speed(label: "1", value: 1),
    Speed(label: "2", value: 2),
    Speed(label: "4", value: 4),
    Speed(label: "8", value: 8),
    Speed(label: "16", value: 16),
    Speed(label: "32", value: 32)
]

let kodakportra160 = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "Portra 160",
    iso: 160,
    description: """
    The Portra 160 formula is taken from a Flick discussion.
    """,
    source: "https://www.flickr.com/groups/477426@N23/discuss/72157635197694957/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(1.14 * pow(Double(time), 1.36), precision: .tenths) : time
    }
)

let kodakportra400 = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "Portra 400",
    iso: 400,
    description: """
    The Portra 400 formula is taken from a Flick discussion.
    """,
    source: "https://www.flickr.com/groups/477426@N23/discuss/72157635197694957/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(1.14 * pow(Double(time), 1.36), precision: .tenths) : time
    }
)

let cinestill50d = Film(
    id: UUID().uuidString,
    manufacturer: "Cinestill",
    name: "50d",
    iso: 800,
    description: """
    The Cinestill 50d formula is taken from the Cinestill FAQ
    """,
    source: "https://help.cinestillfilm.com/hc/en-us/articles/4407453578893-What-are-the-reciprocity-failure-details-for-CineStill-films-",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.3), precision: .tenths) : time
    }
)

let cinestill800t = Film(
    id: UUID().uuidString,
    manufacturer: "Cinestill",
    name: "800t",
    iso: 800,
    description: """
    The Cinestill 800t formula is taken from the Cinestill FAQ
    """,
    source: "https://help.cinestillfilm.com/hc/en-us/articles/4407453578893-What-are-the-reciprocity-failure-details-for-CineStill-films-",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.3), precision: .tenths) : time
    }
)

let films = [
    cinestill50d,
    cinestill800t,
    kodakportra160,
    kodakportra400,
    
]
