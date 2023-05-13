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
    The Portra 160 formula is taken from a Flickr discussion.
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
    The Portra 400 formula is taken from a Flickr discussion.
    """,
    source: "https://www.flickr.com/groups/477426@N23/discuss/72157635197694957/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(1.14 * pow(Double(time), 1.36), precision: .tenths) : time
    }
)

let kodaktrix = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "Tri-X",
    iso: 400,
    description: """
    The Tri-X 400 formula is taken from Retro Pixel.
    """,
    source: "https://retro-pixel.com/film-reciprocity-tables/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.54), precision: .tenths) : time
    }
)

let kodaktmax100 = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "T-Max 100",
    iso: 100,
    description: """
    The T-Max 100 formula is taken from Retro Pixel.
    """,
    source: "https://retro-pixel.com/film-reciprocity-tables/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.15), precision: .tenths) : time
    }
)

let kodaktmax400 = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "T-Max 400",
    iso: 400,
    description: """
    The T-Max 400 formula is taken from Retro Pixel.
    """,
    source: "https://retro-pixel.com/film-reciprocity-tables/",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.24), precision: .tenths) : time
    }
)

let kodakektar100 = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "Ektar 100",
    iso: 100,
    description: """
    The Ektar 100 formula is taken from a forum thread.
    """,
    source: "https://www.largeformatphotography.info/forum/archive/index.php/t-39588.html",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(0.759 * Double(time) + 0.555 * pow(Double(time), 1.3), precision: .tenths) : time
    }
)


let cinestill50d = Film(
    id: UUID().uuidString,
    manufacturer: "CineStill",
    name: "50d",
    iso: 50,
    description: """
    The CineStill 50d formula is taken from the CineStill FAQ
    """,
    source: "https://help.cinestillfilm.com/hc/en-us/articles/4407453578893-What-are-the-reciprocity-failure-details-for-CineStill-films-",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.3), precision: .tenths) : time
    }
)

let cinestill800t = Film(
    id: UUID().uuidString,
    manufacturer: "CineStill",
    name: "800t",
    iso: 800,
    description: """
    The CineStill 800t formula is taken from the CineStill FAQ
    """,
    source: "https://help.cinestillfilm.com/hc/en-us/articles/4407453578893-What-are-the-reciprocity-failure-details-for-CineStill-films-",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.3), precision: .tenths) : time
    }
)

let ilfordsfx = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "SFX",
    iso: 200,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.43), precision: .tenths) : time
    }
)

let ilfordpanf = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Pan F+",
    iso: 50,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.33), precision: .tenths) : time
    }
)

let ilforddelta100 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Delta 100",
    iso: 100,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.26), precision: .tenths) : time
    }
)

let ilforddelta400 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Delta 400",
    iso: 400,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.41), precision: .tenths) : time
    }
)

let ilforddelta3200 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Delta 3200",
    iso: 3200,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.33), precision: .tenths) : time
    }
)

let ilfordfp4 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "FP4+",
    iso: 126,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.26), precision: .tenths) : time
    }
)

let ilfordhp5 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "HP5+",
    iso: 400,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.31), precision: .tenths) : time
    }
)

let ilfordxp2 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "XP2",
    iso: 400,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.31), precision: .tenths) : time
    }
)

let ilfordk100 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Kentmere 100",
    iso: 100,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.26), precision: .tenths) : time
    }
)

let ilfordk400 = Film(
    id: UUID().uuidString,
    manufacturer: "Ilford",
    name: "Kentmere 400",
    iso: 400,
    description: """
    The Ilford formula is taken from their official data sheet.
    """,
    source: "https://www.ilfordphoto.com/wp/wp-content/uploads/2017/06/Reciprocity-Failure-Compensation.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.30), precision: .tenths) : time
    }
)

let fujivelvia50 = Film(
    id: UUID().uuidString,
    manufacturer: "Fuji",
    name: "Velvia 50",
    iso: 50,
    description: """
    The Fuji Velvia formula is taken from the official Fuji documentation.
    """,
    source: "https://asset.fujifilm.com/master/emea/files/2020-10/a71dda63e2662f012b3b74110794918a/films_velvia-50_datasheet_01.pdf",
    hasFormula: true,
    formula: {(time: Double) in
            if(time >= 40) {
                let result = (time * 2.35) - 6
                return preciseRound(result, precision: .tenths)
            }
            
            if(time >= 8) {
                let result = (time * 2.25) - 6
                return preciseRound(result, precision: .tenths)
            }
            
            if(time >= 4) {
                return preciseRound(time * 4/3, precision: .tenths)
            }
            
            return time
    }
)

let fujiproviardp2 = Film(
    id: UUID().uuidString,
    manufacturer: "Fuji",
    name: "Provia RDP II",
    iso: 50,
    description: """
    The Fuji Provia RDP II formula is taken from a forum thread.
    """,
    source: "https://www.largeformatphotography.info/forum/archive/index.php/t-39588.html",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 16.0 ? preciseRound(0.6046 * pow(Double(time), 1.25), precision: .tenths) : time
    }
)

let fujiprovia100f = Film(
    id: UUID().uuidString,
    manufacturer: "Fuji",
    name: "Provia 100F",
    iso: 50,
    description: """
    The Fuji Provia 100F formula is taken from a forum thread.
    """,
    source: "https://www.largeformatphotography.info/forum/archive/index.php/t-39588.html",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 16.0 ? preciseRound(Double(time) + (pow(7.629 * pow(10, -7) * Double(time), 3)), precision: .tenths) : time
    }
)

let kodaktechnicalpan = Film(
    id: UUID().uuidString,
    manufacturer: "Kodak",
    name: "Technical Pan",
    iso: 25,
    description: """
    Taken from Kodak technical sheet.
    """,
    source: "https://web.archive.org/web/20160615035248/http://www.kodak.com/global/en/professional/support/techPubs/p255/p255.pdf",
    hasFormula: true,
    formula: {(time: Double) in
        return time >= 1.0 ? preciseRound(pow(Double(time), 1.33), precision: .tenths) : time
    }
)

let films = [
    cinestill50d,
    cinestill800t,
    kodakektar100,
    kodakportra160,
    kodakportra400,
    kodaktrix,
    kodaktmax100,
    kodaktmax400,
    kodaktechnicalpan,
    ilfordfp4,
    ilfordhp5,
    ilfordsfx,
    ilfordxp2,
    ilfordk100,
    ilfordk400,
    ilfordpanf,
    ilforddelta100,
    ilforddelta400,
    ilforddelta3200,
    fujivelvia50,
    fujiproviardp2,
    fujiprovia100f,
]
