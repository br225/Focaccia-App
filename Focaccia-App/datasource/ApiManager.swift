//
//  ApiManager.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 02/07/2021.
//

import UIKit

enum RecipeTag :String {
    
    case vegetarian = "vegetarian " ,vegan = " vegan", all = ""
}
class ApiManager {
    
let apiKey = "c616d9dc2a5641fd9a8f67633ceb20c9"
//https://api.spoonacular.com/recipes/random?number=1&tags=vegetarian,dessert
let host:String = "api.spoonacular.com"
let scheme:String = "https"
let path:String = "/recipes/random"

enum ApiError: Error {
    case corruptedUrl(String), corruptedData (String), jsonParserError(String)
}

func getRecipes(callBake: @escaping ([Recipe],Error?)-> Void, number:Int,tags:[RecipeTag] = []){
var componenets = URLComponents()
    componenets.scheme = self.scheme
    componenets.host = self.host
    componenets.path = self.path
    var q: [URLQueryItem] = [URLQueryItem(name: "apiKey", value: self.apiKey), URLQueryItem(name: "number", value: String(number))]

    if !tags.isEmpty{
        var value = ""
        for tag in tags {
            value += tag.rawValue + ","
            
        }
        value.removeLast()
        q.append(URLQueryItem(name: "tags", value: value))
    }
    componenets.queryItems = q
    guard let url = componenets.url else {
        callBake([],ApiError.corruptedUrl("The Url provided is corrupted."))
        return}
    
    URLSession.shared.dataTask(with: url) {(data,response, error) in
        if let err = error {
            callBake([], err)
            return
        }
        guard let data = data else {
            callBake([], ApiError.corruptedData("The data recevied by the URL is corrupted."))
            return}
        let decoder = JSONDecoder()
        
        guard let apiResponse = try? decoder.decode(ApiResponse.self, from: data) else {
            callBake([], ApiError.jsonParserError(" The Data could not be parsed."))
            return}
        print(apiResponse.recipes)
        callBake(apiResponse.recipes,nil)
    }.resume()
}
}
