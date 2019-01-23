
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
   
    
    @IBAction func libraryButton(_ sender: Any) {
        // セグエを使用して画面を遷移
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    
    //↓追記した部分
    //対応したボタンが押された時の動作を記述
    @IBAction func Camera(_ sender: UIButton) {
        
        // セグエを使用して画面を遷移
        performSegue(withIdentifier: "cameraStart", sender: nil)
        
//        //インスタンス作成
//        let pickerController = UIImagePickerController()
//        
//        //ソースタイプを指定(cameraの場合はplistでカメラ使用を許可すること)
//        pickerController.sourceType = .camera
//        
//        //カメラを表示
//        present(pickerController, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
