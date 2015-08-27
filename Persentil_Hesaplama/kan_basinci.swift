//
//  kan_basinci.swift
//  Persentil_Hesaplama
//
//  Created by CAGRI TEPE on 21/08/15.
//  Copyright (c) 2015 CAGRI TEPE. All rights reserved.
//

import Foundation
import UIKit
import iAd


class kan_basinci: UIViewController,ADBannerViewDelegate {
   
  
    @IBOutlet weak var bannerView: ADBannerView!
    
    //IBOutlets
    @IBOutlet weak var scrollview_kan: UIScrollView!
    
    @IBOutlet weak var yas_text: UILabel!
    @IBOutlet weak var agirlik_text: UILabel!
    @IBOutlet weak var boy_text: UILabel!
    @IBOutlet weak var bascevresi_text: UILabel!
    @IBOutlet weak var yas_deger: UILabel!
    @IBOutlet weak var agirlik_deger: UILabel!
    @IBOutlet weak var boy_deger: UILabel!
    @IBOutlet weak var bascevresi_deger: UILabel!
    
    
    @IBOutlet weak var sistolik_view: UIView!
    @IBOutlet weak var diastolik_view: UIView!
    @IBOutlet weak var kb_persentil_text: UILabel!
    @IBOutlet weak var ellip_text: UILabel!
    @IBOutlet weak var doksanp_text: UILabel!
    @IBOutlet weak var doksanbesp_text: UILabel!
    @IBOutlet weak var doksandokuzp_text: UILabel!
    @IBOutlet weak var ellip_sistolik_deger: UILabel!
    @IBOutlet weak var ellip_diastolik_deger: UILabel!
    @IBOutlet weak var doksanp_sistolik_deger: UILabel!
    @IBOutlet weak var doksanp_diastolik_deger: UILabel!
    @IBOutlet weak var doksanbesp_sistolik_deger: UILabel!
    @IBOutlet weak var doksanbesp_diastolik_deger: UILabel!
    @IBOutlet weak var doksandokuzp_sistolik_deger: UILabel!
    @IBOutlet weak var doksandokuzp_diastolik_deger: UILabel!
    
    //variables
    
    var erkek_dis_renk:String = "89CFF0"
    var erkek_ic_renk:String = "DBEBF3"
    var kiz_dis_renk:String = "F4C2C2"
    var kiz_ic_renk:String = "F6E9E9"
    
    var yas_value:Double!
    var gecici_yas:Double!
    var yas_str:String!
    
