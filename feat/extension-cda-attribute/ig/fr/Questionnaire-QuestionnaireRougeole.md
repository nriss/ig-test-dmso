# Formulaire de signalement - Rougeole - IG Test DMSO v0.1.0

## Questionnaire: Rougeole - cerfa n° 12554*04 

[Afficher le formulaire dans le Questionnaire Viewer](https://plynchnlm.github.io/questionnaire-viewer/?lfv=latest&q=https%3A%2F%2Fnriss.github.io%2Fig-test-dmso%2Fmain%2Fig%2Fen%2FQuestionnaire-QuestionnaireRougeole.json)

*  [Vue de l'arbre](#tabs-tree) 
*  [Exemple de rendu](#tabs-sample) 
*  [Logique des formes](#tabs-logic) 

### Test this Questionnaire

### Réponses à ce questionnaire

Il n'y a actuellement aucune instance de QuestionnaireResponse pour ce questionnaire défini dans cet IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QuestionnaireRougeole",
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer",
    "valueUrl" : "https://smt.esante.gouv.fr/fhir"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/dmso/Questionnaire/QuestionnaireRougeole",
  "version" : "0.1.0",
  "name" : "QuestionnaireRougeole",
  "title" : "Rougeole - cerfa n° 12554*04",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-11-02",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Formulaire de signalement de la rougeole (cerfa n° 12554*04 du 22/04/2026).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "item" : [{
    "linkId" : "entete",
    "text" : "Définition de cas",
    "type" : "group",
    "item" : [{
      "linkId" : "entete-definition-cas",
      "text" : "Cas clinique : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik. Cas confirmé : - confirmation biologique (détection d'IgM spécifiques (i) dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG (i) et/ou PCR positive et/ou culture positive) Ou - cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé. (i) en l'absence de vaccination récente",
      "_text" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
          "valueString" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Cas clinique</b> : fièvre ≥38,5 °C associée à une éruption maculo-papuleuse et à au moins un des signes suivants : conjonctivite, coryza, toux, signe de Köplik.</p><p><b>Cas confirmé :</b></p><ul><li>confirmation biologique (détection d'IgM spécifiques<sup>(i)</sup> dans la salive ou le sérum et/ou séroconversion ou élévation de quatre fois au moins du titre des IgG<sup>(i)</sup> et/ou PCR positive et/ou culture positive)</li></ul><p><b>Ou</b></p><ul><li>cas clinique ayant été en contact dans les 7 à 18 jours avant le début de l'éruption avec un cas confirmé.</li></ul><p><sup>(i)</sup> en l'absence de vaccination récente</p></div>"
        }]
      },
      "type" : "display"
    },
    {
      "linkId" : "entete-important",
      "text" : "Important : cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique",
      "_text" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
          "valueString" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Important :</b> cette maladie peut justifier une intervention urgente locale, nationale ou internationale. Tout cas répondant aux critères de signalement doit être signalé immédiatement, sans attendre une confirmation biologique, par tout moyen approprié (téléphone, télécopie, email…) aux personnels habilités de l'agence régionale de santé. <b>Cette maladie visant à être éliminée en France, toute forme clinique doit bénéficier d'une confirmation biologique</b></p></div>"
        }]
      },
      "type" : "display"
    },
    {
      "linkId" : "donnees-obligatoires",
      "text" : "* données obligatoires",
      "_text" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/rendering-xhtml",
          "valueString" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>* données obligatoires</b></p></div>"
        }]
      },
      "type" : "display"
    }]
  },
  {
    "linkId" : "patient",
    "text" : "Patient",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute",
        "valueString" : "ClinicalDocument/recordTarget/patientRole/patient/name/family"
      }],
      "linkId" : "patient-nom",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "45394-4",
        "display" : "Nom du patient"
      }],
      "text" : "Nom",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute",
        "valueString" : "ClinicalDocument/recordTarget/patientRole/patient/name/given"
      }],
      "linkId" : "patient-prenom",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "45392-8",
        "display" : "Prénom du patient"
      }],
      "text" : "Prénom",
      "type" : "string",
      "required" : true
    },
    {
      "extension" : [{
        "url" : "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute",
        "valueString" : "ClinicalDocument/recordTarget/patientRole/patient/birthTime/@value"
      }],
      "linkId" : "patient-date-naissance",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "21112-8",
        "display" : "Date de naissance"
      }],
      "text" : "Date de naissance",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "patient-telephone",
      "text" : "Téléphone",
      "type" : "string"
    },
    {
      "linkId" : "patient-courriel",
      "text" : "Courriel",
      "type" : "string"
    },
    {
      "linkId" : "patient-sexe",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "107454-1",
        "display" : "Sexe administratif"
      }],
      "text" : "Sexe",
      "type" : "choice",
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-AdministrativeGender-cisis"
    },
    {
      "linkId" : "patient-code-postal",
      "text" : "Code postal du domicile",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "patient-pays",
      "text" : "Pays (si patient résidant à l'étranger)",
      "type" : "string",
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"
    },
    {
      "linkId" : "patient-informe",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "MED-1337",
        "display" : "Le patient (ou le tiers) est-il informé du diagnostic ?"
      }],
      "text" : "Le patient (ou le tiers) est-il informé du diagnostic ?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA12688-0",
          "display" : "Don't know"
        }
      }]
    },
    {
      "linkId" : "patient-peut-repondre",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "MED-1338",
        "display" : "L'état clinique du patient lui permet-il de répondre à l'investigation ?"
      }],
      "text" : "L'état clinique du patient lui permet-il de répondre à l'investigation ?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA12688-0",
          "display" : "Don't know"
        }
      }]
    }]
  },
  {
    "linkId" : "representant-legal",
    "text" : "Représentant légal (obligatoire pour les mineurs)",
    "type" : "group",
    "item" : [{
      "linkId" : "representant-legal-nom",
      "text" : "Nom",
      "type" : "string"
    },
    {
      "linkId" : "representant-legal-prenom",
      "text" : "Prénom",
      "type" : "string"
    },
    {
      "linkId" : "representant-legal-telephone",
      "text" : "Téléphone",
      "type" : "string"
    },
    {
      "linkId" : "representant-legal-courriel",
      "text" : "Courriel",
      "type" : "string"
    }]
  },
  {
    "linkId" : "personne-de-confiance",
    "text" : "Personne de confiance (si l'état clinique du patient ne lui permet pas de répondre à l'investigation de l'ARS)",
    "type" : "group",
    "item" : [{
      "linkId" : "personne-de-confiance-qualite",
      "text" : "Qualité",
      "type" : "string",
      "answerValueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS"
    },
    {
      "linkId" : "personne-de-confiance-nom",
      "text" : "Nom",
      "type" : "string"
    },
    {
      "linkId" : "personne-de-confiance-prenom",
      "text" : "Prénom",
      "type" : "string"
    },
    {
      "linkId" : "personne-de-confiance-telephone",
      "text" : "Téléphone",
      "type" : "string"
    },
    {
      "linkId" : "personne-de-confiance-courriel",
      "text" : "Courriel",
      "type" : "string"
    }]
  },
  {
    "linkId" : "clinique",
    "text" : "Clinique",
    "type" : "group",
    "item" : [{
      "linkId" : "debut-eruption",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "81268-5",
        "display" : "Date de début de l'éruption"
      }],
      "text" : "Date de début de l'éruption",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "fievre",
      "code" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10",
        "code" : "R50.9",
        "display" : "Fièvre, sans précision"
      }],
      "text" : "Fièvre > 38,5° C",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "exantheme",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "247471006",
        "display" : "éruption maculopapuleuse"
      }],
      "text" : "Exanthème maculo papuleux",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }],
      "item" : [{
        "linkId" : "exantheme-generalise",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "725119006",
          "display" : "éruption cutanée généralisée"
        }],
        "text" : "Exanthème maculo papuleux généralisé",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "exantheme",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA32-8",
            "display" : "No"
          }
        }]
      }]
    },
    {
      "linkId" : "toux",
      "code" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10",
        "code" : "R05",
        "display" : "Toux"
      }],
      "text" : "Toux",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "conjonctivite",
      "code" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10",
        "code" : "H10.9",
        "display" : "Conjonctivite, sans précision"
      }],
      "text" : "Conjonctivite",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "coryza",
      "code" : [{
        "system" : "http://hl7.org/fhir/sid/icd-10",
        "code" : "J00",
        "display" : "Rhinopharyngite aigüe [rhume banal]"
      }],
      "text" : "Coryza",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "koplik",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271667004",
        "display" : "signes de Koplik"
      }],
      "text" : "Signe de Köplik",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "facteurs-risque",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "46467-7",
        "display" : "Facteurs de risque"
      }],
      "text" : "Facteurs de risque",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-facteur-risque-rougeole-cisis",
      "item" : [{
        "linkId" : "facteurs-risque-autre",
        "text" : "Facteur de risque : précisez",
        "type" : "string",
        "enableWhen" : [{
          "question" : "facteurs-risque",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "GEN-092.01.27",
            "display" : "Autre facteur de risque"
          }
        }]
      }]
    },
    {
      "linkId" : "complications",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "MED-1339",
        "display" : "Complication"
      }],
      "text" : "Complications",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-complication-rougeole-cisis",
      "item" : [{
        "linkId" : "complications-autre",
        "text" : "Complication : précisez",
        "type" : "string",
        "enableWhen" : [{
          "question" : "complications",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://hl7.org/fhir/sid/icd-10",
            "code" : "B05.8",
            "display" : "Rougeole avec autres complications"
          }
        }]
      }]
    },
    {
      "linkId" : "hospitalisation",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "77974-4",
        "display" : "Hospitalisation"
      }],
      "text" : "Hospitalisation",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }],
      "item" : [{
        "linkId" : "hospitalisation-date",
        "text" : "Date d'hospitalisation",
        "type" : "date",
        "enableWhen" : [{
          "question" : "hospitalisation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "hospitalisation-lieu",
        "text" : "Lieu de l'hospitalisation",
        "type" : "string",
        "enableWhen" : [{
          "question" : "hospitalisation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      }]
    },
    {
      "linkId" : "reanimation",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "305351004",
        "display" : "admission aux soins intensifs"
      }],
      "text" : "Réanimation",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }],
      "item" : [{
        "linkId" : "reanimation-date",
        "text" : "Date",
        "type" : "date",
        "enableWhen" : [{
          "question" : "reanimation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      }]
    },
    {
      "linkId" : "statut-clinique-du-patient",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "11323-3",
        "display" : "Statut clinique du patient"
      },
      {
        "system" : "http://loinc.org",
        "code" : "81954-0",
        "display" : "Date du décès [Date] Patient ; Numérique"
      }],
      "text" : "Statut clinique du patient",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-rougeole-cisis",
      "item" : [{
        "linkId" : "deces-date",
        "text" : "Date du décès",
        "type" : "date",
        "enableWhen" : [{
          "question" : "statut-clinique-du-patient",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "419620001",
            "display" : "décès"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "biologie",
    "text" : "Biologie",
    "type" : "group",
    "item" : [{
      "linkId" : "confirmation-biologique",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "MED-1360",
        "display" : "Demande de confirmation biologique"
      }],
      "text" : "Demande de confirmation biologique",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "rtpcr-oropharynx",
      "text" : "RT-PCR : oro-pharynx",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }]
          }
        }],
        "linkId" : "rtpcr-oropharynx-definition",
        "text" : "RT-PCR Oro-pharynx et autres échantillons de voies aériennes supérieures.",
        "type" : "display"
      },
      {
        "linkId" : "rtpcr-oropharynx-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "rtpcr-oropharynx-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "91077-8",
          "display" : "Rougeole virus ARN [Présence/Seuil] Échantillon du système respiratoire supérieur ; Qualitatif ; PCR amplification de cible"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "rtpcr-kit-salivaire",
      "text" : "RT-PCR : Salive",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "help",
              "display" : "Help-Button"
            }]
          }
        }],
        "linkId" : "rtpcr-kit-salivaire-definition",
        "text" : "Prélèvement à privilégier : recueil du liquide buccal sur Kit salivaire (Oracol©).",
        "type" : "display"
      },
      {
        "linkId" : "rtpcr-kit-salivaire-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "rtpcr-kit-salivaire-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "108194-2",
          "display" : "Rougeole virus ARN [Présence/Seuil] Salive ; Qualitatif ; PCR amplification de cible"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "rtpcr-autre",
      "text" : "RT-PCR : autre",
      "type" : "group",
      "item" : [{
        "linkId" : "rtpcr-autre-prelevement",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "17636008",
          "display" : "prélèvement d'échantillon"
        }],
        "text" : "Nature du prélèvement",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-rougeole-cisis"
      },
      {
        "linkId" : "rtpcr-autre-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "rtpcr-autre-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "48508-6",
          "display" : "Rougeole virus ARN [Présence/Seuil] Milieux divers ; Qualitatif ; PCR amplification de cible"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "igm-sang",
      "text" : "IgM : sang",
      "type" : "group",
      "item" : [{
        "linkId" : "igm-sang-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "igm-sang-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "35276-5",
          "display" : "Rougeole virus Ac IgM [Présence/Seuil] Sérum ; Qualitatif ; Immunoanalyse"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "igm-salive",
      "text" : "IgM : salive",
      "type" : "group",
      "item" : [{
        "linkId" : "igm-salive-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "igm-salive-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "108192-6",
          "display" : "Rougeole virus Ac IgM [Présence/Seuil] Salive ; Qualitatif ; Immunoanalyse"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "igg-sang",
      "text" : "IgG : sang",
      "type" : "group",
      "item" : [{
        "linkId" : "igg-sang-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "igg-sang-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "35275-7",
          "display" : "Rougeole virus Ac IgG [Présence/Seuil] Sérum ; Qualitatif ; Immunoanalyse"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-4-cisis"
      },
      {
        "linkId" : "igg-date-premier",
        "text" : "Date du 1er prélèvement",
        "type" : "date"
      }]
    },
    {
      "linkId" : "igg-salive",
      "text" : "IgG : salive",
      "type" : "group",
      "item" : [{
        "linkId" : "igg-salive-date",
        "text" : "Date du prélèvement",
        "type" : "date"
      },
      {
        "linkId" : "igg-salive-interpretation",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "108193-4",
          "display" : "Rougeole virus Ac IgG [Présence/Seuil] Salive ; Qualitatif ; Immunoanalyse"
        }],
        "text" : "Interprétation",
        "type" : "choice",
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mso-resultat-qualitatif-2-cisis"
      }]
    },
    {
      "linkId" : "envoi-cnr",
      "text" : "Envoi de prélèvements au CNR",
      "type" : "group",
      "item" : [{
        "linkId" : "cnr-kit-salivaire",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1351",
          "display" : "Envoi kit salivaire au CNR"
        }],
        "text" : "Kit salivaire (Oracol©)",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA32-8",
            "display" : "No"
          }
        }],
        "item" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://hl7.org/fhir/questionnaire-item-control",
                "code" : "help",
                "display" : "Help-Button"
              }]
            }
          }],
          "linkId" : "cnr-kit-salivaire-definition",
          "text" : "A compléter par le médecin généraliste.",
          "type" : "display"
        },
        {
          "linkId" : "cnr-kit-salivaire-date-envoi",
          "text" : "Date d'envoi",
          "type" : "date",
          "enableWhen" : [{
            "question" : "cnr-kit-salivaire",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA33-6",
              "display" : "Yes"
            }
          }]
        }]
      },
      {
        "linkId" : "cnr-autres-prelevements",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1352",
          "display" : "Envoi autres prélèvements au CNR"
        }],
        "text" : "Autres prélèvements",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA32-8",
            "display" : "No"
          }
        }],
        "item" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://hl7.org/fhir/questionnaire-item-control",
                "code" : "help",
                "display" : "Help-Button"
              }]
            }
          }],
          "linkId" : "cnr-autres-prelevements-definition",
          "text" : "A compléter par le biologiste ou l’ARS.",
          "type" : "display"
        },
        {
          "linkId" : "cnr-autres-prelevements-date-envoi",
          "text" : "Date d'envoi",
          "type" : "date",
          "enableWhen" : [{
            "question" : "cnr-autres-prelevements",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA33-6",
              "display" : "Yes"
            }
          }]
        }]
      },
      {
        "linkId" : "cnr-souhait-kits",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "MED-1359",
          "display" : "Souhaitez-vous recevoir des kits pour prélèvements et envois d’échantillons de salive au CNR (recherche d’IgM/PCR) ?"
        }],
        "text" : "Souhaitez-vous recevoir des kits pour prélèvements et envois d'échantillons de salive au CNR (recherche d'IgM/PCR) ?",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA32-8",
            "display" : "No"
          }
        }],
        "item" : [{
          "linkId" : "cnr-nombre-kits",
          "code" : [{
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "GEN-429",
            "display" : "Nombre de kits"
          }],
          "text" : "Nombre de kits pour prélèvements souhaité ?",
          "type" : "integer",
          "enableWhen" : [{
            "question" : "cnr-souhait-kits",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA33-6",
              "display" : "Yes"
            }
          }]
        }]
      }]
    }]
  },
  {
    "linkId" : "exposition",
    "text" : "Exposition(s) à risque",
    "type" : "group",
    "item" : [{
      "linkId" : "collectivite-risque",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-421",
        "display" : "Fréquentation d'une collectivité accueillant des sujets à risque de rougeole grave"
      }],
      "text" : "Le cas fréquente-t-il une collectivité accueillant des sujets à risque de rougeole grave ?",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-collectivite-sujets-a-risque-rougeole-cisis",
      "item" : [{
        "linkId" : "collectivite-risque-autre",
        "text" : "Collectivité : précisez",
        "type" : "string",
        "enableWhen" : [{
          "question" : "collectivite-risque",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
            "code" : "GEN-092.06.11",
            "display" : "Autre collectivité"
          }
        }]
      }]
    },
    {
      "linkId" : "sujet-risque-entourage",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-423",
        "display" : "Présence de sujet à risque de rougeole grave dans l’entourage du cas (femme enceinte, immunodéprimé, nourrisson)"
      }],
      "text" : "Présence de sujet à risque de rougeole grave dans l'entourage du cas (femme enceinte, immunodéprimé, nourrisson)",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }]
    },
    {
      "linkId" : "immunoglobulines",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-423",
        "display" : "Administration d’immunoglobulines aux contacts à risque de rougeole grave"
      }],
      "text" : "Administration d'immunoglobulines aux contacts à risque de rougeole grave",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }],
      "item" : [{
        "linkId" : "immunoglobulines-nombre",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "GEN-425",
          "display" : "Nombre d'admministration d'immunoglobines aux contacts àrisque de rougeole grave"
        }],
        "text" : "Nombre de personnes",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "immunoglobulines",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      }]
    },
    {
      "linkId" : "ror-72h",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-426",
        "display" : "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
      }],
      "text" : "Administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      }],
      "item" : [{
        "linkId" : "ror-72h-nombre",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "GEN-427",
          "display" : "Nombre d'administration dans les 72 heures suivant le 1er contact du vaccin ROR aux personnes contact"
        }],
        "text" : "Nombre de personnes",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "ror-72h",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "lieux-exposition",
    "text" : "Lieux et circonstances de l'exposition dans les 7 à 18 jours avant la date de l'éruption",
    "type" : "group",
    "item" : [{
      "linkId" : "sejour-etranger",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276030007",
        "display" : "voyage à l'étranger ou en territoire ultramarin"
      }],
      "text" : "Séjour à l'étranger",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA12688-0",
          "display" : "Don't know"
        }
      }],
      "item" : [{
        "linkId" : "sejour-etranger-pays",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "94651-7",
          "display" : "Pays du voyage [Localisation] Patient"
        }],
        "text" : "Pays du séjour",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "sejour-etranger",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }],
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"
      }]
    },
    {
      "linkId" : "contact-rougeole",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-419",
        "display" : "Contact avec un cas de rougeole"
      }],
      "text" : "Contact avec un cas de rougeole",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA12688-0",
          "display" : "Don't know"
        }
      }],
      "item" : [{
        "linkId" : "contact-rougeole-lieu",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "81267-7",
          "display" : "Contexte d'exposition à la maladie"
        }],
        "text" : "Lieu du contact",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "contact-rougeole",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }],
        "repeats" : true,
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"
      },
      {
        "linkId" : "contact-rougeole-precision",
        "text" : "Précisez",
        "type" : "string",
        "enableWhen" : [{
          "question" : "contact-rougeole",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      }]
    },
    {
      "linkId" : "autres-cas-entourage",
      "code" : [{
        "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
        "code" : "GEN-420",
        "display" : "Existence d'autres cas dans l'entourage"
      }],
      "text" : "Existence d'autres cas dans l'entourage",
      "type" : "choice",
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA33-6",
          "display" : "Yes"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA32-8",
          "display" : "No"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA12688-0",
          "display" : "Don't know"
        }
      }],
      "item" : [{
        "linkId" : "autres-cas-lieu",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "81267-7",
          "display" : "Contexte d'exposition à la maladie"
        }],
        "text" : "Lieu",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "autres-cas-entourage",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }],
        "repeats" : true,
        "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lieu-contact-rougeole-cisis"
      },
      {
        "linkId" : "autres-cas-precision",
        "text" : "Précisez",
        "type" : "string",
        "enableWhen" : [{
          "question" : "autres-cas-entourage",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "autres-cas-sejour-etranger",
        "code" : [{
          "system" : "https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis",
          "code" : "GEN-430",
          "display" : "Séjour à l’étranger pour les autres cas de rougeole dans l'entourage"
        }],
        "text" : "Notion de séjour à l'étranger pour les autres cas",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "autres-cas-entourage",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA33-6",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA32-8",
            "display" : "No"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://loinc.org",
            "code" : "LA12688-0",
            "display" : "Don't know"
          }
        }],
        "item" : [{
          "linkId" : "autres-cas-pays",
          "code" : [{
            "system" : "http://loinc.org",
            "code" : "94651-7",
            "display" : "Pays du voyage [Localisation] Patient ; Résultat nominal"
          }],
          "text" : "Pays du séjour des autres cas",
          "type" : "choice",
          "enableWhen" : [{
            "question" : "autres-cas-sejour-etranger",
            "operator" : "=",
            "answerCoding" : {
              "system" : "http://loinc.org",
              "code" : "LA33-6",
              "display" : "Yes"
            }
          }],
          "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-iso3166-1-2-cisis"
        }]
      }]
    }]
  },
  {
    "linkId" : "vaccin-rougeole",
    "text" : "Statut vaccinal Rougeole",
    "type" : "group",
    "item" : [{
      "linkId" : "vaccin-rougeole-nombre-doses",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "30973-2",
        "display" : "Nombre de doses"
      }],
      "text" : "Nombre total de doses reçues",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "0"
      },
      {
        "valueString" : "1"
      },
      {
        "valueString" : "2"
      },
      {
        "valueString" : "3"
      },
      {
        "valueString" : "inconnu"
      }]
    },
    {
      "linkId" : "vaccin-date-dose-1",
      "text" : "Date de la 1ère dose",
      "type" : "date",
      "enableWhen" : [{
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "1"
      },
      {
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "2"
      },
      {
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "3"
      }],
      "enableBehavior" : "any"
    },
    {
      "linkId" : "vaccin-date-dose-2",
      "text" : "Date de la 2ème dose",
      "type" : "date",
      "enableWhen" : [{
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "2"
      },
      {
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "3"
      }],
      "enableBehavior" : "any"
    },
    {
      "linkId" : "vaccin-date-dose-3",
      "text" : "Date de la 3ème dose",
      "type" : "date",
      "enableWhen" : [{
        "question" : "vaccin-rougeole-nombre-doses",
        "operator" : "=",
        "answerString" : "3"
      }]
    },
    {
      "linkId" : "vaccin-source",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "48766-0",
        "display" : "Source de l'information"
      }],
      "text" : "Informations recueillies d'après",
      "type" : "choice",
      "answerValueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-information-vaccin-rougeole-cisis"
    }]
  },
  {
    "linkId" : "signalant",
    "text" : "Signalant",
    "type" : "group",
    "item" : [{
      "linkId" : "signalant-rpps",
      "text" : "Numéro RPPS",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-profession",
      "text" : "Profession",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-nom",
      "text" : "Nom",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-prenom",
      "text" : "Prénom",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-adresse",
      "text" : "Adresse",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-code-postal",
      "text" : "Code postal",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-commune",
      "text" : "Commune",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-es-finess",
      "text" : "N° FINESS de l'établissement",
      "type" : "string"
    },
    {
      "linkId" : "signalant-es-nom",
      "text" : "Nom de l'établissement",
      "type" : "string"
    },
    {
      "linkId" : "signalant-telephone",
      "text" : "Téléphone",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "signalant-courriel",
      "text" : "Courriel",
      "type" : "string",
      "required" : true
    }]
  },
  {
    "linkId" : "biologiste",
    "text" : "Biologiste",
    "type" : "group",
    "item" : [{
      "linkId" : "biologiste-rpps",
      "text" : "N° RPPS",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-profession",
      "text" : "Profession",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-nom",
      "text" : "Nom",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-prenom",
      "text" : "Prénom",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-adresse",
      "text" : "Adresse",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-code-postal",
      "text" : "Code postal",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-commune",
      "text" : "Commune",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-es-finess",
      "text" : "N° FINESS du laboratoire",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-es-nom",
      "text" : "Nom du laboratoire",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-telephone",
      "text" : "Téléphone",
      "type" : "string"
    },
    {
      "linkId" : "biologiste-courriel",
      "text" : "Courriel",
      "type" : "string"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "language" : "text/fhirpath",
        "expression" : "now()"
      }
    }],
    "linkId" : "date-signalement",
    "text" : "Date de signalement",
    "type" : "dateTime",
    "required" : true,
    "readOnly" : true
  }]
}

```
