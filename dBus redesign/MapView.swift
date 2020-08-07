import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var busStopPoints: [BusStopPoint]
    @Binding var centerCoordinate: CLLocationCoordinate2D
    @Binding var cardPosition: CardPosition
    @Binding var selectedPoint: BusStopPoint
        
    var locationManager = CLLocationManager()
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }

    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.delegate = context.coordinator
        mapView.showsUserLocation = true
        mapView.setCamera(MKMapCamera(lookingAtCenter: centerCoordinate, fromDistance: CLLocationDistance(1000), pitch: 0, heading: CLLocationDirection(0)), animated: true)
        mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.publicTransport])
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.removeAnnotations(busStopPoints)
        uiView.addAnnotations(busStopPoints)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let identifier = "Stop"
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            if annotationView == nil {
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
            } else {
                annotationView?.annotation = annotation
            }
            
            if annotation is BusStopPoint {
                print(parent.colorScheme)
                annotationView?.image = UIImage(named: "bus-stop-pin")
                
            }

            return annotationView
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let selectedAnnotation = view.annotation as? BusStopPoint {
                print(selectedAnnotation.title!)
                parent.selectedPoint = selectedAnnotation
                parent.cardPosition = .middle
            }
        }
    }
}
