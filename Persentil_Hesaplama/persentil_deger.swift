//
//  persentil_deger.swift
//  Persentil_Hesaplama
//
//  Created by CAGRI TEPE on 21/08/15.
//  Copyright (c) 2015 CAGRI TEPE. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds



class persentil_deger: UIViewController {
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    //IBOutlets
    @IBOutlet weak var scrollview_persentil: UIScrollView!
    
    @IBOutlet weak var yas_text: UILabel!
    @IBOutlet weak var agirlik_text: UILabel!
    @IBOutlet weak var boy_text: UILabel!
    @IBOutlet weak var bascevresi_text: UILabel!
    @IBOutlet weak var yas_deger: UILabel!
    @IBOutlet weak var agirlik_deger: UILabel!
    @IBOutlet weak var boy_deger: UILabel!
    @IBOutlet weak var bascevresi_deger: UILabel!
    
    @IBOutlet weak var agirlik_persentil_text: UILabel!
    @IBOutlet weak var boy_persentil_text: UILabel!
    @IBOutlet weak var bascevresi_persentil_text: UILabel!
    @IBOutlet weak var ideal_text: UILabel!
    @IBOutlet weak var persentil_text: UILabel!
    @IBOutlet weak var agirlik_ideal_deger: UILabel!
    @IBOutlet weak var agirlik_persentil_deger: UILabel!
    @IBOutlet weak var boy_ideal_deger: UILabel!
    @IBOutlet weak var boy_persentil_deger: UILabel!
    @IBOutlet weak var bascevresi_ideal_deger: UILabel!
    @IBOutlet weak var bascevresi_persentil_deger: UILabel!
   
    @IBOutlet weak var vucut_alani_text: UILabel!
    @IBOutlet weak var boyagoreagirlik_text: UILabel!
    
    @IBOutlet weak var vucut_alani_deger: UILabel!
    @IBOutlet weak var boyagoreagirlik_deger: UILabel!
    
    //variables
    
    var erkek_dis_renk:String = "89CFF0"
    var erkek_ic_renk:String = "DBEBF3"
    var kiz_dis_renk:String = "F4C2C2"
    var kiz_ic_renk:String = "F6E9E9"
    
    var yas_value:Double!
    var gecici_yas:Double!
    var yas_str:String!
    
    
    override func viewDidLoad() {
        
        bannerView.adUnitID = "ca-app-pub-4063829153261917/7420166985"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())
        
        scrollview_persentil.contentSize.height = 650
        
        yas_value = Double(yas)
        
        if (yas_value * 0.25 <= 1.5) {
            gecici_yas = yas_value * 0.25
            
        }
        else if ((yas_value-7) % 2 == 0) {
            gecici_yas = (yas_value - 7) * 0.5 + 2;
            
        }
        else {
            gecici_yas = (yas_value - 7) * 0.5 + 2;
            
        }
    
        if gecici_yas == 0.25 || gecici_yas == 0.75 || gecici_yas == 1.25 {
            yas_str = String(format: "%.2f", gecici_yas)
        }
        else {
            yas_str = String(format: "%.1f", gecici_yas)
        }
        
        yas_deger.text = yas_str
        var agirlik_str:String = String(format: "%.1f", agirlik)
        agirlik_deger.text = agirlik_str
        var boy_str:String = String(format: "%.1f", boy)
        boy_deger.text = boy_str
        var bascevresi_str:String = String(format: "%.1f", bascevresi)
        bascevresi_deger.text = bascevresi_str
        
        if flag == "erkek" {
        agirlik_ideal_deger.text = weight_ideal_sonuc
        agirlik_persentil_deger.text = weight_persentil_sonuc
        boy_ideal_deger.text = height_ideal_sonuc
        boy_persentil_deger.text = height_persentil_sonuc
        bascevresi_ideal_deger.text = bascevresi_ideal_sonuc
        bascevresi_persentil_deger.text = bascevresi_persentil_sonuc
        vucut_alani_deger.text = vucut_alan_sonuc
        boyagoreagirlik_deger.text = boya_gore_agirlik_sonuc

        }
        else {
            agirlik_ideal_deger.text = weight_ideal_sonuc
            agirlik_persentil_deger.text = weight_persentil_sonuc
            boy_ideal_deger.text = height_ideal_sonuc
            boy_persentil_deger.text = height_persentil_sonuc
            bascevresi_ideal_deger.text = bascevresi_ideal_sonuc
            bascevresi_persentil_deger.text = bascevresi_persentil_sonuc
            vucut_alani_deger.text = vucut_alan_sonuc
            boyagoreagirlik_deger.text = boya_gore_agirlik_sonuc
        }
        
        
        
        yas_text.layer.borderWidth = 1
        yas_text.layer.borderColor = UIColor.blackColor().CGColor
        yas_text.layer.cornerRadius = 8
        
        agirlik_text.layer.borderWidth = 1
        agirlik_text.layer.borderColor = UIColor.blackColor().CGColor
        agirlik_text.layer.cornerRadius = 8
        
        boy_text.layer.borderWidth = 1
        boy_text.layer.borderColor = UIColor.blackColor().CGColor
        boy_text.layer.cornerRadius = 8
        
        bascevresi_text.layer.borderWidth = 1
        bascevresi_text.layer.borderColor = UIColor.blackColor().CGColor
        bascevresi_text.layer.cornerRadius = 8
        
