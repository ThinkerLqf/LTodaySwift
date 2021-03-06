//
//  LQFHomeImageTableCell.swift
//  LTodaySwift
//
//  Created by liqunfei on 2017/9/28.
//  Copyright © 2017年 LQF. All rights reserved.
//

import UIKit

class LQFHomeImageTableCell: UITableViewCell {
    @IBOutlet weak var bgImageView: UIImageView!

    @IBOutlet weak var imageCountLabel: UILabel!
    
    @IBOutlet weak var imageTitleLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var filterButton: UIButton!
    
    var homeImage: WeitoutiaoModel? {
        didSet {
            if let gallaryImageCount = homeImage!.gallary_image_count {
                if gallaryImageCount > 0 {
                    imageCountLabel.text = "\(gallaryImageCount)图"
                }
                else {}
            }
            imageTitleLabel.text = homeImage!.title! as String
            timeLabel.text = homeImage!.commentCount! + "评论"
            if let mediaInfo = homeImage!.media_info {
                usernameLabel.text = mediaInfo.name!
            }
            
            let firstImage = homeImage?.image_list.first
            if let urlStr = firstImage?.url {
                let url = URL(string: urlStr)
                bgImageView.kf.setImage(with: url)
            }
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
