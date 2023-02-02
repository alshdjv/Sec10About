import UIKit
import SnapKit

final class SettingsAboutView: UIView {
    
    private let logoImg: UIImageView = {
        let image = UIImage(named: "myuzt_logo")
        let imageView = UIImageView(image: image?.withRenderingMode(.alwaysOriginal))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 24
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViewUI()
    }
    
    private func setupViewUI() {
        self.addSubviews()
        self.setConstraints()
    }
    
    private func addSubviews() {
        self.addSubview(logoImg)
    }
    
    private func setConstraints() {
        
        logoImg.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(74)
            make.leading.equalTo(self.snp.leading).offset(140)
            make.size.equalTo(CGSize(width: 96, height: 96))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
}

final class SettingsAboutViewController: UIViewController {
    
    private let settingAbout = SettingsAboutView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        
        self.setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(settingAbout)
        
        settingAbout.snp.makeConstraints { make in
            make.top.bottom.equalTo(self.view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
    
}

