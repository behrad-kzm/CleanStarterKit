//
//  Strings.swift
//  BarandehShow
//
//  Created by Behrad Kazemi on 12/30/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation
enum Strings {
    enum Shared {
        static let currency = " تومان"
        static let purchase = "خرید"
        static let username = "کاربر جدید"
    }
    enum Onboarding {
        static let about = { return OnboardingStringDataModel(title: "برنامه چیست؟", description: "مسابقه‌ی برنده شو بزرگ‌ترین و مهیج‌ترین برنامه‌ی تلویزیونی صدا و سیمای جمهوری اسلامی ایران است که توسط تیمی مجرب تولید می‌شود. این مسابقه را از دست ندهید.") }
        static let prizes = { return OnboardingStringDataModel(title: "جوایز ارزنده", description:"در این برنامه شرکت‌کنندگان می‌توانند جوایز نقدی ارزنده‌ای را به دست آورند. البته این همه‌ی ماجرا نیست. از بین تمام کاربران اپلیکیشن برنده شو، هر فصل جوایز بزرگی به قید قرعه به شما تقدیم خواهد شد. شاید شما برنده‌ی خوش‌شانس ما باشید.")}
        static let joinRuls = { return OnboardingStringDataModel(title: "چطور شرکت کنم؟", description: "خیلی ساده می‌توانید از طریق اپ اندروید یا آی‌اواس ما در مسابقات آنلاین شرکت کنید. هر هفته افراد برتر برای شرکت در مسابقه دعوت می‌شوند و برای بقیه‌ی کسانی که وارد بازی شده‌اند هم قرعه‌کشی‌های متنوع خواهیم داشت.")}
    }
    
    enum Festival {
        enum QuestionPacks {
            static let questionCountCaption = "سوال جدید"
            static let codeCountCaption = "کد قرعه کشی"
            
        }
    }
}
