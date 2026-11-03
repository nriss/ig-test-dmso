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
* item[=].text = "Rougeole - cerfa n° 12554*04 du 22/04/2026"
* item[=].type = #group

* item[=].item[+].linkId = "entete-definition-cas"
* item[=].item[=].text = "Définition de cas : Cas clinique : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik. Cas confirmé : - confirmation biologique (détection d'IgM spécifiques (i) dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG (i) et/ou PCR positive et/ou culture positive) Ou - cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé. (i) en l'absence de vaccination récente"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension[=].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Définition de cas :</b></p><p><b>Cas clinique</b> : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik.</p><p><b>Cas confirmé :</b></p><ul><li>confirmation biologique (détection d'IgM spécifiques<sup>(i)</sup> dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG<sup>(i)</sup> et/ou PCR positive et/ou culture positive)</li></ul><p><b>Ou</b></p><ul><li>cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé.</li></ul><p><sup>(i)</sup> en l'absence de vaccination récente</p></div>"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "entete-important"
* item[=].item[=].text = "Important : cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique"
* item[=].item[=].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension[=].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Important :</b> cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. <b>Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique</b></p></div>"
* item[=].item[=].type = #display

* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].item[+].linkId = "patient-nom"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string
* item[=].item[=].code[+] = http://loinc.org#45394-4 "Patient Last (Family) name"
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient-prenom"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string
* item[=].item[=].code[+] = http://loinc.org#45392-8 "Patient First (Given) name"
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient-naissance"
* item[=].item[=].text = "Date de naissance"
* item[=].item[=].type = #date
* item[=].item[=].code[+] = http://loinc.org#21112-8 "Birth date"
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient-telephone"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient-courriel"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient-sexe"
* item[=].item[=].text = "Sexe"
* item[=].item[=].type = #choice
* item[=].item[=].code[+] = http://loinc.org#76689-9 "Sex assigned at birth"
* item[=].item[=].answerOption[+].valueString = "F"
* item[=].item[=].answerOption[+].valueString = "M"
* item[=].item[=].answerOption[+].valueString = "I"
* item[=].item[=].required = true

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
* item[=].item[=].text = "Code postal du domicile"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "patient-pays"
* item[=].item[=].text = "Pays (si patient résidant à l'étranger)"
* item[=].item[=].type = #string
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[=].item[+].linkId = "patient-informe"
* item[=].item[=].text = "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[=].item[=].code[+] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1337 "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[+].linkId = "patient-peut-repondre"
* item[=].item[=].text = "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

// ne pas demander le code anonymat
// * item[1].item[13].linkId = "patient-code-anonymat"
// * item[1].item[13].text = "Code d'anonymat (à remplir par l'ARS)"
// * item[1].item[13].type = #string

// la date du signalement peut-elle être générée à partir de la date du jour et non modifiable ?
* item[=].item[+].linkId = "date-signalement"
* item[=].item[=].text = "Date de signalement"
* item[=].item[=].type = #date
* item[=].item[=].required = true

// remplacer item[2] et la question "type de tierce personne" par 2 rubriques séparées : 
// - représentant légal (obligatoire pour les mineurs) [1..*] 
// - Personne à contacter (si l’état clinique du patient ne lui permet pas de répondre à l’investigation de l’ARS) [0..1] 
// avec pour ces 2 rubriques : nom, prénom, téléphone, courriel

* item[+].linkId = "tierce-personne"
* item[=].text = "Tierce personne"
* item[=].type = #group
* item[=].item[+].linkId = "tierce-type"
* item[=].item[=].text = "Type de tierce personne"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueString = "Représentant légal (obligatoire pour les mineurs)"
* item[=].item[=].answerOption[+].valueString = "Personne de confiance, si l'état clinique du patient ne lui permet pas de répondre à l'investigation de l'ARS"

* item[=].item[+].linkId = "tierce-nom"
* item[=].item[=].text = "Nom"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "tierce-type"
* item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[+].linkId = "tierce-prenom"
* item[=].item[=].text = "Prénom"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "tierce-type"
* item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[+].linkId = "tierce-telephone"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "tierce-type"
* item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[+].linkId = "tierce-courriel"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "tierce-type"
* item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].enableWhen[=].answerBoolean = true


* item[+].linkId = "clinique"
* item[=].text = "Clinique"
* item[=].type = #group

