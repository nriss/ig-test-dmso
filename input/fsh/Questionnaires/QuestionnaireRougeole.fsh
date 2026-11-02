Instance: QuestionnaireRougeole
InstanceOf: Questionnaire
Title: "Questionnaire de signalement de la rougeole"
Description: "Questionnaire généré à partir du cerfa n° 12554*04 (rougeole, maladie à signalement obligatoire) du 22/04/2026. Les cadres administratifs (tampon ARS) ne sont pas repris."
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
* description = "Formulaire de signalement de la rougeole (cerfa n° 12554*04 du 22/04/2026).\n\n[Afficher le formulaire dans le Questionnaire Viewer](https://plynchnlm.github.io/questionnaire-viewer/?lfv=latest&q=https%3A%2F%2Fnriss.github.io%2Fig-test-dmso%2Fmain%2Fig%2Fen%2FQuestionnaire-QuestionnaireRougeole.json)"

* item[0].linkId = "patient"
* item[0].text = "Patient"
* item[0].type = #group
* item[0].item[0].linkId = "patient-nom"
* item[0].item[0].text = "Nom"
* item[0].item[0].type = #string
* item[0].item[0].code[0] = http://loinc.org#45394-4 "Patient Last (Family) name"
* item[0].item[0].required = true

* item[0].item[1].linkId = "patient-prenom"
* item[0].item[1].text = "Prénom"
* item[0].item[1].type = #string
* item[0].item[1].code[0] = http://loinc.org#45392-8 "Patient First (Given) name"
* item[0].item[1].required = true

* item[0].item[2].linkId = "patient-naissance"
* item[0].item[2].text = "Date de naissance"
* item[0].item[2].type = #date
* item[0].item[2].code[0] = http://loinc.org#21112-8 "Birth date"
* item[0].item[2].required = true

* item[0].item[3].linkId = "patient-telephone"
* item[0].item[3].text = "Téléphone"
* item[0].item[3].type = #string

* item[0].item[4].linkId = "patient-courriel"
* item[0].item[4].text = "Courriel"
* item[0].item[4].type = #string

* item[0].item[5].linkId = "patient-sexe"
* item[0].item[5].text = "Sexe"
* item[0].item[5].type = #choice
* item[0].item[5].code[0] = http://loinc.org#76689-9 "Sex assigned at birth"
* item[0].item[5].answerOption[0].valueString = "F"
* item[0].item[5].answerOption[1].valueString = "M"
* item[0].item[5].answerOption[2].valueString = "I"

* item[0].item[6].linkId = "patient-annee-naissance"
* item[0].item[6].text = "Année de naissance"
* item[0].item[6].type = #integer

* item[0].item[7].linkId = "patient-age"
* item[0].item[7].text = "Âge"
* item[0].item[7].type = #integer

* item[0].item[8].linkId = "patient-age-unite"
* item[0].item[8].text = "Précisez (âge)"
* item[0].item[8].type = #choice
* item[0].item[8].answerOption[0].valueString = "ans"
* item[0].item[8].answerOption[1].valueString = "mois (si < 2 ans)"
* item[0].item[8].answerOption[2].valueString = "jours (si < 1 mois)"

* item[0].item[9].linkId = "patient-code-postal"
* item[0].item[9].text = "Code postal du domicile"
* item[0].item[9].type = #string

* item[0].item[10].linkId = "patient-pays"
* item[0].item[10].text = "Pays si patient résidant à l'étranger"
* item[0].item[10].type = #string

* item[0].item[11].linkId = "patient-informe"
* item[0].item[11].text = "Le patient (ou le tiers) est-il informé du diagnostic ?"
* item[0].item[11].code[0] = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-1337 "Le patient (ou le tiers) est-il informé du diagnostic ?"

* item[0].item[11].type = #choice
* item[0].item[11].required = true
* item[0].item[11].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[0].item[11].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[0].item[11].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[0].item[12].linkId = "patient-peut-repondre"
* item[0].item[12].text = "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
* item[0].item[12].type = #choice
* item[0].item[12].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[0].item[12].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[0].item[12].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[0].item[13].linkId = "patient-code-anonymat"
* item[0].item[13].text = "Code d'anonymat (à remplir par l'ARS)"
* item[0].item[13].type = #string

