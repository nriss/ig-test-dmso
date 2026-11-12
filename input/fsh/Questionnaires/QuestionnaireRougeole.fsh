Instance: QuestionnaireRougeole
InstanceOf: Questionnaire
Title: "Formulaire de signalement - Rougeole"
Description: "Formulaire correspondant au cerfa n° 12554*04 (rougeole, maladie à signalement obligatoire) du 22/04/2026."
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/dmso/Questionnaire/QuestionnaireRougeole"
* version = "0.1.0"
* name = "QuestionnaireRougeole"
* title = "Rougeole - cerfa n° 12554*04"
* status = #draft
* subjectType = #Patient
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extension[=].valueUrl = "https://smt.esante.gouv.fr/fhir"
* date = "2026-11-02"
* publisher = "Agence du Numérique en Santé (ANS)"
* description = "Formulaire de signalement de la rougeole (cerfa n° 12554*04 du 22/04/2026)."

* item[+].linkId = "entete"
* item[=].text = "Définition de cas"
* item[=].type = #group

* item[=].item[+].linkId = "entete-definition-cas"
* item[=].item[=].text = "Cas clinique : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik. Cas confirmé : - confirmation biologique (détection d'IgM spécifiques (i) dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG (i) et/ou PCR positive et/ou culture positive) Ou - cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé. (i) en l'absence de vaccination récente"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension[=].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Cas clinique</b> : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik.</p><p><b>Cas confirmé :</b></p><ul><li>confirmation biologique (détection d'IgM spécifiques<sup>(i)</sup> dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG<sup>(i)</sup> et/ou PCR positive et/ou culture positive)</li></ul><p><b>Ou</b></p><ul><li>cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé.</li></ul><p><sup>(i)</sup> en l'absence de vaccination récente</p></div>"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "entete-important"
* item[=].item[=].text = "Important : cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension[=].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Important :</b> cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. <b>Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique</b></p></div>"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "donnees-obligatoires"
* item[=].item[=].text = "* données obligatoires"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension[=].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>* données obligatoires</b></p></div>"
* item[=].item[=].type = #display

* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].type = #group

* item[=].item[+].linkId = "patient-nom"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string
// code LOINC à vérifier par Melissa
* item[=].item[=].code[+] = http://loinc.org#45394-4 "Nom du patient"
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/patient/name/family"

* item[=].item[+].linkId = "patient-prenom"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string
// code LOINC à vérifier par Melissa
* item[=].item[=].code[+] = http://loinc.org#45392-8 "Prénom du patient"
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/patient/name/given"

* item[=].item[+].linkId = "patient-date-naissance"
* item[=].item[=].text = "Date de naissance"
* item[=].item[=].type = #date
// code LOINC à vérifier par Melissa
* item[=].item[=].code[+] = http://loinc.org#21112-8 "Date de naissance"
* item[=].item[=].required = true
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/patient/birthTime/@value"

* item[=].item[+].linkId = "patient-telephone"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/telecom[starts-with(@value,'tel:')]/@value"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient-courriel"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/telecom[starts-with(@value,'mailto:')]/@value"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient-sexe"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode/@code"
* item[=].item[=].text = "Sexe"
* item[=].item[=].type = #choice
// code LOINC à vérifier par Melissa
* item[=].item[=].code[+] = http://loinc.org#107454-1 "Sexe administratif"
// ajouté jdv-hl7-v3-AdministrativeGender-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-AdministrativeGender-cisis"
// * item[=].item[=].answerOption[+].valueString = "F"
// * item[=].item[=].answerOption[+].valueString = "M"
// * item[=].item[=].answerOption[+].valueString = "I"
// * item[=].item[=].required = true

// ne pas demander année de naissance, âge dans le formulaire dématérialisé
// * item[1].item[6].linkId = "patient-annee-naissance"
// * item[1].item[6].text = "Année de naissance"
//* item[1].item[6].type = #integer

// * item[1].item[7].linkId = "patient-age"
// * item[1].item[7].text = "Âge"
// * item[1].item[7].type = #integer

