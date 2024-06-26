//
//  ContentView.swift
//  ColorsNav
//
//  Created by Nermina Jašarević on 10/29/21.
//

import SwiftUI

struct Color: Identifiable, Hashable {
    var id = UUID()
    var name: String

struct ColorsView: View {
    
    var colors: [Color] = [Color(name: "red"), Color(name: "orange"), Color(name:"yellow"), Color(name:"green"), Color(name:"blue"), Color(name:"purple"), Color(name:"brown")]
    
    var body: some View {
        NavigationView {
            List(colors) { color in
                NavigationLink(destination: Text(color.name))
                {
                    VStack(alignment: .leading) {
                        Text(color.name)
                    }
                }
            }
        }
    }
    
struct Content_Previews: PreviewProvider {
 static var previews: some View {
     ColorsView()
 }
}
}}
