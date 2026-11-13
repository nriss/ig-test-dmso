# Attribut CDA de l'item de questionnaire - IG Test DMSO v0.1.0

## Extension: Attribut CDA de l'item de questionnaire 

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.dmso|current/StructureDefinition/StructureDefinition-questionnaire-item-cda-attribute.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-questionnaire-item-cda-attribute.csv), [Excel](../StructureDefinition-questionnaire-item-cda-attribute.xlsx), [Schematron](../StructureDefinition-questionnaire-item-cda-attribute.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "questionnaire-item-cda-attribute",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute",
  "version" : "0.1.0",
  "name" : "QuestionnaireItemCdaAttribute",
  "title" : "Attribut CDA de l'item de questionnaire",
  "status" : "draft",
  "date" : "2026-11-12T09:08:33+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Permet de renseigner l'attribut CDA correspondant à l'item du questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Questionnaire.item"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Attribut CDA de l'item de questionnaire",
      "definition" : "Permet de renseigner l'attribut CDA correspondant à l'item du questionnaire."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/dmso/StructureDefinition/questionnaire-item-cda-attribute"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
