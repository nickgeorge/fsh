Invariant: patient-contact-warning
Description: "Contact SHOULD have either an address or a telcom, or both."
Expression: "address.exists() or telcom.exists()"
Severity: #warning

Profile:        BasePatient
Parent:         USCorePatientProfile
Id:             base-patient
Title:          "Base Patient"
Description:    "Base"