* item[0].item[14].linkId = "date-signalement"
* item[0].item[14].text = "Date de signalement"
* item[0].item[14].type = #date
* item[0].item[14].required = true


* item[1].linkId = "tierce-personne"
* item[1].text = "Tierce personne"
* item[1].type = #group
* item[1].item[0].linkId = "tierce-type"
* item[1].item[0].text = "Type de tierce personne"
* item[1].item[0].type = #choice
* item[1].item[0].answerOption[0].valueString = "Représentant légal (obligatoire pour les mineurs)"
* item[1].item[0].answerOption[1].valueString = "Personne de confiance, si l'état clinique du patient ne lui permet pas de répondre à l'investigation de l'ARS"

* item[1].item[1].linkId = "tierce-nom"
* item[1].item[1].text = "Nom"
* item[1].item[1].type = #string
* item[1].item[1].enableWhen[0].question = "tierce-type"
* item[1].item[1].enableWhen[0].operator = #exists
* item[1].item[1].enableWhen[0].answerBoolean = true

* item[1].item[2].linkId = "tierce-prenom"
* item[1].item[2].text = "Prénom"
* item[1].item[2].type = #string
* item[1].item[2].enableWhen[0].question = "tierce-type"
* item[1].item[2].enableWhen[0].operator = #exists
* item[1].item[2].enableWhen[0].answerBoolean = true

* item[1].item[3].linkId = "tierce-telephone"
* item[1].item[3].text = "Téléphone"
* item[1].item[3].type = #string
* item[1].item[3].enableWhen[0].question = "tierce-type"
* item[1].item[3].enableWhen[0].operator = #exists
* item[1].item[3].enableWhen[0].answerBoolean = true

* item[1].item[4].linkId = "tierce-courriel"
* item[1].item[4].text = "Courriel"
* item[1].item[4].type = #string
* item[1].item[4].enableWhen[0].question = "tierce-type"
* item[1].item[4].enableWhen[0].operator = #exists
* item[1].item[4].enableWhen[0].answerBoolean = true


* item[2].linkId = "clinique"
* item[2].text = "Clinique"
* item[2].type = #group
* item[2].item[0].linkId = "debut-eruption"
* item[2].item[0].text = "Date de début de l'éruption"
* item[2].item[0].type = #date
* item[2].item[0].code[0] = http://loinc.org#81268-5 "Date of rash onset"
* item[2].item[0].required = true

* item[2].item[1].linkId = "fievre"
* item[2].item[1].text = "Fièvre > 38,5° C"
* item[2].item[1].type = #choice
* item[2].item[1].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[1].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[2].linkId = "exantheme"
* item[2].item[2].text = "Exanthème maculo papuleux"
* item[2].item[2].type = #choice
* item[2].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[3].linkId = "generalise"
* item[2].item[3].text = "Généralisé"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[4].linkId = "toux"
* item[2].item[4].text = "Toux"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[4].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[5].linkId = "conjonctivite"
* item[2].item[5].text = "Conjonctivite"
* item[2].item[5].type = #choice
* item[2].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[6].linkId = "coryza"
* item[2].item[6].text = "Coryza"
* item[2].item[6].type = #choice
* item[2].item[6].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[6].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[7].linkId = "koplik"
* item[2].item[7].text = "Signe de Köplik"
* item[2].item[7].type = #choice
* item[2].item[7].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[7].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[8].linkId = "facteurs-risque"
* item[2].item[8].text = "Facteurs de risque"
* item[2].item[8].type = #choice
* item[2].item[8].repeats = true
* item[2].item[8].answerOption[0].valueString = "non"
* item[2].item[8].answerOption[1].valueString = "femme enceinte"
* item[2].item[8].answerOption[2].valueString = "immunodépression"
* item[2].item[8].answerOption[3].valueString = "nourrisson < 1 an"
* item[2].item[8].answerOption[4].valueString = "Autre"

* item[2].item[9].linkId = "facteurs-risque-autre"
* item[2].item[9].text = "Facteur de risque : précisez"
* item[2].item[9].type = #string
* item[2].item[9].enableWhen[0].question = "facteurs-risque"
* item[2].item[9].enableWhen[0].operator = #=
* item[2].item[9].enableWhen[0].answerString = "Autre"

