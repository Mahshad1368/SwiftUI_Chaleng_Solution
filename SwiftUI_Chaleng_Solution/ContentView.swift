//
//  ContentView.swift
//  SwiftUI_Chaleng_Solution
//
//  Created by Mahshad Jafari on 31.07.24.
//
import UIKit
import SwiftUI


struct RoundedNumber: ViewModifier {
    
    let backgroundColor : Color?
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(backgroundColor)
            .clipShape(Circle())
            .font(.headline)
            .foregroundColor(.black)
    }
}

extension View {
    func roundedNumber(backgroundColor: Color?) -> some View{
            self
            .modifier(RoundedNumber(backgroundColor: backgroundColor))
        }
    }
    

struct ContentView: View {
    
  @State var buttonBackground: [Color] = [.red, .green, .yellow, .purple, .pink, Color(#colorLiteral(red: 1, green: 0.3551669878, blue: 0.1194818034, alpha: 1))]
    var body: some View {
        
        VStack(spacing: 20.0) {
            
            Button(action: 
                    { buttonBackground.shuffle()})
            {
                
                Text("1")
                    .roundedNumber(backgroundColor: buttonBackground.randomElement())
                    .frame(width: 190, alignment: .leading)
            }
       
            Button(action:
                    {
                buttonBackground.shuffle()
            })
            {
                
                Text("2")
                    .roundedNumber(backgroundColor: buttonBackground.randomElement())
                    .frame(width: 190, alignment: .center)
            }
            
            Button(action:
                    {
                buttonBackground.shuffle()
            })
            {
                
                Text("3")
                    .roundedNumber(backgroundColor: buttonBackground.randomElement())
                    .frame(width: 190, alignment: .trailing)
            }
            
        
        }
        
    }
}

#Preview {
    ContentView()
}
