import UIKit

class DogsView: UIView {

    var tableView = UITableView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
