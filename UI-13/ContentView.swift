//
//  ContentView.swift
//  UI-13
//
//  Created by にゃんにゃん丸 on 2020/11/02.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  Home : View {
    var body: some View{
        
        NavigationView{
            
            NavigationLink(
                destination: Next(),
                label: {
                    Label(
                        title: {
                            Text("happy")
                                .fontWeight(.heavy)
                                .foregroundColor(.primary)
                            
                            
                            
                            
                        },
                        icon: { Image(systemName: "cart")
                            .font(.system(size: 30, weight: .bold))
                            
                            
                            
                        })
                        
                })
                .navigationTitle("First")
                
            
                
                
            
            
            
            
        }
        .padding()
       
        
        
    }
}


struct Next : View {
    
    @State var black = Color.primary.opacity(0.3)
    @Environment(\.presentationMode) var present
    
    
    
    var body: some View{
        
        VStack{
            
            HStack{
                
                
                Button(action: {present.wrappedValue.dismiss()}, label: {
                    
                    Image(systemName: "xmark")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(black)
                    
                })
                .padding()
                
                Spacer()
                
                
            }
            Spacer(minLength: 0)
            
        
            Lottie(animationname: "a1")
                .frame(height: UIScreen.main.bounds.height / 2)
            
            Text("suica")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(black)
            
            
            Text("load")
                .font(.title2)
                .font(.system(size: 40, weight: .heavy))
            
            Spacer()
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Start")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(black)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.red)
                
            })
            .padding(.top,30)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct Lottie : UIViewRepresentable {
    
    var animationname : String
    func makeUIView(context: Context) -> AnimationView {
        
        let view = AnimationView(name: animationname, bundle: Bundle.main)
        
        view.loopMode = .loop
        view.play()
        
        
        
        return view
        
    }
    
    
    func updateUIView(_ uiView: AnimationView, context: Context) {
        
    }
    
}


