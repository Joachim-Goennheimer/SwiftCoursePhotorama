//
//  TagDataSource.swift
//  Photorama
//
//  Created by Joachim Goennheimer on 27.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

// import Foundation

import UIKit
import CoreData

class TagDataSource: NSObject, UITableViewDataSource {
    var tags: [Tag] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tags.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let tag = tags[indexPath.row]
        cell.textLabel?.text = tag.name
        cell.accessibilityHint = "Doppel-Tap um Ausgewähltes umzuschalten"
        return cell
    }
}
