//
//  AudioModel.swift
//  diop
//
//  Created by Josymarss on 01/10/24.
//

import Foundation
import AVFAudio

class AudioModel {
    var audio: String?
    var answer: String?
    
    
    init(audio:String="", answer: String? = nil){
        self.audio = audio
        self.answer = answer
    }
    
    func convertToText(audio:String) -> String {
        ""
    }
    func giveAnswer(audio:String) -> String {
        ""
    }
    
//    func recordAudio() -> AVAudioRecorder {
//        return AVAudioRecorder
//    }
    
}