// * item[1].item[8].linkId = "patient-age-unite"
// * item[1].item[8].text = "Précisez (âge)"
// * item[1].item[8].type = #choice
// * item[1].item[8].answerOption[0].valueString = "ans"
// * item[1].item[8].answerOption[1].valueString = "mois (si < 2 ans)"
// * item[1].item[8].answerOption[2].valueString = "jours (si < 1 mois)"

// PSIG a un référentiel des codes postaux / communes 
// Peut-on l'utiliser ? le déclarant saisi le code postal ou la commune et sélectionne dans la liste proposée. En sortie, il faudrait qu'on ait 2 zones séparées (code postal + commune)
* item[=].item[+].linkId = "patient-code-postal"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/addr/postalCode"
* item[=].item[=].text = "Code postal du domicile"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient-pays"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/recordTarget/patientRole/addr/country"
* item[=].item[=].text = "Pays (si patient résidant à l'étranger)"
* item[=].item[=].type = #string
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[=].item[+].linkId = "patient-informe"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Patient']/entry/observation[code/originalText='patient-informe']/value/@code"
* item[=].item[=].text = "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1337 "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[+].linkId = "patient-peut-repondre"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Patient']/entry/observation[code/originalText='patient-peut-repondre']/value/@code"
* item[=].item[=].text = "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1338 "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

// ne pas demander le code anonymat
// * item[1].item[13].linkId = "patient-code-anonymat"
// * item[1].item[13].text = "Code d'anonymat (à remplir par l'ARS)"
// * item[1].item[13].type = #string

// supprimé la question "type de tierce personne" et remplacé par 2 rubriques séparées : 
// - représentant légal (obligatoire pour les mineurs) [1..*] 
// - Personne à contacter (si l’état clinique du patient ne lui permet pas de répondre à l’investigation de l’ARS) [0..1] 
// avec pour ces 2 rubriques : nom, prénom, téléphone, courriel

* item[+].linkId = "representant-legal"
* item[=].text = "Représentant légal (obligatoire pour les mineurs)"
* item[=].type = #group

* item[=].item[+].linkId = "representant-legal-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='GUAR']/associatedPerson/name/family"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "representant-legal-prenom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='GUAR']/associatedPerson/name/given"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "representant-legal-telephone"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='GUAR']/telecom[starts-with(@value,'tel:')]/@value"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "representant-legal-courriel"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='GUAR']/telecom[starts-with(@value,'mailto:')]/@value"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string

* item[+].linkId = "personne-de-confiance"
* item[=].text = "Personne de confiance (si l'état clinique du patient ne lui permet pas de répondre à l'investigation de l'ARS)"
* item[=].type = #group

* item[=].item[+].linkId = "personne-de-confiance-qualite"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='PRS']/code/@code"
* item[=].item[=].text = "Qualité"
* item[=].item[=].type = #string
* item[=].item[=].answerValueSet = "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"

* item[=].item[+].linkId = "personne-de-confiance-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='PRS']/associatedPerson/name/family"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "personne-de-confiance-prenom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='PRS']/associatedPerson/name/given"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "personne-de-confiance-telephone"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='PRS']/telecom[starts-with(@value,'tel:')]/@value"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "personne-de-confiance-courriel"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/participant[@typeCode='IND']/associatedEntity[@classCode='PRS']/telecom[starts-with(@value,'mailto:')]/@value"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string


* item[+].linkId = "clinique"
* item[=].text = "Clinique"
* item[=].type = #group

* item[=].item[+].linkId = "debut-eruption"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='debut-eruption']/effectiveTime/@value"
* item[=].item[=].text = "Date de début de l'éruption"
* item[=].item[=].type = #date
// code LOINC à vérifier avec Melissa.
* item[=].item[=].code[+] = http://loinc.org#81268-5 "Date de début de l'éruption"
* item[=].item[=].required = true

* item[=].item[+].linkId = "fievre"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='fievre']/value/@code"
* item[=].item[=].text = "Fièvre > 38,5° C"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#R50.9 "Fièvre, sans précision"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "exantheme"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='exantheme']/value/@code"
* item[=].item[=].text = "Exanthème maculo papuleux"
* item[=].item[=].code[+] = http://snomed.info/sct#247471006 "éruption maculopapuleuse"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