* item[=].item[+].linkId = "debut-eruption"
* item[=].item[=].text = "Date de début de l'éruption"
* item[=].item[=].type = #date
// code LOINC à vérifier avec Melissa.
* item[=].item[=].code[+] = http://loinc.org#81268-5 "Date of rash onset"
* item[=].item[=].required = true

* item[=].item[+].linkId = "fievre"
* item[=].item[=].text = "Fièvre > 38,5° C"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#R50.9 "Fièvre, sans précision"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "exantheme"
* item[=].item[=].text = "Exanthème maculo papuleux"
* item[=].item[=].code[+] = http://snomed.info/sct#247471006 "éruption maculopapuleuse"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "exantheme-generalise"
* item[=].item[=].text = "Exanthème maculo papuleux généralisé"
* item[=].item[=].code[+] = http://snomed.info/sct#725119006 "éruption cutanée généralisée"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "toux"
* item[=].item[=].text = "Toux"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#R05 "Toux"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "conjonctivite"
* item[=].item[=].text = "Conjonctivite"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#H10.9 "Conjonctivite, sans précision"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "coryza"
* item[=].item[=].text = "Coryza"
* item[=].item[=].code[+] = http://hl7.org/fhir/sid/icd-10#J00 "Rhinopharyngite aigüe [rhume banal]"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "koplik"
* item[=].item[=].text = "Signe de Köplik"
* item[=].item[=].code[+] = http://snomed.info/sct#271667004 "signes de Koplik"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "facteurs-risque"
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

// si je sélectionne "GEN-092.01.27" (Autre facteur de risque) dans la question précédente "facteurs de risque" alors je dois pouvoir saisir un texte libre pour préciser
* item[=].item[+].linkId = "facteurs-risque-autre"
* item[=].item[=].text = "Facteur de risque : précisez"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "facteurs-risque"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-092.01.27 "Autre facteur de risque"

* item[=].item[+].linkId = "gravite-complications"
* item[=].item[=].text = "Critères de gravité : complications"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
// ajouté jdv-complication-rougeole-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-complication-rougeole-cisis"
// * item[=].item[=].answerOption[+].valueString = "non"
// * item[=].item[=].answerOption[+].valueString = "Encéphalite"
// * item[=].item[=].answerOption[+].valueString = "Pneumopathie"
// * item[=].item[=].answerOption[+].valueString = "Autre, précisez"

// si je sélectionne "B05.8" (Rougeole avec autres complications) dans la question précédente "gravite-complications" alors je dois pouvoir saisir un texte libre pour préciser
* item[=].item[+].linkId = "gravite-complications-autre"
* item[=].item[=].text = "Complication : précisez"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "gravite-complications"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://hl7.org/fhir/sid/icd-10#B05.8 "Rougeole avec autres complications"

* item[=].item[+].linkId = "hospitalisation"
* item[=].item[=].text = "Hospitalisation"
* item[=].item[=].type = #choice
// code LOINC à vérifier avec Melissa
* item[=].item[=].code[+] = http://loinc.org#77974-4 "Whether the patient was hospitalized for condition of interest"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "hospitalisation-date"
* item[=].item[=].text = "Date d'hospitalisation"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "hospitalisation"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "hospitalisation-lieu"
* item[=].item[=].text = "Lieu de l'hospitalisation"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "hospitalisation"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "reanimation"
* item[=].item[=].text = "Réanimation"
* item[=].item[=].code[+] = http://snomed.info/sct#305351004 "admission aux soins intensifs"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "reanimation-date"
* item[=].item[=].text = "Date de réanimation"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "reanimation"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "statut-clinique-du-patient"
* item[=].item[=].text = "Statut clinique du patient"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
// ajouté jdv-complication-rougeole-cisis
* item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-rougeole-cisis"
//* item[=].item[=].answerOption[+].valueString = "Guérison"
//* item[=].item[=].answerOption[+].valueString = "Encore malade"
//* item[=].item[=].answerOption[+].valueString = "Décès"

* item[=].item[+].linkId = "deces-date"
* item[=].item[=].text = "Date du décès"
* item[=].item[=].type = #date
* item[=].item[=].code[+] = http://loinc.org#81954-0 "Date of death [Date]"
* item[=].item[=].enableWhen[+].question = "evolution"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "Décès"
* item[=].item[=].enableWhen[=].answerCoding = http://snomed.info/sct#419620001 "décès"


* item[+].linkId = "biologie"
* item[=].text = "Biologie"
* item[=].type = #group
* item[=].item[+].linkId = "biologie-statut"
* item[=].item[=].text = "Statut de la biologie"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueString = "En cours"
* item[=].item[=].answerOption[+].valueString = "Non fait"

