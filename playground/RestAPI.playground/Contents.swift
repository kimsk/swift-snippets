import Foundation
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely()

let urlPath = "http://json.schemastore.org/chutzpah"
let url: NSURL = NSURL(string: urlPath)!
let session = NSURLSession.sharedSession()
let task = session.dataTaskWithURL(url, completionHandler: {data, response, error -> Void in
    
    if error != nil {
        // If there is an error in the web request, print it to the console
        println(error.localizedDescription)
    }
    
    var err: NSError?
    var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! NSDictionary
    if err != nil {
        // If there is an error parsing JSON, print it to the console
        println("JSON Error \(err!.localizedDescription)")
    }
    
    println(jsonResult)

    let json = jsonResult as! NSDictionary
    
    println(json["title"]!)
    println(json["type"]!)
    
    
})
task.resume()