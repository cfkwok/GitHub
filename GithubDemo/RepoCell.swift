//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Chun Kwok on 1/28/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    var name: String?
    var ownerHandle: String?
    var ownerAvatarURL: String?
    var stars: Int?
    var forks: Int?
    var repoDescription: String?
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            authorLabel.text = repo.ownerHandle
            starLabel.text = String(repo.stars)
            shareLabel.text = String(repo.forks)
            descriptionLabel.text = repo.repoDescription
            logoImageView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