// il ne faudrait faire apparaître cette question si réponse oui à la question précédente "Exanthème maculo papuleux"
* item[=].item[=].item[+].linkId = "exantheme-generalise"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='exantheme-generalise']/value/@code"
* item[=].item[=].item[=].text = "Exanthème maculo papuleux généralisé"
* item[=].item[=].item[=].code[+] = http://snomed.info/sct#725119006 "éruption cutanée généralisée"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].enableWhen[+].question = "exantheme"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "toux"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='toux']/value/@code"
* item[=].item[=].text = "Toux"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#R05 "Toux"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "conjonctivite"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='conjonctivite']/value/@code"
* item[=].item[=].text = "Conjonctivite"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#H10.9 "Conjonctivite, sans précision"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "coryza"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='coryza']/value/@code"
* item[=].item[=].text = "Coryza"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#J00 "Rhinopharyngite aigüe [rhume banal]"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "koplik"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='koplik']/value/@code"
* item[=].item[=].text = "Signe de Köplik"
* item[=].item[=].code[+] = http://snomed.info/sct#271667004 "signes de Koplik"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "facteurs-risque"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='facteurs-risque']/value/@code"
* item[=].item[=].text = "Facteurs de risque"
* item[=].item[=].code[+] = http://loinc.org#46467-7 "Facteurs de risque"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
// ajouté jdv-facteur-risque-rougeole-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-facteur-risque-rougeole-cisis"
// * item[=].item[=].answerOption[+].valueString = "non"
// * item[=].item[=].answerOption[+].valueString = "femme enceinte"
// * item[=].item[=].answerOption[+].valueString = "immunodépression"
// * item[=].item[=].answerOption[+].valueString = "nourrisson < 1 an"
// * item[=].item[=].answerOption[+].valueString = "Autre"

// il ne faudrait faire apparaître cette question si réponse "GEN-092.01.27" (Autre facteur de risque) dans la question précédente "facteurs de risque"
* item[=].item[=].item[+].linkId = "facteurs-risque-autre"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='facteurs-risque-autre']/value"
* item[=].item[=].item[=].text = "Facteur de risque : précisez"
// trouver un code ?
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "facteurs-risque"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-092.01.27 "Autre facteur de risque"

* item[=].item[+].linkId = "complications"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='complications']/value/@code"
* item[=].item[=].text = "Complications"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1339 "Complication"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
// ajouté jdv-complication-rougeole-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-complication-rougeole-cisis"
// * item[=].item[=].answerOption[+].valueString = "non"
// * item[=].item[=].answerOption[+].valueString = "Encéphalite"
// * item[=].item[=].answerOption[+].valueString = "Pneumopathie"
// * item[=].item[=].answerOption[+].valueString = "Autre, précisez"

// si je sélectionne "B05.8" (Rougeole avec autres complications) dans la question précédente "gravite-complications" alors je dois pouvoir saisir un texte libre pour préciser
* item[=].item[=].item[+].linkId = "complications-autre"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='complications-autre']/value"
* item[=].item[=].item[=].text = "Complication : précisez"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "complications"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://hl7.org/fhir/sid/icd-10#B05.8 "Rougeole avec autres complications"

* item[=].item[+].linkId = "hospitalisation"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='hospitalisation']/value/@code"
* item[=].item[=].text = "Hospitalisation"
* item[=].item[=].type = #choice
// code LOINC à vérifier avec Melissa
* item[=].item[=].code[+] = http://loinc.org#77974-4 "Hospitalisation"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "hospitalisation-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='hospitalisation-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date d'hospitalisation"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen[+].question = "hospitalisation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[=].item[+].linkId = "hospitalisation-lieu"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='hospitalisation-lieu']/value"
* item[=].item[=].item[=].text = "Lieu de l'hospitalisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "hospitalisation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "reanimation"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='reanimation']/value/@code"
* item[=].item[=].text = "Réanimation"
* item[=].item[=].code[+] = http://snomed.info/sct#305351004 "admission aux soins intensifs"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "reanimation-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='reanimation-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen[+].question = "reanimation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

