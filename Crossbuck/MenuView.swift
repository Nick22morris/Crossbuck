//
//  MenuView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct MenuView: View {
    let move = -150.0
    var body: some View {
            ScrollView {
                Image("cut")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -50)
                    .frame(height: 150)
                    .ignoresSafeArea()
                
                topper(head: "Menu", move: move)
                VStack{
                    Text("Proteins")
                        .bold()
                        .font(.title2)
                        ForEach(ProteinMenu, id: \.name) { item in
                            Item(name: item.name, description: item.description)
                                .padding()
                        }
                        .listStyle(.insetGrouped)
                    Divider()
                    Text("Sides")
                        .bold()
                        .font(.title2)
                        ForEach(SideMenu, id: \.name) { item in
                            Item(name: item.name, description: item.description)
                                .padding()
                        }
                        .listStyle(.insetGrouped)
                }
                .offset( y: move + 50)
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
                    .foregroundColor(.yellow)
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
