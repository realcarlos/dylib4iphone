//
//  MainWindowController.swift
//  dylib_invoke
//
//  Created by EnchantCode on 2022/10/16.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    private var timer: Timer?
    
    override var windowNibName: NSNib.Name?{
        return "MainWindow"
    }
    
    @IBOutlet weak var label: NSTextField!{
        didSet{
            label.stringValue = ""
        }
    }
    @IBOutlet weak var InvokeButton: NSButton!{
        didSet{
            InvokeButton.title = "Invoke"
        }
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        
    }
    
    @IBAction func onClickInvoke(_ sender: NSButton) {
        
        InvokeButton.title = "Running..."
        InvokeButton.isEnabled = false
        timer = .scheduledTimer(withTimeInterval: 0.05, repeats: true) {[weak self] timer in
            // 文字列を取得
            let nextChar: CChar = nextChar()
            guard nextChar != 0x00,
                  let nextCharScaler = UnicodeScalar(Int(nextChar)) else {
                timer.invalidate()
                self?.InvokeButton.title = "Invoke"
                self?.InvokeButton.isEnabled = true
                return
            }
            
            // ラベルに追加
            self?.label.stringValue += String(nextCharScaler)
        }
    }
    
    @IBAction func onClickClear(_ sender: NSButton) {
        self.label.stringValue = ""
    }
}