// Remplacé "Evolution" par "Statut clinique du patient"
* item[=].item[+].linkId = "statut-clinique-du-patient"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='statut-clinique-du-patient']/value/@code"
* item[=].item[=].text = "Statut clinique du patient"
// code LOINC à vérifier avec Melissa
* item[=].item[=].code[+] = http://loinc.org#11323-3 "Statut clinique du patient"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
// ajouté jdv-evolution-rougeole-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-rougeole-cisis"
//* item[=].item[=].answerOption[+].valueString = "Guérison"
//* item[=].item[=].answerOption[+].valueString = "Encore malade"
//* item[=].item[=].answerOption[+].valueString = "Décès"

* item[=].item[=].item[+].linkId = "deces-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Clinique']/entry/observation[code/originalText='deces-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du décès"
// code LOINC à vérifier avec Melissa
* item[=].item[=].code[+] = http://loinc.org#81954-0 "Date du décès [Date] Patient ; Numérique"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen[+].question = "statut-clinique-du-patient"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://snomed.info/sct#419620001 "décès"

* item[+].linkId = "biologie"
* item[=].text = "Biologie"
* item[=].type = #group

// remplacé biologie (en cours/non fait) par Demande de confirmation biologique (oui / non)
* item[=].item[+].linkId = "confirmation-biologique"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='confirmation-biologique']/value/@code"
* item[=].item[=].text = "Demande de confirmation biologique"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1360 "Demande de confirmation biologique"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

// ajouté infobulle
* item[=].item[+].linkId = "rtpcr-oropharynx"
* item[=].item[=].text = "RT-PCR : oro-pharynx"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "rtpcr-oropharynx-definition"
* item[=].item[=].item[=].text = "RT-PCR Oro-pharynx et autres échantillons de voies aériennes supérieures."
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[=].item[=].item[+].linkId = "rtpcr-oropharynx-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-oropharynx-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "rtpcr-oropharynx-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-oropharynx-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#91077-8 "Rougeole virus ARN [Présence/Seuil] Échantillon du système respiratoire supérieur ; Qualitatif ; PCR amplification de cible"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

// remplacé "RT-PCR : kit salivaire (Oracol©)" par "RT-PCR : Salive" + infobulle
* item[=].item[+].linkId = "rtpcr-kit-salivaire"
* item[=].item[=].text = "RT-PCR : Salive"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "rtpcr-kit-salivaire-definition"
* item[=].item[=].item[=].text = "Prélèvement à privilégier : recueil du liquide buccal sur Kit salivaire (Oracol©)."
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[=].item[=].item[+].linkId = "rtpcr-kit-salivaire-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-kit-salivaire-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "rtpcr-kit-salivaire-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-kit-salivaire-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#108194-2 "Rougeole virus ARN [Présence/Seuil] Salive ; Qualitatif ; PCR amplification de cible"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

* item[=].item[+].linkId = "rtpcr-autre"
* item[=].item[=].text = "RT-PCR : autre"
* item[=].item[=].type = #group

// Ajouté "type de prélèvement" pour "RT-PCR : autre"
* item[=].item[=].item[+].linkId = "rtpcr-autre-prelevement"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-autre-prelevement']/value/@code"
* item[=].item[=].item[=].text = "Nature du prélèvement"
* item[=].item[=].item[=].code[+] = http://snomed.info/sct#17636008 "prélèvement d'échantillon"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-rougeole-cisis"

* item[=].item[=].item[+].linkId = "rtpcr-autre-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-autre-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "rtpcr-autre-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='rtpcr-autre-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#48508-6 "Rougeole virus ARN [Présence/Seuil] Milieux divers ; Qualitatif ; PCR amplification de cible"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

* item[=].item[+].linkId = "igm-sang"
* item[=].item[=].text = "IgM : sang"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "igm-sang-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igm-sang-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "igm-sang-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igm-sang-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#35276-5 "Rougeole virus Ac IgM [Présence/Seuil] Sérum ; Qualitatif ; Immunoanalyse"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

// Remplacé "IgM : kit salivaire (Oracol©)" par "IgM : salive"
* item[=].item[+].linkId = "igm-salive"
* item[=].item[=].text = "IgM : salive"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "igm-salive-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igm-salive-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "igm-salive-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igm-salive-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#108192-6 "Rougeole virus Ac IgM [Présence/Seuil] Salive ; Qualitatif ; Immunoanalyse"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