* item[2].item[10].linkId = "gravite-complications"
* item[2].item[10].text = "Critères de gravité : complications"
* item[2].item[10].type = #choice
* item[2].item[10].repeats = true
* item[2].item[10].answerOption[0].valueString = "non"
* item[2].item[10].answerOption[1].valueString = "Encéphalite"
* item[2].item[10].answerOption[2].valueString = "Pneumopathie"
* item[2].item[10].answerOption[3].valueString = "Autre, précisez"

* item[2].item[11].linkId = "gravite-complications-autre"
* item[2].item[11].text = "Complication : précisez"
* item[2].item[11].type = #string
* item[2].item[11].enableWhen[0].question = "gravite-complications"
* item[2].item[11].enableWhen[0].operator = #=
* item[2].item[11].enableWhen[0].answerString = "Autre, précisez"

* item[2].item[12].linkId = "hospitalisation"
* item[2].item[12].text = "Hospitalisation"
* item[2].item[12].type = #choice
* item[2].item[12].code[0] = http://loinc.org#77974-4 "Whether the patient was hospitalized for condition of interest"
* item[2].item[12].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[12].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[13].linkId = "hospitalisation-date"
* item[2].item[13].text = "Date d'hospitalisation"
* item[2].item[13].type = #date
* item[2].item[13].enableWhen[0].question = "hospitalisation"
* item[2].item[13].enableWhen[0].operator = #=
* item[2].item[13].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[2].item[14].linkId = "hospitalisation-lieu"
* item[2].item[14].text = "Lieu de l'hospitalisation"
* item[2].item[14].type = #string
* item[2].item[14].enableWhen[0].question = "hospitalisation"
* item[2].item[14].enableWhen[0].operator = #=
* item[2].item[14].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[2].item[15].linkId = "reanimation"
* item[2].item[15].text = "Réanimation"
* item[2].item[15].type = #choice
* item[2].item[15].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[2].item[15].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[2].item[16].linkId = "reanimation-date"
* item[2].item[16].text = "Date de réanimation"
* item[2].item[16].type = #date
* item[2].item[16].enableWhen[0].question = "reanimation"
* item[2].item[16].enableWhen[0].operator = #=
* item[2].item[16].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[2].item[17].linkId = "evolution"
* item[2].item[17].text = "Évolution"
* item[2].item[17].type = #choice
* item[2].item[17].required = true
* item[2].item[17].answerOption[0].valueString = "Guérison"
* item[2].item[17].answerOption[1].valueString = "Encore malade"
* item[2].item[17].answerOption[2].valueString = "Décès"

* item[2].item[18].linkId = "deces-date"
* item[2].item[18].text = "Date du décès"
* item[2].item[18].type = #date
* item[2].item[18].code[0] = http://loinc.org#81954-0 "Date of death [Date]"
* item[2].item[18].enableWhen[0].question = "evolution"
* item[2].item[18].enableWhen[0].operator = #=
* item[2].item[18].enableWhen[0].answerString = "Décès"


* item[3].linkId = "biologie"
* item[3].text = "Biologie"
* item[3].type = #group
* item[3].item[0].linkId = "biologie-statut"
* item[3].item[0].text = "Statut de la biologie"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueString = "En cours"
* item[3].item[0].answerOption[1].valueString = "Non fait"

* item[3].item[1].linkId = "rtpcr-oropharynx"
* item[3].item[1].text = "RT-PCR : oro-pharynx"
* item[3].item[1].type = #group
* item[3].item[1].item[0].linkId = "rtpcr-oropharynx-date"
* item[3].item[1].item[0].text = "Date du prélèvement"
* item[3].item[1].item[0].type = #date

* item[3].item[1].item[1].linkId = "rtpcr-oropharynx-resultat"
* item[3].item[1].item[1].text = "Résultat"
* item[3].item[1].item[1].type = #choice
* item[3].item[1].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[1].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[2].linkId = "rtpcr-kit-salivaire"
* item[3].item[2].text = "RT-PCR : kit salivaire (Oracol©)"
* item[3].item[2].type = #group
* item[3].item[2].item[0].linkId = "rtpcr-kit-salivaire-date"
* item[3].item[2].item[0].text = "Date du prélèvement"
* item[3].item[2].item[0].type = #date

