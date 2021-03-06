//
//  HomeView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("ribs")
                    .border(width: 5, edges: [.bottom], color: .black)
                    .offset(y: -50)
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 175, height: 175)
                        .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 4)
                            )
                    Image("logo")
                        .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                }
                .offset(y: 40)
            }
            
            Text("Crossbuck BBQ")
                .font(.title)
                .bold()
                .padding(.top, 100)
            Text("The Crossroads of American BBQ")
                .italic()
                .padding(.bottom, 30)
            HStack{
                
                social(img: "insta", lnk: "https://www.instagram.com/crossbuckbbq/")
                social(img: "face", lnk: "https://www.facebook.com/crossbuckbbq")
            }
            .padding(.top, 50)
            PhoneBubble(text: "+1-212-456-7890")
            WebBubble(text: "www.crossbuckbbq.com")
                .padding(.bottom, 30)
            Spacer()
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct PhoneBubble: View {
    let text : String
    var body: some View {
        Link(destination: URL(string: "tel:9493073665")!) {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350, height: 50, alignment: .center)
                    .foregroundColor(.blue)
                
                Text(text)
                    .foregroundColor(.white)
            }
            .padding()
        }
        
    }
}

struct WebBubble: View {
    let text : String
    var body: some View {
        Link(destination: URL(string: "https://www.crossbuckbbq.com/")!) {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350, height: 50, alignment: .center)
                    .foregroundColor(.blue)
                
                Text(text)
                    .foregroundColor(.white)
            }
            .padding()
        }
        
    }
}
struct social: View {
    let img : String
    let lnk : String
    var body: some View {
        Link(destination: URL(string: lnk)!) {
            Image(img)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
}
struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}
extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
