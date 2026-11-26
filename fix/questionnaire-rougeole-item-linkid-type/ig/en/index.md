# Accueil - IG Test DMSO v0.1.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

 **Brief description of this Implementation Guide**
 Proof of concept (PoC) to test the Questionnaire and QuestionnaireResponse resources for the notification of notifiable diseases (maladies à déclaration obligatoire). 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/dmso

### Introduction

Certaines maladies doivent obligatoirement être signalées aux autorités sanitaires : ce sont les maladies à signalement obligatoire (déclaration obligatoire). Cet Implementation Guide explore comment décrire les formulaires de déclaration avec la ressource FHIR `Questionnaire` et comment en porter les réponses avec la ressource `QuestionnaireResponse`.

Les principales sections de l'IG sont :

* Le contexte de l'IG, quelle problématique il résout
* Ce que les Implémenteurs doivent mettre en place
* Un onglet "Ressources de conformité" pour s'assurer d'un schéma global entre tous les IGs

### Périmètre du projet

Il s'agit d'un **POC** (preuve de concept) visant à tester les ressources `Questionnaire` et `QuestionnaireResponse` dans le cadre des déclarations des maladies à signalement obligatoire.

Le test pourra être poussé plus loin avec l'outillage suivant :

1. **Gestionnaire de formulaires**(form manager) ;
1. **Outillage de génération automatique de formulaires**et de création de`QuestionnaireResponse`;
1. **Règles métier**: par exemple, si une réponse donnée est positive, alors d'autres questions s'affichent.

Toujours laisser l'onglet "Ressources de conformité" pour s'assurer d'une cohérence globale entre tous les IGs

### Fonctionnalités attendues

Le fichier [`sources/formulaire_ps_mso_rougeole.csv`](https://github.com/nriss/ig-test-dmso/blob/main/sources/formulaire_ps_mso_rougeole.csv) décrit le formulaire de signalement de la rougeole (déclarant : professionnel de santé authentifié). Il se présente comme une table de décisions de règles qui génère les champs du formulaire. Les fonctionnalités nécessaires, déduites de ce fichier, sont les suivantes :

* **Structuration en sections** : le formulaire est organisé en sections (déclarant, patient, suivi et signes cliniques, antécédents vaccinaux, exposition et séjour amont, biologie, autres informations, etc.), chacune contenant des champs ordonnés.
* **Ajout et masquage de champs** : affichage d'un champ à une position donnée dans une section, ou masquage d'un champ.
* **Règles conditionnelles inter-champs** : affichage ou masquage d'un champ selon la valeur d'un autre champ, avec les opérateurs `=`, `!=`, `parmi`, `pas parmi`, `>=` et `<` (par exemple : le champ « précisions » apparaît si la réponse « autre » est cochée ; la date de 2ème dose apparaît si le nombre de doses reçues est supérieur ou égal à 2).
* **Champs conditionnant** : un champ peut être déclaré comme pilotant l'affichage d'autres champs.
* **Champs obligatoires** : obligatoire ou non, le fichier porte deux indicateurs booléens par champ (la signification exacte de chacun reste à confirmer).
* **Libellés spécifiques** : libellé propre à chaque champ.
* **Aide à la saisie et infobulle** : texte d'aide (pouvant contenir du HTML) et infobulle par champ.
* **Champs répétables (déclinables)** : un champ peut être saisi plusieurs fois, avec un nombre maximum d'occurrences (par exemple 5 pour les pays de séjour).
* **Champs liés** et **masquage dans le PDF** : prévus par les colonnes du fichier mais non renseignés dans ce formulaire (à confirmer si nécessaires).
* **Adaptation selon le contexte** : règles dépendant du type de déclarant et du type de signalement (ici : professionnel de santé authentifié, rougeole), avec variation selon la catégorie professionnelle du déclarant (par exemple, des champs « médecin prescripteur » ou « biologiste » affichés selon la catégorie).

### Contraintes

* Les formulaires (`Questionnaire`) doivent être **versionnés**.
* L'outil d'édition et de publication des formulaires doit être **simple d'usage**, y compris pour des profils non techniques.
* Les réponses doivent être portées par des ressources `QuestionnaireResponse`, afin d'être en FHIR.
* Les libellés des jeux de valeurs (ValueSet) utilisés doivent être **les mêmes que ceux des ValueSet du SMT**, et non des adaptations faites pour le CERFA.
* On s'appuiera sur les terminologies du CI-SIS (LOINC, SNOMED CT, etc.) pour créer les jeux de valeurs (JDV).

### Objectif de sortie

Possibilités de sortie :

1. Produire un`Bundle`de type`collection`contenant :
* un `Patient` ;
* un `Practitioner` ;
* une `QuestionnaireResponse`.

1. Produire une`QuestionnaireResponse`seule.
1. Ou autre : produire du « full FHIR », avec des`Observation`et l'ensemble des ressources associées.

### Perspective

Utiliser l'opération **SDC `$extract`** (Structured Data Capture) pour extraire les réponses d'une `QuestionnaireResponse` en ressources FHIR `Observation`.

Pour préparer cette extraction, le Questionnaire associe des codes **LOINC** aux questions qui disposent d'un code (identité du patient, date de début de l'éruption, hospitalisation, date de décès, pays du séjour, résultats biologiques RT-PCR / IgM / IgG) et aux réponses oui / non / ne sait pas et positif / négatif. Les autres questions (par exemple les signes cliniques : fièvre, toux, conjonctivite, coryza, signe de Köplik) n'ont pas de code LOINC identifié à ce stade et restent à coder.

Question ouverte : existe-t-il des possibilités d'insérer des règles d'affichage graphique des champs (APE) ?

### Dépendances








### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [DMSO](index.md) and [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [specimenType](http://terminology.hl7.org/7.5.0/CodeSystem-v2-0487.html): [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)
* [AdministrativeGender](http://terminology.hl7.org/7.5.0/CodeSystem-v3-AdministrativeGender.html): [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)
* [SpecimenType](http://terminology.hl7.org/7.5.0/CodeSystem-v3-SpecimenType.html): [QuestionnaireRougeole](Questionnaire-QuestionnaireRougeole.md)