* item[3].item[2].item[1].linkId = "rtpcr-kit-salivaire-resultat"
* item[3].item[2].item[1].text = "Résultat"
* item[3].item[2].item[1].type = #choice
* item[3].item[2].item[1].code[0] = http://loinc.org#108194-2 "Measles virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection"
* item[3].item[2].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[2].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[3].linkId = "rtpcr-autre"
* item[3].item[3].text = "RT-PCR : autre"
* item[3].item[3].type = #group
* item[3].item[3].item[0].linkId = "rtpcr-autre-date"
* item[3].item[3].item[0].text = "Date du prélèvement"
* item[3].item[3].item[0].type = #date

* item[3].item[3].item[1].linkId = "rtpcr-autre-resultat"
* item[3].item[3].item[1].text = "Résultat"
* item[3].item[3].item[1].type = #choice
* item[3].item[3].item[1].code[0] = http://loinc.org#48508-6 "Measles virus RNA [Presence] in Specimen by NAA with probe detection"
* item[3].item[3].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[3].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[4].linkId = "igm-sang"
* item[3].item[4].text = "IgM : sang"
* item[3].item[4].type = #group
* item[3].item[4].item[0].linkId = "igm-sang-definition"
* item[3].item[4].item[0].text = "Les IgM (immunoglobulines M) spécifiques de la rougeole sont des anticorps recherchés dans le sang (sérum) ; leur présence est le témoin d'une infection récente."
* item[3].item[4].item[0].type = #display
* item[3].item[4].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[3].item[4].item[0].extension[0].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[3].item[4].item[1].linkId = "igm-sang-date"
* item[3].item[4].item[1].text = "Date du prélèvement"
* item[3].item[4].item[1].type = #date

* item[3].item[4].item[2].linkId = "igm-sang-resultat"
* item[3].item[4].item[2].text = "Résultat"
* item[3].item[4].item[2].type = #choice
* item[3].item[4].item[2].code[0] = http://loinc.org#21503-8 "Measles virus IgM Ab [Presence] in Serum"
* item[3].item[4].item[2].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[4].item[2].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[5].linkId = "igm-kit-salivaire"
* item[3].item[5].text = "IgM : kit salivaire (Oracol©)"
* item[3].item[5].type = #group
* item[3].item[5].item[0].linkId = "igm-kit-salivaire-date"
* item[3].item[5].item[0].text = "Date du prélèvement"
* item[3].item[5].item[0].type = #date

* item[3].item[5].item[1].linkId = "igm-kit-salivaire-resultat"
* item[3].item[5].item[1].text = "Résultat"
* item[3].item[5].item[1].type = #choice
* item[3].item[5].item[1].code[0] = http://loinc.org#108192-6 "Measles virus IgM Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[3].item[5].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[5].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[6].linkId = "igg-sang"
* item[3].item[6].text = "IgG : sang"
* item[3].item[6].type = #group
* item[3].item[6].item[0].linkId = "igg-sang-date"
* item[3].item[6].item[0].text = "Date du prélèvement"
* item[3].item[6].item[0].type = #date

* item[3].item[6].item[1].linkId = "igg-sang-resultat"
* item[3].item[6].item[1].text = "Résultat"
* item[3].item[6].item[1].type = #choice
* item[3].item[6].item[1].code[0] = http://loinc.org#35275-7 "Measles virus IgG Ab [Presence] in Serum by Immunoassay"
* item[3].item[6].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[6].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[7].linkId = "igg-kit-salivaire"
* item[3].item[7].text = "IgG : kit salivaire (Oracol©)"
* item[3].item[7].type = #group
* item[3].item[7].item[0].linkId = "igg-kit-salivaire-date"
* item[3].item[7].item[0].text = "Date du prélèvement"
* item[3].item[7].item[0].type = #date

* item[3].item[7].item[1].linkId = "igg-kit-salivaire-resultat"
* item[3].item[7].item[1].text = "Résultat"
* item[3].item[7].item[1].type = #choice
* item[3].item[7].item[1].code[0] = http://loinc.org#108193-4 "Measles virus IgG Ab [Presence] in Saliva (oral fluid) by Immunoassay"
* item[3].item[7].item[1].answerOption[0].valueCoding = http://loinc.org#LA6576-8 "Positive"
* item[3].item[7].item[1].answerOption[1].valueCoding = http://loinc.org#LA6577-6 "Negative"


