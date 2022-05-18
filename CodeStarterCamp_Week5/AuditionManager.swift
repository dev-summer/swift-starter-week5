//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Jiyoung Lee on 2022/05/09.
//

import Foundation

struct AuditionManager {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    private(set) var totalApplicantsList = [Person]()
    private var passedApplicantsList = [Person]()
    
    mutating func cast(applicant: Person) {
        switch applicant {
        case is TalentedPersonWithBadPersonality:
            return
        case is Talent:
            let talentedApplicant = applicant as! Talent
            if (talentedApplicant.singing == Level.A || talentedApplicant.dancing == Level.A || talentedApplicant.acting == Level.A) {
                self.passedApplicantsList.append(applicant)
            }
        default:
            return
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        passedApplicantsList.forEach { passedApplicant in
            print(passedApplicant.name)
        }
        print("""
            --------------
            축하합니다!!
            """)
    }
}
