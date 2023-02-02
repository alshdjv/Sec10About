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
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "My Uztelecom"
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Версия 3.0.1"
        label.textColor = UIColor(red: 170/255, green: 171/255, blue: 173/255, alpha: 1.0)
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    private let firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("Публичная оферта компании", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .semibold)
        button.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1.0)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        return button
    }()
    
    private let secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Оферта платёжной платформы", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .semibold)
        button.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1.0)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        return button
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
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(firstButton)
        self.addSubview(secondButton)
    }
    
    private func setConstraints() {
        
        logoImg.snp.makeConstraints { make in
            make.centerX.equalTo(self.snp.centerX)
            make.size.equalTo(CGSize(width: 96, height: 96))
        }
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalTo(self.logoImg.snp.bottom).offset(24)
            make.centerX.equalTo(self.snp.centerX)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(self.firstLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self.snp.centerX)
        }
        
        firstButton.snp.makeConstraints { make in
            make.top.equalTo(self.secondLabel.snp.bottom).offset(64)
            make.leading.equalTo(self.snp.leading).offset(24)
            make.trailing.equalTo(self.snp.trailing).offset(-24)
            make.centerY.equalToSuperview()
            make.height.equalTo(44)
        }
        
        secondButton.snp.makeConstraints { make in
            make.top.equalTo(self.firstButton.snp.bottom).offset(16)
            make.leading.equalTo(self.firstButton.snp.leading)
            make.trailing.equalTo(self.firstButton.snp.trailing)
            make.height.equalTo(44)
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

