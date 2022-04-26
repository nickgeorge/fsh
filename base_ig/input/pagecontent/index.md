### Introduction

This US Clinical Tools Implementation Guide (IG) is based on the HL7 International published FHIR R4 and profiles found within the [US Core IG](http://www.hl7.org/fhir/us/core/index.html) (US Core). The intended outcome from the use of this IG is to enable exchange of the clinical information necessary for healthcare professionals to understand a patient’s medical history. The US Core IG has a similar objective to this, but its implementation has traditionally focused on elements required by regulation. This IG will build on US Core to cover additional clinical data elements or details not yet profiled but important for clinical data exchange. In addition, it is hoped that this artifact will be developed at an accelerated pace and be an early incubator to test improvements and resolve conflicts. It would not be surprising if, eventually, much of the content in this IG becomes absorbed into future versions of US Core.

Note: the name “Clinical Tools” is subject to change.

In order to avoid conflict with established standards for interoperability, there will be versions of the Clinical Tools IG for specific geographies. This one is for US-based providers and extends the US Core Data for Interoperability (USCDI) as implemented by the US Core IG.

Additionally, acknowledging that development of HL7 FHIR and the US Core IG will continue simultaneously, we expect that normative changes from those artifacts will be incorporated into this IG, introducing conflicts that will need to be resolved.

The authors of this IG hope that a consortium of collaborators are interested in advancing a unified clinical data model for interoperability. We invite interested parties to comment and support its development. The most recent version of this IG can be found at XX.


Contents

1. [Home](index.html) - this description of the guide
2. [Guidance](guidance.html) - specific information about how to apply this IG not covered within individual profiles
3. [Artifacts](artifacts.html) Index - the listing of profiles that together constitute this IG
4. [Examples](examples.html) - examples of clinical data elements mapped to FHIR resources according to this IG
5. [Downloads](downloads.html) - links to downloadable versions of all the artifacts

### Background

Clinical data is functionally locked within the electronic systems of healthcare organizations, in part because of differing data schemas. Transforming this data into a unified longitudinal health record (LHR) enables software that can generate insights for clinicians as they strive to help patients achieve better health. Software of this kind, referred to as clinical tools in this document, is specifically designed to be used by healthcare professionals to inform or drive clinical management, or potentially even to diagnose or treat illness. For example, a clinician tool application could be designed to operate on a harmonized LHR to help physicians review a patient’s chart quickly and develop a clinical plan before a clinic visit.

In practice, the US Core IG can benefit from further clarification to cover the minimum necessary set of clinical data elements that are typically stored in electronic medical records and ensure enough semantic richness to meet the information needs of healthcare professionals. These refinements have been translated into this Implementation Guide so that, if broadly adopted, it can promote interoperability across the healthcare ecosystem and accelerate development of clinical tools that leverage a LHR.

### Overview

The approach of this IG is to further specify the profiles on FHIR resources  needed to ensure sufficient semantic information is available to interpret clinical data when displayed in an end system. Even though many base resources contain important pieces of information about clinical data, there may be several choices made by a data analyst, engineer, or informaticist in transforming a given data element from a source Electronic Health Record (EHR) system into FHIR, thus reducing semantic density. To address these issues, this IG provides guide rails to specific data transformations and will help end users of profiled data understand what is meant by FHIR data without having access to source clinical systems.

For example, this IG clarifies specific use cases of clinical data by developing a profile (or set of profiles) for the following:

*   Code status - this profile provides guidance on how code status orders, such as full code, do not resuscitate, and do not intubate, should be codified into a FHIR resource
*   Continuous infusions - this profile defines the additional data elements required to describe continuous infusions of medications, in contrast to intermittently administered meds
*   LDAs - this profile defines how presence, insertion/placement, and removal of devices like lines, drains, airways should be described
*   Microorganism antibiotic sensitivities - this IG describes how each organism and its sensitivities should be described in a microbiology culture result using Diagnostic Report and Observation profiles.
*   Person-patient & Person-provider - these profiles describe how details like NPI should be stored for providers, noting that these elements are not relevant to patients
*   ADT - health IT systems often distinguish different parts of a patient's journey through a hospitalization into different encounter-like records, often because each clinical location has different business logic driving what data is necessary or sensical; for example, time in the emergency department, operating room, intensive care unit, and inpatient ward may each have an ADT message separating them. This profile describes the criteria to determine how to model FHIR Encounters from this ADT data, so one actual patient journey through an illness episode is correctly interpreted as an encounter.

The IG will continue to expand as further use cases are identified.


### Scope

The philosophy of the scope of this IG is to focus on the minimum information necessary in a health technology system for a clinical user (e.g. a physician, nurse, respiratory therapist, etc.) to be able to make care decisions for a patient. Presently, this will be a unidirectional flow of data from a source EHR to a clinical tool application. Bidirectional flow of data, such as writing notes or orders from a clinical tool application back to the EHR system, is not in scope. In addition, advanced features beyond the minimum necessary for a clinician to do their own reasoning with the data (such as exchanging clinical decision support artifacts) are not currently in scope.

In addition, use cases for non-clinical users are out of scope. For example, this IG is not designed to enable exchange of patient-reported outcomes or other patient-centric views of data. Also, parties interested in exchanging financial information about clinical encounters will not find those use cases directly covered by this IG.

### Copyright

This Implementation Guide is distributed under the terms of the [Creative Commons Zero (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/) license


### Security, safety, and privacy

Preserving confidentiality of clinical data during an exchange between organizations requires agreement on authentication, authorization, and encryption protocols that are beyond the scope of this IG.
