import Foundation
import SwiftUI
import MapKit

final class BusStopPoint: NSObject, MKAnnotation, Identifiable {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    let id: Int
    let buses: [Int]
  
    init(title: String?, coordinate: CLLocationCoordinate2D, id: Int, buses: [Int]) {
        self.title = title
        self.coordinate = coordinate
        self.id = id
        self.buses = buses
    }
}

let busStops: [BusStopPoint] = [
    BusStopPoint(title: "Boulevard 3", coordinate: .init(latitude: 43.3226493, longitude: -1.9825367), id: 102, buses: [13]),
    BusStopPoint(title: "Boulevard 9", coordinate: .init(latitude: 43.3224735, longitude: -1.9830205), id: 1, buses: [21, 28]),
    BusStopPoint(title: "Boulevard 13", coordinate: .init(latitude: 43.3223149, longitude: -1.9834178), id: 79, buses: [26]),
    BusStopPoint(title: "Boulevard 15", coordinate: .init(latitude: 43.3222271, longitude: -1.9836659), id: 56, buses: [9, 29, 31]),
    BusStopPoint(title: "Boulevard 17", coordinate: .init(latitude: 43.3221483, longitude: -1.9839139), id: 34, buses: [5, 25]),
    BusStopPoint(title: "Boulevard 19", coordinate: .init(latitude: 43.3220424, longitude: -1.9841623), id: 238, buses: [8, 42])
]

func getLineColor(number: Int) -> Color {
    switch number {
    case 5, 16, 18, 25, 45:
        return Color.green
    case 19, 21, 23, 26, 28, 32:
        return Color.pink
    case 8, 9, 13, 14, 29:
        return Color.red
    case 17, 24, 27, 31, 33, 35, 40, 43, 41:
        return Color.blue
    case 36, 37, 38, 42, 39, 46:
        return Color.orange
    default:
        return Color.black
    }
}

func getLineName(number: Int) -> String {
    switch number {
    case 8:
        return "Gros-Intxaurrondo"
    case 13:
        return "Altza"
    case 21:
        return "Mutualidades-Anoeta"
    case 28:
        return "Amara-Ospitaleak"
    case 26:
        return "Amara-Martutene"
    case 9:
        return "Egia-Intxaurrondo"
    case 29:
        return "Intxaurrondo Sur"
    case 31:
        return "Intxaurrondo-Ospitaleak-Altza"
    case 5:
        return "Benta Berri"
    case 25:
        return "BentaBerri-Añorga"
    case 42:
        return "Aldapa-Egia"
    default:
        return "No name"
    }
}