* item[=].item[+].linkId = "igg-sang"
* item[=].item[=].text = "IgG : sang"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "igg-sang-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igg-sang-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "igg-sang-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igg-sang-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#35275-7 "Rougeole virus Ac IgG [Présence/Seuil] Sérum ; Qualitatif ; Immunoanalyse"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-4-cisis"

// Ajouté date du 1er prélèvement
* item[=].item[=].item[+].linkId = "igg-date-premier"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igg-date-premier']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du 1er prélèvement"
* item[=].item[=].item[=].type = #date

// Remplacé "IgG : kit salivaire (Oracol©)" par "IgG : salive"
* item[=].item[+].linkId = "igg-salive"
* item[=].item[=].text = "IgG : salive"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "igg-salive-date"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igg-salive-date']/effectiveTime/@value"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

// remplacé "résultat" par "interpretation"
* item[=].item[=].item[+].linkId = "igg-salive-interpretation"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='igg-salive-interpretation']/value/@code"
* item[=].item[=].item[=].text = "Interprétation"
* item[=].item[=].item[=].code[+] = http://loinc.org#108193-4 "Rougeole virus Ac IgG [Présence/Seuil] Salive ; Qualitatif ; Immunoanalyse"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"

* item[=].item[+].linkId = "envoi-cnr"
* item[=].item[=].text = "Envoi de prélèvements au CNR"
* item[=].item[=].type = #group

// ajout info bulle "A compléter par le médecin généraliste."
* item[=].item[=].item[+].linkId = "cnr-kit-salivaire"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-kit-salivaire']/value/@code"
* item[=].item[=].item[=].text = "Kit salivaire (Oracol©)"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1351 "Envoi kit salivaire au CNR"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].item[+].linkId = "cnr-kit-salivaire-definition"
* item[=].item[=].item[=].item[=].text = "A compléter par le médecin généraliste."
* item[=].item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

// Ajouté une date d'envoi Kit salivaire (Oracol©) au CNR si réponse oui à la question "cnr-kit-salivaire"
* item[=].item[=].item[=].item[+].linkId = "cnr-kit-salivaire-date-envoi"
* item[=].item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-kit-salivaire-date-envoi']/effectiveTime/@value"
* item[=].item[=].item[=].item[=].text = "Date d'envoi"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].enableWhen[+].question = "cnr-kit-salivaire"
* item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

// ajout info bulle "A compléter par le biologiste ou l’ARS."
* item[=].item[=].item[+].linkId = "cnr-autres-prelevements"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-autres-prelevements']/value/@code"
* item[=].item[=].item[=].text = "Autres prélèvements"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1352 "Envoi autres prélèvements au CNR"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].item[+].linkId = "cnr-autres-prelevements-definition"
* item[=].item[=].item[=].item[=].text = "A compléter par le biologiste ou l’ARS."
* item[=].item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

// Ajouté une date d'envoi autre prélèvement au CNR si réponse oui à la question "cnr-autres-prelevements"
* item[=].item[=].item[=].item[+].linkId = "cnr-autres-prelevements-date-envoi"
* item[=].item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-autres-prelevements-date-envoi']/effectiveTime/@value"
* item[=].item[=].item[=].item[=].text = "Date d'envoi"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].enableWhen[+].question = "cnr-autres-prelevements"
* item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[=].item[+].linkId = "cnr-souhait-kits"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-souhait-kits']/value/@code"
* item[=].item[=].item[=].text = "Souhaitez-vous recevoir des kits pour prélèvements et envois d'échantillons de salive au CNR (recherche d'IgM/PCR) ?"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1359 "Souhaitez-vous recevoir des kits pour prélèvements et envois d’échantillons de salive au CNR (recherche d’IgM/PCR) ?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[=].item[+].linkId = "cnr-nombre-kits"
* item[=].item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Biologie']/entry/observation[code/originalText='cnr-nombre-kits']/value/@value"
* item[=].item[=].item[=].item[=].text = "Nombre de kits pour prélèvements souhaité ?"
* item[=].item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-429 "Nombre de kits"
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].enableWhen[+].question = "cnr-souhait-kits"
* item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"


