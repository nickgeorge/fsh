Invariant: patient-contact-warning
Description: "Contact SHOULD have either an address or a telcom, or both."
Expression: "address.exists() or telcom.exists()"
Severity: #warning

Profile:        ClinicalPatient
Parent:         USCorePatientProfile
Id:             base-patient
Title:          "Clinical Patient"
Description:    "A patient that with information needed for Clinical Tools."
