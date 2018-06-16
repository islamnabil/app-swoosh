//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Islam on 6/15/18.
//  Copyright © 2018 Islam. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var NextBtn: BorderButton!
    var player : Player!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        LeagueType(LeagueSelected: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        LeagueType(LeagueSelected: "Womens")

    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        LeagueType(LeagueSelected: "Coed")

    }
    
    func LeagueType(LeagueSelected: String){
        player.desiredLeague = LeagueSelected
        NextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
