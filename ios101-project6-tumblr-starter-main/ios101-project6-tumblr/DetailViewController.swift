//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Smyan Jaipuriyar on 10/27/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    var post: Post!
    
    @IBOutlet weak var postDetailLabel: UILabel!
    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var postImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //postDetailLabel.text = post.summary
        //postImageView.image = post.photo
        navigationItem.largeTitleDisplayMode = .never
        captionTextView.text = post.caption.trimHTMLTags()
        postDetailLabel.text = "Caption"
        captionTextView.textColor = UIColor.black
        
        // Do any additional setup after loading the view.
        
        if let photo = post.photos.first{
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView)
        }
         
    }
         

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