* item[=].item[+].linkId = "rtpcr-oropharynx"
* item[=].item[=].text = "RT-PCR : oro-pharynx"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "rtpcr-oropharynx-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "rtpcr-oropharynx-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "rtpcr-kit-salivaire"
* item[=].item[=].text = "RT-PCR : kit salivaire (Oracol©)"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "rtpcr-kit-salivaire-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "rtpcr-kit-salivaire-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#108194-2 "Measles virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "rtpcr-autre"
* item[=].item[=].text = "RT-PCR : autre"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "rtpcr-autre-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "rtpcr-autre-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#48508-6 "Measles virus RNA [Presence] in Specimen by NAA with probe detection"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "igm-sang"
* item[=].item[=].text = "IgM : sang"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "igm-sang-definition"
* item[=].item[=].item[=].text = "Les IgM (immunoglobulines M) spécifiques de la rougeole sont des anticorps recherchés dans le sang (sérum) ; leur présence est le témoin d'une infection récente."
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[=].item[=].item[+].linkId = "igm-sang-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Date du prélèvement"

* item[=].item[=].item[+].linkId = "igm-sang-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#21503-8 "Measles virus IgM Ab [Presence] in Serum"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "igm-kit-salivaire"
* item[=].item[=].text = "IgM : kit salivaire (Oracol©)"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "igm-kit-salivaire-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "igm-kit-salivaire-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#108192-6 "Measles virus IgM Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "igg-sang"
* item[=].item[=].text = "IgG : sang"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "igg-sang-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "igg-sang-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#35275-7 "Measles virus IgG Ab [Presence] in Serum by Immunoassay"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "igg-kit-salivaire"
* item[=].item[=].text = "IgG : kit salivaire (Oracol©)"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "igg-kit-salivaire-date"
* item[=].item[=].item[=].text = "Date du prélèvement"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "igg-kit-salivaire-resultat"
* item[=].item[=].item[=].text = "Résultat"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#108193-4 "Measles virus IgG Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[=].item[+].linkId = "seroconversion-igg"
* item[=].item[=].text = "Séroconversion, ascension des IgG"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "igg-date-premier"
* item[=].item[=].text = "Date du 1er prélèvement"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "igg-date-dernier"
* item[=].item[=].text = "Date du dernier prélèvement"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "envoi-cnr"
* item[=].item[=].text = "Envoi de prélèvements au CNR"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "cnr-kit-salivaire"
* item[=].item[=].item[=].text = "Kit salivaire (Oracol©)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "cnr-autres-prelevements"
* item[=].item[=].item[=].text = "Autres prélèvements (à compléter par le biologiste ou l'ARS)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "cnr-date-envoi"
* item[=].item[=].item[=].text = "Date d'envoi"
* item[=].item[=].item[=].type = #date

* item[=].item[=].item[+].linkId = "cnr-souhait-kits"
* item[=].item[=].item[=].text = "Souhaitez-vous recevoir des kits pour prélèvements et envois d'échantillons de salive au CNR (recherche d'IgM/PCR) ?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[=].item[+].linkId = "cnr-nombre-kits"
* item[=].item[=].item[=].text = "Nombre de kits"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].enableWhen[+].question = "cnr-souhait-kits"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"



* item[+].linkId = "exposition"
* item[=].text = "Exposition(s) à risque"
* item[=].type = #group
* item[=].item[+].linkId = "collectivite-risque"
* item[=].item[=].text = "Le cas fréquente-t-il une collectivité accueillant des sujets à risque de rougeole grave ?"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[+].valueString = "Accueil petite enfance"
* item[=].item[=].answerOption[+].valueString = "Milieu de soin"
* item[=].item[=].answerOption[+].valueString = "Autre, précisez"

* item[=].item[+].linkId = "collectivite-risque-autre"
* item[=].item[=].text = "Collectivité : précisez"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen[+].question = "collectivite-risque"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "Autre, précisez"

* item[=].item[+].linkId = "sujet-risque-entourage"
* item[=].item[=].text = "Présence de sujet à risque de rougeole grave dans l'entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "immunoglobulines"
* item[=].item[=].text = "Administration d'immunoglobulines aux contacts à risque de rougeole grave"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "immunoglobulines-nombre"
* item[=].item[=].text = "Nombre de personnes (immunoglobulines)"
* item[=].item[=].type = #integer
* item[=].item[=].enableWhen[+].question = "immunoglobulines"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "ror-72h"
* item[=].item[=].text = "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"