* item[3].item[8].linkId = "seroconversion-igg"
* item[3].item[8].text = "Séroconversion, ascension des IgG"
* item[3].item[8].type = #choice
* item[3].item[8].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[8].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[9].linkId = "igg-date-premier"
* item[3].item[9].text = "Date du 1er prélèvement"
* item[3].item[9].type = #date

* item[3].item[10].linkId = "igg-date-dernier"
* item[3].item[10].text = "Date du dernier prélèvement"
* item[3].item[10].type = #date

* item[3].item[11].linkId = "envoi-cnr"
* item[3].item[11].text = "Envoi de prélèvements au CNR"
* item[3].item[11].type = #group
* item[3].item[11].item[0].linkId = "cnr-kit-salivaire"
* item[3].item[11].item[0].text = "Kit salivaire (Oracol©)"
* item[3].item[11].item[0].type = #choice
* item[3].item[11].item[0].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[11].item[0].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[11].item[1].linkId = "cnr-autres-prelevements"
* item[3].item[11].item[1].text = "Autres prélèvements (à compléter par le biologiste ou l'ARS)"
* item[3].item[11].item[1].type = #choice
* item[3].item[11].item[1].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[11].item[1].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[11].item[2].linkId = "cnr-date-envoi"
* item[3].item[11].item[2].text = "Date d'envoi"
* item[3].item[11].item[2].type = #date

* item[3].item[11].item[3].linkId = "cnr-souhait-kits"
* item[3].item[11].item[3].text = "Souhaitez-vous recevoir des kits pour prélèvements et envois d'échantillons de salive au CNR (recherche d'IgM/PCR) ?"
* item[3].item[11].item[3].type = #choice
* item[3].item[11].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[3].item[11].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[3].item[11].item[4].linkId = "cnr-nombre-kits"
* item[3].item[11].item[4].text = "Nombre de kits"
* item[3].item[11].item[4].type = #integer
* item[3].item[11].item[4].enableWhen[0].question = "cnr-souhait-kits"
* item[3].item[11].item[4].enableWhen[0].operator = #=
* item[3].item[11].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"



* item[4].linkId = "exposition"
* item[4].text = "Exposition(s) à risque"
* item[4].type = #group
* item[4].item[0].linkId = "collectivite-risque"
* item[4].item[0].text = "Le cas fréquente-t-il une collectivité accueillant des sujets à risque de rougeole grave ?"
* item[4].item[0].type = #choice
* item[4].item[0].repeats = true
* item[4].item[0].answerOption[0].valueString = "Accueil petite enfance"
* item[4].item[0].answerOption[1].valueString = "Milieu de soin"
* item[4].item[0].answerOption[2].valueString = "Autre, précisez"

* item[4].item[1].linkId = "collectivite-risque-autre"
* item[4].item[1].text = "Collectivité : précisez"
* item[4].item[1].type = #string
* item[4].item[1].enableWhen[0].question = "collectivite-risque"
* item[4].item[1].enableWhen[0].operator = #=
* item[4].item[1].enableWhen[0].answerString = "Autre, précisez"

* item[4].item[2].linkId = "sujet-risque-entourage"
* item[4].item[2].text = "Présence de sujet à risque de rougeole grave dans l'entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
* item[4].item[2].type = #choice
* item[4].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[3].linkId = "immunoglobulines"
* item[4].item[3].text = "Administration d'immunoglobulines aux contacts à risque de rougeole grave"
* item[4].item[3].type = #choice
* item[4].item[3].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[3].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[4].linkId = "immunoglobulines-nombre"
* item[4].item[4].text = "Nombre de personnes (immunoglobulines)"
* item[4].item[4].type = #integer
* item[4].item[4].enableWhen[0].question = "immunoglobulines"
* item[4].item[4].enableWhen[0].operator = #=
* item[4].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[4].item[5].linkId = "ror-72h"
* item[4].item[5].text = "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
* item[4].item[5].type = #choice
* item[4].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"