    override func viewDidLoad() {
        
             
        scrollview_kan.contentSize.height = 630
        
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
            
            ellip_sistolik_deger.text = sistolik_50_sonuc
            doksanp_sistolik_deger.text = sistolik_90_sonuc
            doksanbesp_sistolik_deger.text = sistolik_95_sonuc
            doksandokuzp_sistolik_deger.text = sistolik_99_sonuc
            ellip_diastolik_deger.text = diastolik_50_sonuc
            doksanp_diastolik_deger.text = diastolik_90_sonuc
            doksanbesp_diastolik_deger.text = diastolik_95_sonuc
            doksandokuzp_diastolik_deger.text = diastolik_99_sonuc
            
            
        }
        else{
            ellip_sistolik_deger.text = sistolik_50_sonuc
            doksanp_sistolik_deger.text = sistolik_90_sonuc
            doksanbesp_sistolik_deger.text = sistolik_95_sonuc
            doksandokuzp_sistolik_deger.text = sistolik_99_sonuc
            ellip_diastolik_deger.text = diastolik_50_sonuc
            doksanp_diastolik_deger.text = diastolik_90_sonuc
            doksanbesp_diastolik_deger.text = diastolik_95_sonuc
            doksandokuzp_diastolik_deger.text = diastolik_99_sonuc
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
        
        
        sistolik_view.layer.borderWidth = 1
        sistolik_view.layer.borderColor = UIColor.blackColor().CGColor
        sistolik_view.layer.cornerRadius = 8
        
        diastolik_view.layer.borderWidth = 1
        diastolik_view.layer.borderColor = UIColor.blackColor().CGColor
        diastolik_view.layer.cornerRadius = 8
        
        kb_persentil_text.layer.borderWidth = 1
        kb_persentil_text.layer.borderColor = UIColor.blackColor().CGColor
        kb_persentil_text.layer.cornerRadius = 8
        
        ellip_text.layer.borderWidth = 1
        ellip_text.layer.borderColor = UIColor.blackColor().CGColor
        ellip_text.layer.cornerRadius = 8
        
        doksanp_text.layer.borderWidth = 1
        doksanp_text.layer.borderColor = UIColor.blackColor().CGColor
        doksanp_text.layer.cornerRadius = 8
        
        doksanbesp_text.layer.borderWidth = 1
        doksanbesp_text.layer.borderColor = UIColor.blackColor().CGColor
        doksanbesp_text.layer.cornerRadius = 8
        
        doksandokuzp_text.layer.borderWidth = 1
        doksandokuzp_text.layer.borderColor = UIColor.blackColor().CGColor
        doksandokuzp_text.layer.cornerRadius = 8
        
        ellip_sistolik_deger.layer.borderWidth = 1
        ellip_sistolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        ellip_sistolik_deger.layer.cornerRadius = 8
        
        ellip_diastolik_deger.layer.borderWidth = 1
        ellip_diastolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        ellip_diastolik_deger.layer.cornerRadius = 8

        doksanp_sistolik_deger.layer.borderWidth = 1
        doksanp_sistolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksanp_sistolik_deger.layer.cornerRadius = 8
        
        doksanp_diastolik_deger.layer.borderWidth = 1
        doksanp_diastolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksanp_diastolik_deger.layer.cornerRadius = 8
        
        doksanbesp_sistolik_deger.layer.borderWidth = 1
        doksanbesp_sistolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksanbesp_sistolik_deger.layer.cornerRadius = 8

        doksanbesp_diastolik_deger.layer.borderWidth = 1
        doksanbesp_diastolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksanbesp_diastolik_deger.layer.cornerRadius = 8
        
        doksandokuzp_sistolik_deger.layer.borderWidth = 1
        doksandokuzp_sistolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksandokuzp_sistolik_deger.layer.cornerRadius = 8
        
        doksandokuzp_diastolik_deger.layer.borderWidth = 1
        doksandokuzp_diastolik_deger.layer.borderColor = UIColor.blackColor().CGColor
        doksandokuzp_diastolik_deger.layer.cornerRadius = 8


        
        
        if flag == "erkek" {
            
            yas_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            agirlik_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            boy_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            bascevresi_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            
            sistolik_view.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            diastolik_view.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            kb_persentil_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            ellip_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            doksanp_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            doksanbesp_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            doksandokuzp_text.layer.backgroundColor = hexStringToUIColor(erkek_dis_renk).CGColor
            
            yas_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            agirlik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            boy_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            bascevresi_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            ellip_sistolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            ellip_diastolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksanp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksanp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksanbesp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksanbesp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksandokuzp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            doksandokuzp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(erkek_ic_renk).CGColor
            
        }
        else {
            
            yas_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            agirlik_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            boy_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            bascevresi_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            
            sistolik_view.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            diastolik_view.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            kb_persentil_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            ellip_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            doksanp_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            doksanbesp_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            doksandokuzp_text.layer.backgroundColor = hexStringToUIColor(kiz_dis_renk).CGColor
            
            yas_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            agirlik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            boy_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            bascevresi_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            ellip_sistolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            ellip_diastolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksanp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksanp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksanbesp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksanbesp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksandokuzp_sistolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            doksandokuzp_diastolik_deger.layer.backgroundColor = hexStringToUIColor(kiz_ic_renk).CGColor
            
            
        }
        
        self.canDisplayBannerAds = true
        self.bannerView?.delegate = self
        self.bannerView?.hidden = true
        
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
    
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        
        self.bannerView?.hidden = false
        
    }
    
    func bannerViewActionDidFinish(banner: ADBannerView!) {
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        self.bannerView?.hidden = true
    }

    
}