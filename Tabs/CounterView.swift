//
//  CounterView.swift
//  Tabs
//
//  Created by win603 on 03/11/25.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var counter : Counter = Counter()
    
    var body: some View {
        VStack{
            Text("The final countdown")
                .font(.system(size: 35))
                .foregroundColor(.red)
                .fontWeight(.bold)
            Text("\(self.counter.number)")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            
            HStack{
                Button(action: {
                    self.counter.stop()
                }){
                    HStack{
                        
                        Image(systemName: "stop.fill").foregroundColor(.white)
                        
                        Text("Stop")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                    } .padding(.all)
                }.background(Color.red)
                
                
                Button(action: {
                    self.counter.start()
                }){
                    HStack{
                        
                        Image(systemName: "play.fill").foregroundColor(.white)
                        
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                    } .padding(.all)
                }.background(Color.green)
            }
        }
        .frame(width: 500, height: 900)
        .background(.black)
        .ignoresSafeArea(.all)
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
