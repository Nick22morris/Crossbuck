//
//  MenuView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack{
                    Text("Proteins")
                        .bold()
                        .font(.title)
                        ForEach(ProteinMenu, id: \.name) { item in
                            Item(name: item.name, description: item.description)
                        }
                        .listStyle(.insetGrouped)
                    Text("Sides")
                        .bold()
                        .font(.title)
                        ForEach(ProteinMenu, id: \.name) { item in
                            Item(name: item.name, description: item.description)
                        }
                        .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
struct Item: View {
    let name: String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(name)
                    .bold()
                    .padding(.leading, 10)
                    .padding(.bottom, 10)
                Spacer()
            }
            HStack{
                Text(description)
                    .italic()
                    .padding(.leading, 10)
                    .padding(.bottom, 20)
                Spacer()
            }
        }
    }
}