* item[+].linkId = "exposition"
* item[=].text = "Exposition(s) à risque"
* item[=].type = #group

* item[=].item[+].linkId = "collectivite-risque"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='collectivite-risque']/value/@code"
* item[=].item[=].text = "Le cas fréquente-t-il une collectivité accueillant des sujets à risque de rougeole grave ?"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-421 "Fréquentation d'une collectivité accueillant des sujets à risque de rougeole grave"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-collectivite-sujets-a-risque-rougeole-cisis"

* item[=].item[=].item[+].linkId = "collectivite-risque-autre"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='collectivite-risque-autre']/value"
* item[=].item[=].item[=].text = "Collectivité : précisez"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "collectivite-risque"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-092.06.11 "Autre collectivité"

* item[=].item[+].linkId = "sujet-risque-entourage"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='sujet-risque-entourage']/value/@code"
* item[=].item[=].text = "Présence de sujet à risque de rougeole grave dans l'entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-423 "Présence de sujet à risque de rougeole grave dans l’entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "immunoglobulines"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='immunoglobulines']/value/@code"
* item[=].item[=].text = "Administration d'immunoglobulines aux contacts à risque de rougeole grave"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-423 "Administration d’immunoglobulines aux contacts à risque de rougeole grave"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "immunoglobulines-nombre"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='immunoglobulines-nombre']/value/@value"
* item[=].item[=].item[=].text = "Nombre de personnes"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-425 "Nombre d'admministration d'immunoglobines aux contacts àrisque de rougeole grave"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].enableWhen[+].question = "immunoglobulines"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "ror-72h"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='ror-72h']/value/@code"
* item[=].item[=].text = "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-426 "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "ror-72h-nombre"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Exposition(s) à risque']/entry/observation[code/originalText='ror-72h-nombre']/value/@value"
* item[=].item[=].item[=].text = "Nombre de personnes"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-427 "Nombre d'administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].enableWhen[+].question = "ror-72h"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"


* item[+].linkId = "lieux-exposition"
* item[=].text = "Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption"
* item[=].type = #group

* item[=].item[+].linkId = "sejour-etranger"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='sejour-etranger']/value/@code"
* item[=].item[=].text = "Séjour à l'étranger"
* item[=].item[=].code[+] = http://snomed.info/sct#276030007 "voyage à l'étranger ou en territoire ultramarin"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "sejour-etranger-pays"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='sejour-etranger-pays']/value/@code"
* item[=].item[=].item[=].text = "Pays du séjour"
// Code LOINC à vérifier par Melissa
* item[=].item[=].item[=].code[+] = http://loinc.org#94651-7 "Pays du voyage [Localisation] Patient"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[+].question = "sejour-etranger"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[=].item[+].linkId = "contact-rougeole"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='contact-rougeole']/value/@code"
* item[=].item[=].text = "Contact avec un cas de rougeole"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-419 "Contact avec un cas de rougeole"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "contact-rougeole-lieu"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='contact-rougeole-lieu']/value/@code"
* item[=].item[=].item[=].text = "Lieu du contact"
* item[=].item[=].item[=].code[+] = http://loinc.org#81267-7 "Contexte d'exposition à la maladie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].enableWhen[+].question = "contact-rougeole"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[=].item[=].item[+].linkId = "contact-rougeole-precision"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='contact-rougeole-precision']/value"
* item[=].item[=].item[=].text = "Précisez"
// Trouver un code ?
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "contact-rougeole"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "autres-cas-entourage"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='autres-cas-entourage']/value/@code"
* item[=].item[=].text = "Existence d'autres cas dans l'entourage"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-420 "Existence d'autres cas dans l'entourage"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "autres-cas-lieu"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='autres-cas-lieu']/value/@code"
* item[=].item[=].item[=].text = "Lieu"
* item[=].item[=].item[=].code[+] = http://loinc.org#81267-7 "Contexte d'exposition à la maladie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[=].item[=].item[+].linkId = "autres-cas-precision"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='autres-cas-precision']/value"
* item[=].item[=].item[=].text = "Précisez"
// Trouver un code ?
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[=].item[+].linkId = "autres-cas-sejour-etranger"
* item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='autres-cas-sejour-etranger']/value/@code"
* item[=].item[=].item[=].text = "Notion de séjour à l'étranger pour les autres cas"
* item[=].item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-430 "Séjour à l’étranger pour les autres cas de rougeole dans l'entourage"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[=].item[+].linkId = "autres-cas-pays"
* item[=].item[=].item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption']/entry/observation[code/originalText='autres-cas-pays']/value/@code"
* item[=].item[=].item[=].item[=].text = "Pays du séjour des autres cas"
// Code LOINC à vérifier par Melissa
* item[=].item[=].item[=].item[=].code[+] = http://loinc.org#94651-7 "Pays du voyage [Localisation] Patient ; Résultat nominal"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].enableWhen[+].question = "autres-cas-sejour-etranger"
* item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"