* item[4].item[6].linkId = "ror-72h-nombre"
* item[4].item[6].text = "Nombre de personnes (ROR)"
* item[4].item[6].type = #integer
* item[4].item[6].enableWhen[0].question = "ror-72h"
* item[4].item[6].enableWhen[0].operator = #=
* item[4].item[6].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[4].item[7].linkId = "lieux-exposition"
* item[4].item[7].text = "Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption"
* item[4].item[7].type = #group
* item[4].item[7].item[0].linkId = "sejour-etranger"
* item[4].item[7].item[0].text = "Séjour à l'étranger"
* item[4].item[7].item[0].type = #choice
* item[4].item[7].item[0].required = true
* item[4].item[7].item[0].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[0].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[4].item[7].item[0].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[4].item[7].item[1].linkId = "sejour-etranger-pays"
* item[4].item[7].item[1].text = "Pays du séjour"
* item[4].item[7].item[1].type = #choice
* item[4].item[7].item[1].code[0] = http://loinc.org#94651-7 "Country of travel [Location]"
* item[4].item[7].item[1].enableWhen[0].question = "sejour-etranger"
* item[4].item[7].item[1].enableWhen[0].operator = #=
* item[4].item[7].item[1].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[1].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"

* item[4].item[7].item[2].linkId = "contact-rougeole"
* item[4].item[7].item[2].text = "Contact avec un cas de rougeole"
* item[4].item[7].item[2].type = #choice
* item[4].item[7].item[2].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[2].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[4].item[7].item[2].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[4].item[7].item[3].linkId = "contact-rougeole-lieu"
* item[4].item[7].item[3].text = "Lieu du contact"
* item[4].item[7].item[3].type = #choice
* item[4].item[7].item[3].repeats = true
* item[4].item[7].item[3].enableWhen[0].question = "contact-rougeole"
* item[4].item[7].item[3].enableWhen[0].operator = #=
* item[4].item[7].item[3].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[3].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[4].item[7].item[4].linkId = "contact-rougeole-precision"
* item[4].item[7].item[4].text = "Précisez"
* item[4].item[7].item[4].type = #string
* item[4].item[7].item[4].enableWhen[0].question = "contact-rougeole"
* item[4].item[7].item[4].enableWhen[0].operator = #=
* item[4].item[7].item[4].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[4].item[7].item[5].linkId = "autres-cas-entourage"
* item[4].item[7].item[5].text = "Existence d'autres cas dans l'entourage"
* item[4].item[7].item[5].type = #choice
* item[4].item[7].item[5].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[5].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[4].item[7].item[5].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[4].item[7].item[6].linkId = "autres-cas-lieu"
* item[4].item[7].item[6].text = "Lieu"
* item[4].item[7].item[6].type = #choice
* item[4].item[7].item[6].repeats = true
* item[4].item[7].item[6].enableWhen[0].question = "autres-cas-entourage"
* item[4].item[7].item[6].enableWhen[0].operator = #=
* item[4].item[7].item[6].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[6].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"

* item[4].item[7].item[7].linkId = "autres-cas-precision"
* item[4].item[7].item[7].text = "Précisez"
* item[4].item[7].item[7].type = #string
* item[4].item[7].item[7].enableWhen[0].question = "autres-cas-entourage"
* item[4].item[7].item[7].enableWhen[0].operator = #=
* item[4].item[7].item[7].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"

* item[4].item[7].item[8].linkId = "autres-cas-sejour-etranger"
* item[4].item[7].item[8].text = "Notion de séjour à l'étranger pour les autres cas"
* item[4].item[7].item[8].type = #choice
* item[4].item[7].item[8].enableWhen[0].question = "autres-cas-entourage"
* item[4].item[7].item[8].enableWhen[0].operator = #=
* item[4].item[7].item[8].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[8].answerOption[0].valueCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[8].answerOption[1].valueCoding = http://loinc.org#LA32-8 "No"
* item[4].item[7].item[8].answerOption[2].valueCoding = http://loinc.org#LA12688-0 "Don't know"

* item[4].item[7].item[9].linkId = "autres-cas-pays"
* item[4].item[7].item[9].text = "Pays du séjour des autres cas"
* item[4].item[7].item[9].type = #choice
* item[4].item[7].item[9].enableWhen[0].question = "autres-cas-sejour-etranger"
* item[4].item[7].item[9].enableWhen[0].operator = #=
* item[4].item[7].item[9].enableWhen[0].answerCoding = http://loinc.org#LA33-6 "Yes"
* item[4].item[7].item[9].answerValueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"



