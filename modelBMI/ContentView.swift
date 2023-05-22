//
//  ContentView.swift
//  modelBMI
//
//  Created by shaima on 02/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue : Float = 0.0
    @State var ssliderValue : Float = 0.0
    @State var changeBackground = true
    var body: some View {
        ZStack{
            
    if ssliderValue > sliderValue {
                
                Color.red.opacity(0.3)
                .ignoresSafeArea()}
            else{
                Color.green.opacity(0.3)
                .ignoresSafeArea()}
            
            
            
            
        
        VStack{
            
            Spacer()
            Text("الطول")
            Text("\(sliderValue)")
            Slider(value: $sliderValue, in: 0...250)
                .padding()
            
            
            
            
            
            //القياس الثاني
            Text("الوزن")
            Text("\(ssliderValue)")
            Slider(value: $ssliderValue, in: 0...500)
                .padding()
            
            Spacer()
            Button("احسب") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/}
            .frame(width: 200,height: 100)
            
        }
        .frame(width: 350)
    }
    }
}

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
