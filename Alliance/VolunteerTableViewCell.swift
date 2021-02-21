//

//
import Foundation
import UIKit

class VolunteerTableViewCell: UITableViewCell {
    
    // We want to date to be on left side, typable textbox
    let date = UITextField()
    // We want organization name to be after date, typeable textbox
    let orgname = UITextField()
    // We want description of the activity to be under org name, typeable textbox
    let descrip = UITextField()
    // get total hours from input and put to right of org name, label
   // let hours = UILabel()
    
    // IMPORTANT: Every type of cell must have a cell identifier so the TableView can deque it
    static let cellId = "VolunteerCell"
    
    // initializes a cell with a style and identifier
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .systemBackground
    }
    
    // required protocol when subclassing some UI classes
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Build our cell's views!
    func setupViews() {
        
        addSubview(date)
        addSubview(orgname)
        addSubview(descrip)
      //  addSubview(hours)
        
        date.placeholder = "Enter date..."
        orgname.placeholder = "Enter the organization name..."
        descrip.placeholder = "Enter a description..."
        
        // Let's put the date in the leftmost section of the cell
        date.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            date.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            date.widthAnchor.constraint(equalToConstant: 150),
            date.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            date.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
        date.backgroundColor = .blue
        
        // The orgname will go to the right of the poster. Let's make it only take up the top half of the cell.
        orgname.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            orgname.leadingAnchor.constraint(equalTo: orgname.trailingAnchor, constant: 10),
            orgname.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            orgname.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            orgname.heightAnchor.constraint(equalToConstant: 30)
        ])
        orgname.backgroundColor = .red
        
        // The description should go directly beneath the title.
        descrip.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descrip.leadingAnchor.constraint(equalTo: orgname.trailingAnchor, constant: 10),
            descrip.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            descrip.topAnchor.constraint(equalTo: orgname.bottomAnchor, constant: 3),
            descrip.heightAnchor.constraint(equalToConstant: 100)
        ])
        descrip.backgroundColor = .yellow
        
  /*      // The release date is at the bottom left of the cell, to the right of the poster.
        releaseDate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            releaseDate.leadingAnchor.constraint(equalTo: poster.trailingAnchor, constant: 5),
            releaseDate.widthAnchor.constraint(equalToConstant: 100),
            releaseDate.topAnchor.constraint(equalTo: overview.bottomAnchor, constant: 3),
            releaseDate.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3)
        ])
        releaseDate.backgroundColor = .green
        
        // The rating is the at the bottom right of the cell, right after the release date.
        rating.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rating.leadingAnchor.constraint(equalTo: releaseDate.trailingAnchor, constant: 10),
            rating.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            rating.topAnchor.constraint(equalTo: overview.bottomAnchor, constant: 3),
            rating.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3)
        ])
        rating.backgroundColor = .purple */
    }
    
}
