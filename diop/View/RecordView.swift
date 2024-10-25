//
//  RecordView.swift
//  diop
//
//  Created by Josymarss on 01/10/24.
//

import SwiftUI

struct RecordView: View {
    @State private var audioVm = AudioModel()
    @State private var isRecording = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 150){
            Image("dioplogo")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 200)
            
            VStack(spacing:20){
            Button {
                print("Start recording...")
                withAnimation(){
                    isRecording.toggle()
                }
            } label: {
               
                if !isRecording{
                    RecordComponentView(icon: "microphone", text: "Ask something to Diop")
                }
                else{
                    
                    Button{
                        withAnimation(){
                            isRecording.toggle()
                        }
                    }
                    label:{
                        RecordComponentView(icon: "stop.fill", text: "Stop recording", systName: true)
                        }
                    }
                }
                    
                }
        }
            .frame(height:100)
            
            
            
//            HStack(spacing:0){
//                        Image("dot")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundStyle(.blue)
//                        Image("dot")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundStyle(.blue)
//                        Image("dot")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundStyle(.blue)
                
//            }
        }
        

    }


struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}

struct RecordComponentView: View {
    var icon: String
    var text: String
    var systName: Bool?
    
    var body: some View {
        VStack(spacing:20){
            systName ?? false ? Image(systemName:icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color("sysBlue")) :
            
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundStyle(Color("sysBlue"))
            
            Text(text)
                .foregroundStyle(Color("sysBlue"))
        }
    }
}
