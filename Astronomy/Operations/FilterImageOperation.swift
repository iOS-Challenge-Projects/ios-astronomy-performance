//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by FGT MAC on 4/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class FilterImageOperation: Operation {
    
    let fetchOperation: FetchPhotoOperation
    private(set) var image: UIImage?
    
    init(fetchOperation: FetchPhotoOperation ) {
        self.fetchOperation = fetchOperation
    }
    
    
    //This will automatically run when the Operations runs
    //We use main because we dont need to cancel this operation
    //If we would need to cancel it for some reason we could override start()
    override func main() {
        if let data = fetchOperation.imageData,
            let image = UIImage(data: data) {
            self.image = image.filtered()
            NSLog("Finished Filtering image")
        }
    }
    
}