* item[+].linkId = "vaccin-rougeole"
* item[=].text = "Statut vaccinal Rougeole"
* item[=].type = #group

* item[=].item[+].linkId = "vaccin-rougeole-nombre-doses"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Statut vaccinal Rougeole']/entry/observation[code/originalText='vaccin-rougeole-nombre-doses']/value/@code"
* item[=].item[=].text = "Nombre total de doses reçues"
* item[=].item[=].code[+] = http://loinc.org#30973-2 "Nombre de doses"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueString = "0"
* item[=].item[=].answerOption[+].valueString = "1"
* item[=].item[=].answerOption[+].valueString = "2"
* item[=].item[=].answerOption[+].valueString = "3"
* item[=].item[=].answerOption[+].valueString = "inconnu"

* item[=].item[+].linkId = "vaccin-date-dose-1"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Statut vaccinal Rougeole']/entry/observation[code/originalText='vaccin-date-dose-1']/effectiveTime/@value"
* item[=].item[=].text = "Date de la 1ère dose"
// code à trouver ?
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "1"
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "2"
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"
* item[=].item[=].enableBehavior = #any

* item[=].item[+].linkId = "vaccin-date-dose-2"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Statut vaccinal Rougeole']/entry/observation[code/originalText='vaccin-date-dose-2']/effectiveTime/@value"
* item[=].item[=].text = "Date de la 2ème dose"
// code à trouver ?
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "2"
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"
* item[=].item[=].enableBehavior = #any

* item[=].item[+].linkId = "vaccin-date-dose-3"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Statut vaccinal Rougeole']/entry/observation[code/originalText='vaccin-date-dose-3']/effectiveTime/@value"
* item[=].item[=].text = "Date de la 3ème dose"
// code à trouver ?
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-rougeole-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"

* item[=].item[+].linkId = "vaccin-source"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/component/structuredBody/component/section[title='Statut vaccinal Rougeole']/entry/observation[code/originalText='vaccin-source']/value/@code"
* item[=].item[=].text = "Informations recueillies d'après"
* item[=].item[=].code[+] = http://loinc.org#48766-0 "Source de l'information"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-information-vaccin-rougeole-cisis"

// "Prescripteur" remplacé par "Signalant" 
* item[+].linkId = "signalant"
* item[=].text = "Signalant"
* item[=].type = #group

