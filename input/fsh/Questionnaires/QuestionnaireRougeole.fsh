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
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extension[0].valueUrl = "https://smt.esante.gouv.fr/fhir"
* date = "2026-11-02"
* publisher = "Agence du Numérique en Santé (ANS)"
* description = "Formulaire de signalement de la rougeole (cerfa n° 12554*04 du 22/04/2026)."

* item[0].linkId = "entete"
* item[0].text = "Rougeole - cerfa n° 12554*04 du 22/04/2026"
* item[0].type = #group

* item[0].item[0].linkId = "entete-definition-cas"
* item[0].item[0].text = "Définition de cas : Cas clinique : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik. Cas confirmé : - confirmation biologique (détection d'IgM spécifiques (i) dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG (i) et/ou PCR positive et/ou culture positive) Ou - cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé. (i) en l'absence de vaccination récente"
* item[0].item[0].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[0].item[0].text.extension[0].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Définition de cas :</b></p><p><b>Cas clinique</b> : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik.</p><p><b>Cas confirmé :</b></p><ul><li>confirmation biologique (détection d'IgM spécifiques<sup>(i)</sup> dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG<sup>(i)</sup> et/ou PCR positive et/ou culture positive)</li></ul><p><b>Ou</b></p><ul><li>cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé.</li></ul><p><sup>(i)</sup> en l'absence de vaccination récente</p></div>"
* item[0].item[0].type = #display

* item[0].item[1].linkId = "entete-important"
* item[0].item[1].text = "Important : cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique"
* item[0].item[1].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[0].item[1].text.extension[0].valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Important :</b> cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. <b>Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique</b></p></div>"
* item[0].item[1].type = #display

* item[1].linkId = "patient"
* item[1].text = "Patient"
* item[1].type = #group
* item[1].item[0].linkId = "patient-nom"
* item[1].item[0].text = "Nom"
* item[1].item[0].type = #string
* item[1].item[0].code[0] = http://loinc.org#45394-4 "Patient Last (Family) name"
* item[1].item[0].required = true

* item[1].item[1].linkId = "patient-prenom"
* item[1].item[1].text = "Prénom"
* item[1].item[1].type = #string
* item[1].item[1].code[0] = http://loinc.org#45392-8 "Patient First (Given) name"
* item[1].item[1].required = true

* item[1].item[2].linkId = "patient-naissance"
* item[1].item[2].text = "Date de naissance"
* item[1].item[2].type = #date
* item[1].item[2].code[0] = http://loinc.org#21112-8 "Birth date"
* item[1].item[2].required = true

* item[1].item[3].linkId = "patient-telephone"
* item[1].item[3].text = "Téléphone"
* item[1].item[3].type = #string

* item[1].item[4].linkId = "patient-courriel"
* item[1].item[4].text = "Courriel"
* item[1].item[4].type = #string

* item[1].item[5].linkId = "patient-sexe"
* item[1].item[5].text = "Sexe"
* item[1].item[5].type = #choice
* item[1].item[5].code[0] = http://loinc.org#76689-9 "Sex assigned at birth"
* item[1].item[5].answerOption[0].valueString = "F"
* item[1].item[5].answerOption[1].valueString = "M"
* item[1].item[5].answerOption[2].valueString = "I"
* item[1].item[5].required = true

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
* item[1].item[9].linkId = "patient-code-postal"
* item[1].item[9].text = "Code postal du domicile"
* item[1].item[9].type = #string
* item[1].item[9].required = true

* item[1].item[10].linkId = "patient-pays"
* item[1].item[10].text = "Pays (si patient résidant à l'étranger)"
* item[1].item[10].type = #string
* item[1].item[10].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[1].item[11].linkId = "patient-informe"
* item[1].item[11].text = "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[1].item[11].code[0] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1337 "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[1].item[11].type = #choice
* item[1].item[11].required = true
* item[1].item[11].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[1].item[11].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[1].item[11].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[1].item[12].linkId = "patient-peut-repondre"
* item[1].item[12].text = "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
* item[1].item[12].type = #choice
* item[1].item[12].required = true
* item[1].item[12].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[1].item[12].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[1].item[12].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

// ne pas demander le code anonymat
// * item[1].item[13].linkId = "patient-code-anonymat"
// * item[1].item[13].text = "Code d'anonymat (à remplir par l'ARS)"
// * item[1].item[13].type = #string

// la date du signalement peut-elle être générée à partir de la date du jour et non modifiable ?
* item[1].item[14].linkId = "date-signalement"
* item[1].item[14].text = "Date de signalement"
* item[1].item[14].type = #date
* item[1].item[14].required = true

// remplacer item[2] et la question "type de tierce personne" par 2 rubriques séparées : 
// - représentant légal (obligatoire pour les mineurs) [1..*] 
// - Personne à contacter (si l’état clinique du patient ne lui permet pas de répondre à l’investigation de l’ARS) [0..1] 
// avec pour ces 2 rubriques : nom, prénom, téléphone, courriel

* item[2].linkId = "tierce-personne"
* item[2].text = "Tierce personne"
* item[2].type = #group
* item[2].item[0].linkId = "tierce-type"
* item[2].item[0].text = "Type de tierce personne"
* item[2].item[0].type = #choice
* item[2].item[0].answerOption[0].valueString = "Représentant légal (obligatoire pour les mineurs)"
* item[2].item[0].answerOption[1].valueString = "Personne de confiance, si l'état clinique du patient ne lui permet pas de répondre à l'investigation de l'ARS"

* item[2].item[1].linkId = "tierce-nom"
* item[2].item[1].text = "Nom"
* item[2].item[1].type = #string
* item[2].item[1].enableWhen[0].question = "tierce-type"
* item[2].item[1].enableWhen[0].operator = #exists
* item[2].item[1].enableWhen[0].answerBoolean = true

* item[2].item[2].linkId = "tierce-prenom"
* item[2].item[2].text = "Prénom"
* item[2].item[2].type = #string
* item[2].item[2].enableWhen[0].question = "tierce-type"
* item[2].item[2].enableWhen[0].operator = #exists
* item[2].item[2].enableWhen[0].answerBoolean = true

* item[2].item[3].linkId = "tierce-telephone"
* item[2].item[3].text = "Téléphone"
* item[2].item[3].type = #string
* item[2].item[3].enableWhen[0].question = "tierce-type"
* item[2].item[3].enableWhen[0].operator = #exists
* item[2].item[3].enableWhen[0].answerBoolean = true

* item[2].item[4].linkId = "tierce-courriel"
* item[2].item[4].text = "Courriel"
* item[2].item[4].type = #string
* item[2].item[4].enableWhen[0].question = "tierce-type"
* item[2].item[4].enableWhen[0].operator = #exists
* item[2].item[4].enableWhen[0].answerBoolean = true


* item[3].linkId = "clinique"
* item[3].text = "Clinique"
* item[3].type = #group

* item[3].item[0].linkId = "debut-eruption"
* item[3].item[0].text = "Date de début de l'éruption"
* item[3].item[0].type = #date
// Qui a donné ce code LOINC ? ça me semble pas mal mais à vérifier avec Melissa.
* item[3].item[0].code[0] = http://loinc.org#81268-5 "Date of rash onset"
* item[3].item[0].required = true

* item[3].item[1].linkId = "fievre"
* item[3].item[1].text = "Fièvre > 38,5° C"
* item[3].item[1].type = #choice
* item[3].item[1].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[1].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[2].linkId = "exantheme"
* item[3].item[2].text = "Exanthème maculo papuleux"
* item[3].item[2].type = #choice
* item[3].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[3].linkId = "generalise"
* item[3].item[3].text = "Généralisé"
* item[3].item[3].type = #choice
* item[3].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[4].linkId = "toux"
* item[3].item[4].text = "Toux"
* item[3].item[4].type = #choice
* item[3].item[4].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[4].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[5].linkId = "conjonctivite"
* item[3].item[5].text = "Conjonctivite"
* item[3].item[5].type = #choice
* item[3].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[6].linkId = "coryza"
* item[3].item[6].text = "Coryza"
* item[3].item[6].type = #choice
* item[3].item[6].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[6].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[7].linkId = "koplik"
* item[3].item[7].text = "Signe de Köplik"
* item[3].item[7].type = #choice
* item[3].item[7].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[7].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[8].linkId = "facteurs-risque"
* item[3].item[8].text = "Facteurs de risque"
* item[3].item[8].type = #choice
* item[3].item[8].repeats = true
* item[3].item[8].answerOption[0].valueString = "non"
* item[3].item[8].answerOption[1].valueString = "femme enceinte"
* item[3].item[8].answerOption[2].valueString = "immunodépression"
* item[3].item[8].answerOption[3].valueString = "nourrisson < 1 an"
* item[3].item[8].answerOption[4].valueString = "Autre"

* item[3].item[9].linkId = "facteurs-risque-autre"
* item[3].item[9].text = "Facteur de risque : précisez"
* item[3].item[9].type = #string
* item[3].item[9].enableWhen[0].question = "facteurs-risque"
* item[3].item[9].enableWhen[0].operator = #=
* item[3].item[9].enableWhen[0].answerString = "Autre"

* item[3].item[10].linkId = "gravite-complications"
* item[3].item[10].text = "Critères de gravité : complications"
* item[3].item[10].type = #choice
* item[3].item[10].repeats = true
* item[3].item[10].answerOption[0].valueString = "non"
* item[3].item[10].answerOption[1].valueString = "Encéphalite"
* item[3].item[10].answerOption[2].valueString = "Pneumopathie"
* item[3].item[10].answerOption[3].valueString = "Autre, précisez"

* item[3].item[11].linkId = "gravite-complications-autre"
* item[3].item[11].text = "Complication : précisez"
* item[3].item[11].type = #string
* item[3].item[11].enableWhen[0].question = "gravite-complications"
* item[3].item[11].enableWhen[0].operator = #=
* item[3].item[11].enableWhen[0].answerString = "Autre, précisez"

* item[3].item[12].linkId = "hospitalisation"
* item[3].item[12].text = "Hospitalisation"
* item[3].item[12].type = #choice
* item[3].item[12].code[0] = http://loinc.org#77974-4 "Whether the patient was hospitalized for condition of interest"
* item[3].item[12].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[12].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[13].linkId = "hospitalisation-date"
* item[3].item[13].text = "Date d'hospitalisation"
* item[3].item[13].type = #date
* item[3].item[13].enableWhen[0].question = "hospitalisation"
* item[3].item[13].enableWhen[0].operator = #=
* item[3].item[13].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[3].item[14].linkId = "hospitalisation-lieu"
* item[3].item[14].text = "Lieu de l'hospitalisation"
* item[3].item[14].type = #string
* item[3].item[14].enableWhen[0].question = "hospitalisation"
* item[3].item[14].enableWhen[0].operator = #=
* item[3].item[14].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[3].item[15].linkId = "reanimation"
* item[3].item[15].text = "Réanimation"
* item[3].item[15].type = #choice
* item[3].item[15].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[15].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[16].linkId = "reanimation-date"
* item[3].item[16].text = "Date de réanimation"
* item[3].item[16].type = #date
* item[3].item[16].enableWhen[0].question = "reanimation"
* item[3].item[16].enableWhen[0].operator = #=
* item[3].item[16].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[3].item[17].linkId = "evolution"
* item[3].item[17].text = "Évolution"
* item[3].item[17].type = #choice
* item[3].item[17].required = true
* item[3].item[17].answerOption[0].valueString = "Guérison"
* item[3].item[17].answerOption[1].valueString = "Encore malade"
* item[3].item[17].answerOption[2].valueString = "Décès"

* item[3].item[18].linkId = "deces-date"
* item[3].item[18].text = "Date du décès"
* item[3].item[18].type = #date
* item[3].item[18].code[0] = http://loinc.org#81954-0 "Date of death [Date]"
* item[3].item[18].enableWhen[0].question = "evolution"
* item[3].item[18].enableWhen[0].operator = #=
* item[3].item[18].enableWhen[0].answerString = "Décès"


* item[4].linkId = "biologie"
* item[4].text = "Biologie"
* item[4].type = #group
* item[4].item[0].linkId = "biologie-statut"
* item[4].item[0].text = "Statut de la biologie"
* item[4].item[0].type = #choice
* item[4].item[0].answerOption[0].valueString = "En cours"
* item[4].item[0].answerOption[1].valueString = "Non fait"

* item[4].item[1].linkId = "rtpcr-oropharynx"
* item[4].item[1].text = "RT-PCR : oro-pharynx"
* item[4].item[1].type = #group
* item[4].item[1].item[0].linkId = "rtpcr-oropharynx-date"
* item[4].item[1].item[0].text = "Date du prélèvement"
* item[4].item[1].item[0].type = #date

* item[4].item[1].item[1].linkId = "rtpcr-oropharynx-resultat"
* item[4].item[1].item[1].text = "Résultat"
* item[4].item[1].item[1].type = #choice
* item[4].item[1].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[1].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[2].linkId = "rtpcr-kit-salivaire"
* item[4].item[2].text = "RT-PCR : kit salivaire (Oracol©)"
* item[4].item[2].type = #group
* item[4].item[2].item[0].linkId = "rtpcr-kit-salivaire-date"
* item[4].item[2].item[0].text = "Date du prélèvement"
* item[4].item[2].item[0].type = #date

* item[4].item[2].item[1].linkId = "rtpcr-kit-salivaire-resultat"
* item[4].item[2].item[1].text = "Résultat"
* item[4].item[2].item[1].type = #choice
* item[4].item[2].item[1].code[0] = http://loinc.org#108194-2 "Measles virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection"
* item[4].item[2].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[2].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[3].linkId = "rtpcr-autre"
* item[4].item[3].text = "RT-PCR : autre"
* item[4].item[3].type = #group
* item[4].item[3].item[0].linkId = "rtpcr-autre-date"
* item[4].item[3].item[0].text = "Date du prélèvement"
* item[4].item[3].item[0].type = #date

* item[4].item[3].item[1].linkId = "rtpcr-autre-resultat"
* item[4].item[3].item[1].text = "Résultat"
* item[4].item[3].item[1].type = #choice
* item[4].item[3].item[1].code[0] = http://loinc.org#48508-6 "Measles virus RNA [Presence] in Specimen by NAA with probe detection"
* item[4].item[3].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[3].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[4].linkId = "igm-sang"
* item[4].item[4].text = "IgM : sang"
* item[4].item[4].type = #group
* item[4].item[4].item[0].linkId = "igm-sang-definition"
* item[4].item[4].item[0].text = "Les IgM (immunoglobulines M) spécifiques de la rougeole sont des anticorps recherchés dans le sang (sérum) ; leur présence est le témoin d'une infection récente."
* item[4].item[4].item[0].type = #display
* item[4].item[4].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[4].item[4].item[0].extension[0].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[4].item[4].item[1].linkId = "igm-sang-date"
* item[4].item[4].item[1].text = "Date du prélèvement"
* item[4].item[4].item[1].type = #date
* item[4].item[4].item[1].text = "Date du prélèvement"

* item[4].item[4].item[2].linkId = "igm-sang-resultat"
* item[4].item[4].item[2].text = "Résultat"
* item[4].item[4].item[2].type = #choice
* item[4].item[4].item[2].code[0] = http://loinc.org#21503-8 "Measles virus IgM Ab [Presence] in Serum"
* item[4].item[4].item[2].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[4].item[2].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[5].linkId = "igm-kit-salivaire"
* item[4].item[5].text = "IgM : kit salivaire (Oracol©)"
* item[4].item[5].type = #group
* item[4].item[5].item[0].linkId = "igm-kit-salivaire-date"
* item[4].item[5].item[0].text = "Date du prélèvement"
* item[4].item[5].item[0].type = #date

* item[4].item[5].item[1].linkId = "igm-kit-salivaire-resultat"
* item[4].item[5].item[1].text = "Résultat"
* item[4].item[5].item[1].type = #choice
* item[4].item[5].item[1].code[0] = http://loinc.org#108192-6 "Measles virus IgM Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[4].item[5].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[5].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[6].linkId = "igg-sang"
* item[4].item[6].text = "IgG : sang"
* item[4].item[6].type = #group
* item[4].item[6].item[0].linkId = "igg-sang-date"
* item[4].item[6].item[0].text = "Date du prélèvement"
* item[4].item[6].item[0].type = #date

* item[4].item[6].item[1].linkId = "igg-sang-resultat"
* item[4].item[6].item[1].text = "Résultat"
* item[4].item[6].item[1].type = #choice
* item[4].item[6].item[1].code[0] = http://loinc.org#35275-7 "Measles virus IgG Ab [Presence] in Serum by Immunoassay"
* item[4].item[6].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[6].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[7].linkId = "igg-kit-salivaire"
* item[4].item[7].text = "IgG : kit salivaire (Oracol©)"
* item[4].item[7].type = #group
* item[4].item[7].item[0].linkId = "igg-kit-salivaire-date"
* item[4].item[7].item[0].text = "Date du prélèvement"
* item[4].item[7].item[0].type = #date

* item[4].item[7].item[1].linkId = "igg-kit-salivaire-resultat"
* item[4].item[7].item[1].text = "Résultat"
* item[4].item[7].item[1].type = #choice
* item[4].item[7].item[1].code[0] = http://loinc.org#108193-4 "Measles virus IgG Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[4].item[7].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[4].item[7].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[4].item[8].linkId = "seroconversion-igg"
* item[4].item[8].text = "Séroconversion, ascension des IgG"
* item[4].item[8].type = #choice
* item[4].item[8].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[8].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[9].linkId = "igg-date-premier"
* item[4].item[9].text = "Date du 1er prélèvement"
* item[4].item[9].type = #date

* item[4].item[10].linkId = "igg-date-dernier"
* item[4].item[10].text = "Date du dernier prélèvement"
* item[4].item[10].type = #date

* item[4].item[11].linkId = "envoi-cnr"
* item[4].item[11].text = "Envoi de prélèvements au CNR"
* item[4].item[11].type = #group
* item[4].item[11].item[0].linkId = "cnr-kit-salivaire"
* item[4].item[11].item[0].text = "Kit salivaire (Oracol©)"
* item[4].item[11].item[0].type = #choice
* item[4].item[11].item[0].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[11].item[0].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[11].item[1].linkId = "cnr-autres-prelevements"
* item[4].item[11].item[1].text = "Autres prélèvements (à compléter par le biologiste ou l'ARS)"
* item[4].item[11].item[1].type = #choice
* item[4].item[11].item[1].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[11].item[1].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[11].item[2].linkId = "cnr-date-envoi"
* item[4].item[11].item[2].text = "Date d'envoi"
* item[4].item[11].item[2].type = #date

* item[4].item[11].item[3].linkId = "cnr-souhait-kits"
* item[4].item[11].item[3].text = "Souhaitez-vous recevoir des kits pour prélèvements et envois d'échantillons de salive au CNR (recherche d'IgM/PCR) ?"
* item[4].item[11].item[3].type = #choice
* item[4].item[11].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[11].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[11].item[4].linkId = "cnr-nombre-kits"
* item[4].item[11].item[4].text = "Nombre de kits"
* item[4].item[11].item[4].type = #integer
* item[4].item[11].item[4].enableWhen[0].question = "cnr-souhait-kits"
* item[4].item[11].item[4].enableWhen[0].operator = #=
* item[4].item[11].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"



* item[5].linkId = "exposition"
* item[5].text = "Exposition(s) à risque"
* item[5].type = #group
* item[5].item[0].linkId = "collectivite-risque"
* item[5].item[0].text = "Le cas fréquente-t-il une collectivité accueillant des sujets à risque de rougeole grave ?"
* item[5].item[0].type = #choice
* item[5].item[0].repeats = true
* item[5].item[0].answerOption[0].valueString = "Accueil petite enfance"
* item[5].item[0].answerOption[1].valueString = "Milieu de soin"
* item[5].item[0].answerOption[2].valueString = "Autre, précisez"

* item[5].item[1].linkId = "collectivite-risque-autre"
* item[5].item[1].text = "Collectivité : précisez"
* item[5].item[1].type = #string
* item[5].item[1].enableWhen[0].question = "collectivite-risque"
* item[5].item[1].enableWhen[0].operator = #=
* item[5].item[1].enableWhen[0].answerString = "Autre, précisez"

* item[5].item[2].linkId = "sujet-risque-entourage"
* item[5].item[2].text = "Présence de sujet à risque de rougeole grave dans l'entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
* item[5].item[2].type = #choice
* item[5].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[5].item[3].linkId = "immunoglobulines"
* item[5].item[3].text = "Administration d'immunoglobulines aux contacts à risque de rougeole grave"
* item[5].item[3].type = #choice
* item[5].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[5].item[4].linkId = "immunoglobulines-nombre"
* item[5].item[4].text = "Nombre de personnes (immunoglobulines)"
* item[5].item[4].type = #integer
* item[5].item[4].enableWhen[0].question = "immunoglobulines"
* item[5].item[4].enableWhen[0].operator = #=
* item[5].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[5].item[5].linkId = "ror-72h"
* item[5].item[5].text = "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[5].item[5].type = #choice
* item[5].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[5].item[6].linkId = "ror-72h-nombre"
* item[5].item[6].text = "Nombre de personnes (ROR)"
* item[5].item[6].type = #integer
* item[5].item[6].enableWhen[0].question = "ror-72h"
* item[5].item[6].enableWhen[0].operator = #=
* item[5].item[6].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[5].item[7].linkId = "lieux-exposition"
* item[5].item[7].text = "Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption"
* item[5].item[7].type = #group
* item[5].item[7].item[0].linkId = "sejour-etranger"
* item[5].item[7].item[0].text = "Séjour à l'étranger"
* item[5].item[7].item[0].type = #choice
* item[5].item[7].item[0].required = true
* item[5].item[7].item[0].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[0].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[5].item[7].item[0].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[5].item[7].item[1].linkId = "sejour-etranger-pays"
* item[5].item[7].item[1].text = "Pays du séjour"
* item[5].item[7].item[1].type = #choice
* item[5].item[7].item[1].code[0] = http://loinc.org#94651-7 "Country of travel [Location]"
* item[5].item[7].item[1].enableWhen[0].question = "sejour-etranger"
* item[5].item[7].item[1].enableWhen[0].operator = #=
* item[5].item[7].item[1].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[1].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[5].item[7].item[2].linkId = "contact-rougeole"
* item[5].item[7].item[2].text = "Contact avec un cas de rougeole"
* item[5].item[7].item[2].type = #choice
* item[5].item[7].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[5].item[7].item[2].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[5].item[7].item[3].linkId = "contact-rougeole-lieu"
* item[5].item[7].item[3].text = "Lieu du contact"
* item[5].item[7].item[3].type = #choice
* item[5].item[7].item[3].repeats = true
* item[5].item[7].item[3].enableWhen[0].question = "contact-rougeole"
* item[5].item[7].item[3].enableWhen[0].operator = #=
* item[5].item[7].item[3].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[3].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[5].item[7].item[4].linkId = "contact-rougeole-precision"
* item[5].item[7].item[4].text = "Précisez"
* item[5].item[7].item[4].type = #string
* item[5].item[7].item[4].enableWhen[0].question = "contact-rougeole"
* item[5].item[7].item[4].enableWhen[0].operator = #=
* item[5].item[7].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[5].item[7].item[5].linkId = "autres-cas-entourage"
* item[5].item[7].item[5].text = "Existence d'autres cas dans l'entourage"
* item[5].item[7].item[5].type = #choice
* item[5].item[7].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[5].item[7].item[5].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[5].item[7].item[6].linkId = "autres-cas-lieu"
* item[5].item[7].item[6].text = "Lieu"
* item[5].item[7].item[6].type = #choice
* item[5].item[7].item[6].repeats = true
* item[5].item[7].item[6].enableWhen[0].question = "autres-cas-entourage"
* item[5].item[7].item[6].enableWhen[0].operator = #=
* item[5].item[7].item[6].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[6].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[5].item[7].item[7].linkId = "autres-cas-precision"
* item[5].item[7].item[7].text = "Précisez"
* item[5].item[7].item[7].type = #string
* item[5].item[7].item[7].enableWhen[0].question = "autres-cas-entourage"
* item[5].item[7].item[7].enableWhen[0].operator = #=
* item[5].item[7].item[7].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[5].item[7].item[8].linkId = "autres-cas-sejour-etranger"
* item[5].item[7].item[8].text = "Notion de séjour à l'étranger pour les autres cas"
* item[5].item[7].item[8].type = #choice
* item[5].item[7].item[8].enableWhen[0].question = "autres-cas-entourage"
* item[5].item[7].item[8].enableWhen[0].operator = #=
* item[5].item[7].item[8].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[8].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[8].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[5].item[7].item[8].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[5].item[7].item[9].linkId = "autres-cas-pays"
* item[5].item[7].item[9].text = "Pays du séjour des autres cas"
* item[5].item[7].item[9].type = #choice
* item[5].item[7].item[9].enableWhen[0].question = "autres-cas-sejour-etranger"
* item[5].item[7].item[9].enableWhen[0].operator = #=
* item[5].item[7].item[9].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[5].item[7].item[9].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"



* item[6].linkId = "statut-vaccinal"
* item[6].text = "Statut vaccinal"
* item[6].type = #group
* item[6].item[0].linkId = "vaccin-nombre-doses"
* item[6].item[0].text = "Nombre total de doses reçues"
* item[6].item[0].type = #choice
* item[6].item[0].answerOption[0].valueString = "0"
* item[6].item[0].answerOption[1].valueString = "1"
* item[6].item[0].answerOption[2].valueString = "2"
* item[6].item[0].answerOption[3].valueString = "3"
* item[6].item[0].answerOption[4].valueString = "inconnu"

* item[6].item[1].linkId = "vaccin-date-dose-1"
* item[6].item[1].text = "Date de la 1ère dose"
* item[6].item[1].type = #date
* item[6].item[1].enableWhen[0].question = "vaccin-nombre-doses"
* item[6].item[1].enableWhen[0].operator = #=
* item[6].item[1].enableWhen[0].answerString = "1"
* item[6].item[1].enableWhen[1].question = "vaccin-nombre-doses"
* item[6].item[1].enableWhen[1].operator = #=
* item[6].item[1].enableWhen[1].answerString = "2"
* item[6].item[1].enableWhen[2].question = "vaccin-nombre-doses"
* item[6].item[1].enableWhen[2].operator = #=
* item[6].item[1].enableWhen[2].answerString = "3"
* item[6].item[1].enableBehavior = #any

* item[6].item[2].linkId = "vaccin-date-dose-2"
* item[6].item[2].text = "Date de la 2ème dose"
* item[6].item[2].type = #date
* item[6].item[2].enableWhen[0].question = "vaccin-nombre-doses"
* item[6].item[2].enableWhen[0].operator = #=
* item[6].item[2].enableWhen[0].answerString = "2"
* item[6].item[2].enableWhen[1].question = "vaccin-nombre-doses"
* item[6].item[2].enableWhen[1].operator = #=
* item[6].item[2].enableWhen[1].answerString = "3"
* item[6].item[2].enableBehavior = #any

* item[6].item[3].linkId = "vaccin-date-dose-3"
* item[6].item[3].text = "Date de la 3ème dose"
* item[6].item[3].type = #date
* item[6].item[3].enableWhen[0].question = "vaccin-nombre-doses"
* item[6].item[3].enableWhen[0].operator = #=
* item[6].item[3].enableWhen[0].answerString = "3"

* item[6].item[4].linkId = "vaccin-source"
* item[6].item[4].text = "Informations recueillies d'après"
* item[6].item[4].type = #choice
* item[6].item[4].answerOption[0].valueString = "interrogatoire"
* item[6].item[4].answerOption[1].valueString = "carnet de santé ou de vaccination/dossier médical"


* item[7].linkId = "prescripteur"
* item[7].text = "Médecin prescripteur / Signalant (ou tampon)"
* item[7].type = #group
* item[7].item[0].linkId = "prescripteur-nom-rpps"
* item[7].item[0].text = "Nom / RPPS"
* item[7].item[0].type = #string

* item[7].item[1].linkId = "prescripteur-lieu"
* item[7].item[1].text = "Lieu d'exercice"
* item[7].item[1].type = #string

* item[7].item[2].linkId = "prescripteur-adresse"
* item[7].item[2].text = "Adresse"
* item[7].item[2].type = #string

* item[7].item[3].linkId = "prescripteur-telephone"
* item[7].item[3].text = "Téléphone"
* item[7].item[3].type = #string

* item[7].item[4].linkId = "prescripteur-courriel"
* item[7].item[4].text = "Courriel"
* item[7].item[4].type = #string


* item[8].linkId = "biologiste"
* item[8].text = "Biologiste (ou tampon)"
* item[8].type = #group
* item[8].item[0].linkId = "biologiste-nom-rpps"
* item[8].item[0].text = "Nom / RPPS"
* item[8].item[0].type = #string

* item[8].item[1].linkId = "biologiste-lbm-finess"
* item[8].item[1].text = "LBM / Finess"
* item[8].item[1].type = #string

* item[8].item[2].linkId = "biologiste-adresse"
* item[8].item[2].text = "Adresse"
* item[8].item[2].type = #string

* item[8].item[3].linkId = "biologiste-telephone"
* item[8].item[3].text = "Téléphone"
* item[8].item[3].type = #string

* item[8].item[4].linkId = "biologiste-courriel"
* item[8].item[4].text = "Courriel"
* item[8].item[4].type = #string


