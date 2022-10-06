

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        
        
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 1
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName,
            withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

    

}