// Identifiant RPPS du signalant est récupéré de la CPS (à voir comment) => obligatoire non modifiable
* item[=].item[+].linkId = "signalant-rpps"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/id/@extension"
* item[=].item[=].text = "Numéro RPPS"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// la profession du signalant est récupéré de la CPS (à voir comment) => obligatoire non modifiable
* item[=].item[+].linkId = "signalant-profession"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/code/@code"
* item[=].item[=].text = "Profession"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// le nom du signalant est récupéré de la CPS (à voir comment) => obligatoire non modifiable
* item[=].item[+].linkId = "signalant-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/assignedPerson/name/family"
* item[=].item[=].text = "Nom"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// le prénom du signalant est récupéré de la CPS (à voir comment) => obligatoire non modifiable
* item[=].item[+].linkId = "signalant-prenom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/assignedPerson/name/given"
* item[=].item[=].text = "Prénom"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// Adresse du signalant est récupéré de la CPS (à voir comment) => obligatoire 
* item[=].item[+].linkId = "signalant-adresse"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/addr/streetAddressLine"
* item[=].item[=].text = "Adresse"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// Code postal du signalant est récupéré de la CPS (à voir comment) => obligatoire
* item[=].item[+].linkId = "signalant-code-postal"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/addr/postalCode"
* item[=].item[=].text = "Code postal"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// Commune du signalant est récupéré de la CPS (à voir comment) => obligatoire
* item[=].item[+].linkId = "signalant-commune"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/addr/city"
* item[=].item[=].text = "Commune"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// N° FINESS de l'établissement du signalant est récupéré de la CPS (à voir comment)  => obligatoire ? à vérifier pour les libéraux ?
* item[=].item[+].linkId = "signalant-es-finess"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/representedOrganization/id/@extension"
* item[=].item[=].text = "N° FINESS de l'établissement"
* item[=].item[=].type = #string

// Nom de l'établissement du signalant est récupéré de la CPS (à voir comment) => obligatoire ? à vérifier pour les libéraux ?
* item[=].item[+].linkId = "signalant-es-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/representedOrganization/name"
* item[=].item[=].text = "Nom de l'établissement"
* item[=].item[=].type = #string

// Téléphone du signalant => obligatoire
* item[=].item[+].linkId = "signalant-telephone"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/telecom[starts-with(@value,'tel:')]/@value"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].required = true
* item[=].item[=].type = #string

// Courriel du signalant => obligatoire
* item[=].item[+].linkId = "signalant-courriel"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/author/assignedAuthor/telecom[starts-with(@value,'mailto:')]/@value"
* item[=].item[=].text = "Courriel"
* item[=].item[=].required = true
* item[=].item[=].type = #string


* item[+].linkId = "biologiste"
* item[=].text = "Biologiste"
* item[=].type = #group

// Identifiant RPPS du biologiste
* item[=].item[+].linkId = "biologiste-rpps"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id/@extension"
* item[=].item[=].text = "N° RPPS"
* item[=].item[=].type = #string

// la profession du biologiste
* item[=].item[+].linkId = "biologiste-profession"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/code/@code"
* item[=].item[=].text = "Profession"
* item[=].item[=].type = #string

// le nom du biologiste
* item[=].item[+].linkId = "biologiste-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/family"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string

// le prénom du biologiste
* item[=].item[+].linkId = "biologiste-prenom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name/given"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string

// Adresse du biologiste 
* item[=].item[+].linkId = "biologiste-adresse"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/streetAddressLine"
* item[=].item[=].text = "Adresse"
* item[=].item[=].type = #string

// Code postal du biologiste
* item[=].item[+].linkId = "biologiste-code-postal"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/postalCode"
* item[=].item[=].text = "Code postal"
* item[=].item[=].type = #string

// Commune du biologiste
* item[=].item[+].linkId = "biologiste-commune"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr/city"
* item[=].item[=].text = "Commune"
* item[=].item[=].type = #string

// N° FINESS du laboratoire
* item[=].item[+].linkId = "biologiste-es-finess"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/id/@extension"
* item[=].item[=].text = "N° FINESS du laboratoire"
* item[=].item[=].type = #string

// Nom du laboratoire
* item[=].item[+].linkId = "biologiste-es-nom"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/name"
* item[=].item[=].text = "Nom du laboratoire"
* item[=].item[=].type = #string

// Téléphone du biologiste 
* item[=].item[+].linkId = "biologiste-telephone"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom[starts-with(@value,'tel:')]/@value"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

// Courriel du biologiste 
* item[=].item[+].linkId = "biologiste-courriel"
* item[=].item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].item[=].extension[=].valueString = "ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom[starts-with(@value,'mailto:')]/@value"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string

// date et heure du signalement : calculées (maintenant) et non modifiables
* item[+].linkId = "date-signalement"
* item[=].extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
* item[=].extension[=].valueString = "ClinicalDocument/effectiveTime/@value"
* item[=].text = "Date de signalement"
* item[=].type = #dateTime
* item[=].required = true
* item[=].readOnly = true
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "now()"