        yas_deger.layer.borderWidth = 1
        yas_deger.layer.borderColor = UIColor.blackColor().CGColor
        yas_deger.layer.cornerRadius = 8
        
        agirlik_deger.layer.borderWidth = 1
        agirlik_deger.layer.borderColor = UIColor.blackColor().CGColor
        agirlik_deger.layer.cornerRadius = 8
        
        boy_deger.layer.borderWidth = 1
        boy_deger.layer.borderColor = UIColor.blackColor().CGColor
        boy_deger.layer.cornerRadius = 8
        
        bascevresi_deger.layer.borderWidth = 1
        bascevresi_deger.layer.borderColor = UIColor.blackColor().CGColor
        bascevresi_deger.layer.cornerRadius = 8
        
        agirlik_persentil_text.layer.borderWidth = 1
        agirlik_persentil_text.layer.borderColor = UIColor.blackColor().CGColor
        agirlik_persentil_text.layer.cornerRadius = 8
        
        boy_persentil_text.layer.borderWidth = 1
        boy_persentil_text.layer.borderColor = UIColor.blackColor().CGColor
        boy_persentil_text.layer.cornerRadius = 8
        
        bascevresi_persentil_text.layer.borderWidth = 1
        bascevresi_persentil_text.layer.borderColor = UIColor.blackColor().CGColor
        bascevresi_persentil_text.layer.cornerRadius = 8
        
        agirlik_ideal_deger.layer.borderWidth = 1
        agirlik_ideal_deger.layer.borderColor = UIColor.blackColor().CGColor
        agirlik_ideal_deger.layer.cornerRadius = 8
        
        boy_ideal_deger.layer.borderWidth = 1
        boy_ideal_deger.layer.borderColor = UIColor.blackColor().CGColor
        boy_ideal_deger.layer.cornerRadius = 8
        
        bascevresi_ideal_deger.layer.borderWidth = 1
        bascevresi_ideal_deger.layer.borderColor = UIColor.blackColor().CGColor
        bascevresi_ideal_deger.layer.cornerRadius = 8

        agirlik_persentil_deger.layer.borderWidth = 1
        agirlik_persentil_deger.layer.borderColor = UIColor.blackColor().CGColor
        agirlik_persentil_deger.layer.cornerRadius = 8
        
        boy_persentil_deger.layer.borderWidth = 1
        boy_persentil_deger.layer.borderColor = UIColor.blackColor().CGColor
        boy_persentil_deger.layer.cornerRadius = 8
        
        bascevresi_persentil_deger.layer.borderWidth = 1
        bascevresi_persentil_deger.layer.borderColor = UIColor.blackColor().CGColor
        bascevresi_persentil_deger.layer.cornerRadius = 8
        
        ideal_text.layer.borderWidth = 1
        ideal_text.layer.borderColor = UIColor.blackColor().CGColor
        ideal_text.layer.cornerRadius = 8
        
        persentil_text.layer.borderWidth = 1
        persentil_text.layer.borderColor = UIColor.blackColor().CGColor
        persentil_text.layer.cornerRadius = 8
        
        
        vucut_alani_text.layer.borderWidth = 1
        vucut_alani_text.layer.borderColor = UIColor.blackColor().CGColor
        vucut_alani_text.layer.cornerRadius = 8
        
        vucut_alani_deger.layer.borderWidth = 1
        vucut_alani_deger.layer.borderColor = UIColor.blackColor().CGColor
        vucut_alani_deger.layer.cornerRadius = 8
        
        boyagoreagirlik_text.layer.borderWidth = 1
        boyagoreagirlik_text.layer.borderColor = UIColor.blackColor().CGColor
        boyagoreagirlik_text.layer.cornerRadius = 8
        
        boyagoreagirlik_deger.layer.borderWidth = 1
        boyagoreagirlik_deger.layer.borderColor = UIColor.blackColor().CGColor
        boyagoreagirlik_deger.layer.cornerRadius = 8
        


        
        if flag == "erkek" {
            
            yas_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            agirlik_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            boy_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            bascevresi_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            
            ideal_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            persentil_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            agirlik_persentil_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            boy_persentil_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            bascevresi_persentil_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            vucut_alani_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            boyagoreagirlik_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            
            
            yas_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            agirlik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            boy_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            bascevresi_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            
            agirlik_ideal_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            boy_ideal_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            bascevresi_ideal_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            agirlik_persentil_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            boy_persentil_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            bascevresi_persentil_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            vucut_alani_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            boyagoreagirlik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            
        }
        else {
            
            yas_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            agirlik_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            boy_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            bascevresi_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            
            ideal_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            persentil_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            agirlik_persentil_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            boy_persentil_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            bascevresi_persentil_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            vucut_alani_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            boyagoreagirlik_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor

            
            yas_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            agirlik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            boy_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            bascevresi_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            
            agirlik_ideal_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            boy_ideal_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            bascevresi_ideal_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            agirlik_persentil_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            boy_persentil_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            bascevresi_persentil_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            vucut_alani_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            boyagoreagirlik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            
            
        }
        
        

    }
    

    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(advance(cString.startIndex, 1))
        }
        
        if (count(cString) != 6) {
            return UIColor.grayColor()
        }
        
        var rgbValue:UInt32 = 0
        NSScanner(string: cString).scanHexInt(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}