//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by Joseph Bielas on 1/2/19.
//  Copyright © 2019 DevMettle. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
   
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