* item[5].linkId = "statut-vaccinal"
* item[5].text = "Statut vaccinal"
* item[5].type = #group
* item[5].item[0].linkId = "vaccin-nombre-doses"
* item[5].item[0].text = "Nombre total de doses reçues"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueString = "0"
* item[5].item[0].answerOption[1].valueString = "1"
* item[5].item[0].answerOption[2].valueString = "2"
* item[5].item[0].answerOption[3].valueString = "3"
* item[5].item[0].answerOption[4].valueString = "inconnu"

* item[5].item[1].linkId = "vaccin-date-dose-1"
* item[5].item[1].text = "Date de la 1ère dose"
* item[5].item[1].type = #date
* item[5].item[1].enableWhen[0].question = "vaccin-nombre-doses"
* item[5].item[1].enableWhen[0].operator = #=
* item[5].item[1].enableWhen[0].answerString = "1"
* item[5].item[1].enableWhen[1].question = "vaccin-nombre-doses"
* item[5].item[1].enableWhen[1].operator = #=
* item[5].item[1].enableWhen[1].answerString = "2"
* item[5].item[1].enableWhen[2].question = "vaccin-nombre-doses"
* item[5].item[1].enableWhen[2].operator = #=
* item[5].item[1].enableWhen[2].answerString = "3"
* item[5].item[1].enableBehavior = #any

* item[5].item[2].linkId = "vaccin-date-dose-2"
* item[5].item[2].text = "Date de la 2ème dose"
* item[5].item[2].type = #date
* item[5].item[2].enableWhen[0].question = "vaccin-nombre-doses"
* item[5].item[2].enableWhen[0].operator = #=
* item[5].item[2].enableWhen[0].answerString = "2"
* item[5].item[2].enableWhen[1].question = "vaccin-nombre-doses"
* item[5].item[2].enableWhen[1].operator = #=
* item[5].item[2].enableWhen[1].answerString = "3"
* item[5].item[2].enableBehavior = #any

* item[5].item[3].linkId = "vaccin-date-dose-3"
* item[5].item[3].text = "Date de la 3ème dose"
* item[5].item[3].type = #date
* item[5].item[3].enableWhen[0].question = "vaccin-nombre-doses"
* item[5].item[3].enableWhen[0].operator = #=
* item[5].item[3].enableWhen[0].answerString = "3"

* item[5].item[4].linkId = "vaccin-source"
* item[5].item[4].text = "Informations recueillies d'après"
* item[5].item[4].type = #choice
* item[5].item[4].answerOption[0].valueString = "interrogatoire"
* item[5].item[4].answerOption[1].valueString = "carnet de santé ou de vaccination/dossier médical"


* item[6].linkId = "prescripteur"
* item[6].text = "Médecin prescripteur / Signalant (ou tampon)"
* item[6].type = #group
* item[6].item[0].linkId = "prescripteur-nom-rpps"
* item[6].item[0].text = "Nom / RPPS"
* item[6].item[0].type = #string

* item[6].item[1].linkId = "prescripteur-lieu"
* item[6].item[1].text = "Lieu d'exercice"
* item[6].item[1].type = #string

* item[6].item[2].linkId = "prescripteur-adresse"
* item[6].item[2].text = "Adresse"
* item[6].item[2].type = #string

* item[6].item[3].linkId = "prescripteur-telephone"
* item[6].item[3].text = "Téléphone"
* item[6].item[3].type = #string

* item[6].item[4].linkId = "prescripteur-courriel"
* item[6].item[4].text = "Courriel"
* item[6].item[4].type = #string


* item[7].linkId = "biologiste"
* item[7].text = "Biologiste (ou tampon)"
* item[7].type = #group
* item[7].item[0].linkId = "biologiste-nom-rpps"
* item[7].item[0].text = "Nom / RPPS"
* item[7].item[0].type = #string

* item[7].item[1].linkId = "biologiste-lbm-finess"
* item[7].item[1].text = "LBM / Finess"
* item[7].item[1].type = #string

* item[7].item[2].linkId = "biologiste-adresse"
* item[7].item[2].text = "Adresse"
* item[7].item[2].type = #string

* item[7].item[3].linkId = "biologiste-telephone"
* item[7].item[3].text = "Téléphone"
* item[7].item[3].type = #string

* item[7].item[4].linkId = "biologiste-courriel"
* item[7].item[4].text = "Courriel"
* item[7].item[4].type = #string


