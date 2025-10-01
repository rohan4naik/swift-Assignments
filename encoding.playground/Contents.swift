import Foundation
class iOSSDP:Codable{
    var hostInstitute: String
    var cohort: String
    var size: Int
    init(hostInstitute: String, cohort: String, size: Int){
        self.hostInstitute = hostInstitute
        self.cohort = cohort
        self.size = size
    }
}

var mitiOSSDP = iOSSDP(hostInstitute: "MITWPU", cohort: "2025", size: 100)

var jsonEncoder = JSONEncoder()
if let data = try? jsonEncoder.encode(mitiOSSDP) {
    if let jsonString = String(data: data, encoding: .utf8){
        print(jsonString)
    }
}





protocol messenger{
    func passData(_ data: String)
}

class FirstView_Reciever: messenger{
    func passData(_ data: String){
        print("The data recieved is \(data)")
    }
}

class SecondView_Sender{
    var delegate: messenger?
    
    func sendData(_ data: String){
        delegate?.passData(data)
    }
}

var firstView = FirstView_Reciever()
var secondView = SecondView_Sender()
secondView.delegate = firstView
secondView.sendData("Hello World")