* item[=].item[+].linkId = "ror-72h-nombre"
* item[=].item[=].text = "Nombre de personnes (ROR)"
* item[=].item[=].type = #integer
* item[=].item[=].enableWhen[+].question = "ror-72h"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[+].linkId = "lieux-exposition"
* item[=].item[=].text = "Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption"
* item[=].item[=].type = #group
* item[=].item[=].item[+].linkId = "sejour-etranger"
* item[=].item[=].item[=].text = "Séjour à l'étranger"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "sejour-etranger-pays"
* item[=].item[=].item[=].text = "Pays du séjour"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code[+] = http://loinc.org#94651-7 "Country of travel [Location]"
* item[=].item[=].item[=].enableWhen[+].question = "sejour-etranger"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[=].item[=].item[+].linkId = "contact-rougeole"
* item[=].item[=].item[=].text = "Contact avec un cas de rougeole"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "contact-rougeole-lieu"
* item[=].item[=].item[=].text = "Lieu du contact"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].enableWhen[+].question = "contact-rougeole"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[=].item[=].item[+].linkId = "contact-rougeole-precision"
* item[=].item[=].item[=].text = "Précisez"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "contact-rougeole"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[=].item[+].linkId = "autres-cas-entourage"
* item[=].item[=].item[=].text = "Existence d'autres cas dans l'entourage"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "autres-cas-lieu"
* item[=].item[=].item[=].text = "Lieu"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[=].item[=].item[+].linkId = "autres-cas-precision"
* item[=].item[=].item[=].text = "Précisez"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[=].item[=].item[+].linkId = "autres-cas-sejour-etranger"
* item[=].item[=].item[=].text = "Notion de séjour à l'étranger pour les autres cas"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-entourage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA32-8 "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[=].item[=].item[+].linkId = "autres-cas-pays"
* item[=].item[=].item[=].text = "Pays du séjour des autres cas"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[+].question = "autres-cas-sejour-etranger"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[=].item[=].item[=].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"



* item[+].linkId = "statut-vaccinal"
* item[=].text = "Statut vaccinal"
* item[=].type = #group
* item[=].item[+].linkId = "vaccin-nombre-doses"
* item[=].item[=].text = "Nombre total de doses reçues"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueString = "0"
* item[=].item[=].answerOption[+].valueString = "1"
* item[=].item[=].answerOption[+].valueString = "2"
* item[=].item[=].answerOption[+].valueString = "3"
* item[=].item[=].answerOption[+].valueString = "inconnu"

* item[=].item[+].linkId = "vaccin-date-dose-1"
* item[=].item[=].text = "Date de la 1ère dose"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "1"
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "2"
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"
* item[=].item[=].enableBehavior = #any

* item[=].item[+].linkId = "vaccin-date-dose-2"
* item[=].item[=].text = "Date de la 2ème dose"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "2"
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"
* item[=].item[=].enableBehavior = #any

* item[=].item[+].linkId = "vaccin-date-dose-3"
* item[=].item[=].text = "Date de la 3ème dose"
* item[=].item[=].type = #date
* item[=].item[=].enableWhen[+].question = "vaccin-nombre-doses"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerString = "3"

* item[=].item[+].linkId = "vaccin-source"
* item[=].item[=].text = "Informations recueillies d'après"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueString = "interrogatoire"
* item[=].item[=].answerOption[+].valueString = "carnet de santé ou de vaccination/dossier médical"


* item[+].linkId = "prescripteur"
* item[=].text = "Médecin prescripteur / Signalant (ou tampon)"
* item[=].type = #group
* item[=].item[+].linkId = "prescripteur-nom-rpps"
* item[=].item[=].text = "Nom / RPPS"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "prescripteur-lieu"
* item[=].item[=].text = "Lieu d'exercice"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "prescripteur-adresse"
* item[=].item[=].text = "Adresse"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "prescripteur-telephone"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "prescripteur-courriel"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string


* item[+].linkId = "biologiste"
* item[=].text = "Biologiste (ou tampon)"
* item[=].type = #group
* item[=].item[+].linkId = "biologiste-nom-rpps"
* item[=].item[=].text = "Nom / RPPS"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "biologiste-lbm-finess"
* item[=].item[=].text = "LBM / Finess"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "biologiste-adresse"
* item[=].item[=].text = "Adresse"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "biologiste-telephone"
* item[=].item[=].text = "Téléphone"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "biologiste-courriel"
* item[=].item[=].text = "Courriel"
* item[=].item[=].type = #string


