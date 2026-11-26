**Objet du document** - ce document recense l'ensemble par thématique l'ensemble des informations commune à l'établissement de reccueil d'information épidémiologique. Il a été construit sur la base des besoins pour les Maladie à Signalement Obligatoire (arbovirose, rougeole) et à vocation à être étendu à l'ensemble des MSO ou représentation de données sous forme de FHIR Questionnaire

**Utilisateurs cibles** 
-  Experts Interopérabilité - rédaction des spécifications
- Product Owner & Buisiness Analyst en charge de la construction métier de nouveaux questionnaires
- IA sous supervision humaine pour l'automatisation des taches
- **La validation par des experts sémantique reste une étape indispensable pour les spécifications d'interopérabilité au niveau nationale**

**Cycle d'évolution** Ce document est amené à être incrémenté. Tout besoin entrant dans le périmètre de ce document et avec une valeur ajoutée pour l'harmonisation des questionnaire doit être remonté aux experts métier en charge de la maintenance du document

**Précaution d'emploi**
- les thématiques (sections) préfixées par DRAFT sont en cours de révision majeure et validation par les experts sémantiques de l'ANS. Elle ne doivent pas être utilisé sans l'aval des experts. 
- Les traductions des codes LOINC sont susceptible d'évoluer (et ne sont pas mise à jour) ; il est recommandé de récupérer & valider les traductions officielles en cours depuis le SMT Web ou FTS.
- La colonne "Value - Type & contrainte sémantique" explicite les contraintes sémantique sur les réponses associées à la question. Elles doivent être vérifié au moment de la validation du code
- Certaines question (colonne usage) sont associés à des notes précisants les choix réalisés et le contexte d'usage.


### 1 - Données relatives à l’hospitalisation

**Périmètre FHIR** : Observation ou Questionnaire

**Date de dernière revue** 09/11/2026

**Statut :** validé

**Note :** NA



|Usage|Code |Value - Type & contrainte sémantique|
|-|-|-|
|Le patient a-t-il été hospitalisé|77974-4 Hopsitalisation du patient pour la pathologie d'intérêt|Booléen|
|Date d’hospitalisation|8656-1 Date d'admission à l'hopital|DateTime|
|Etablissement d’hospitalisation|58237-9 Nom de l'hopital|Codable Concept (/!\ doit être une donnée identifiante)|
|Le patient a-t-il été admis en réanimation|95420-6 Admission en soin intensif pour la pathologie d'intérêt |Booléan|
|Date d’entrée en réanimation|95367-9 Date d'admission en soin intensif |Date|
|Etablissement de soin (note 1)|76696-4 Nom de l'établissement |Codable Concept (/!\ doit être une donnée identifiante)|



Note 1 - le code 76696-4  évoque un établissement (facility), il a un périmètre plus large que le code 58237-9. Il doit être utilisé pour décrire la structure d'admission d'un patient dans le cas où celui ci peut être soit une structure hospitalière, soit un établissement médico-social (centre de jour, ephad...) 



### 2- DRAFT FHIR Données cliniques (pathologie, date…)

**Stratégie de codification** : La liste des symptômes, signe, diagnostique et antécédant doit être reporté avec un code générique et une liste de résultats possible. Le choix du code doit tenir compte du contenu métier des données ; pour une liste métier ou une série de question cela peut se traduire dans plusieurs sous liste codées. Le choix de la terminologie pour les codes réponse ainsi que les valeurs est à faire valider par les experts sémantiques. **L'expression d'information sur l'absence de symptome, diagnostic ou l'absence de réponse est à étudier par le CGTS**

**16/11/2026 - à confirmer : cette stratégie n'a pas été discuté pour la vague 1 des MSO ; au vue des contraintes projets une version code "le patient présente t'il le symptome X" | Oui/Non/NSP sera retenu.**
 

**Périmètre FHIR** : Observation ou Questionnaire

**Hors Perimetre FHIR** : Condition



**Date de dernière revue** 20/11/2026

**Statut :** En cours

**Note :** traduction à faire + choix code complication



|Usage|Code|Value - Type  & contrainte sémantique|
|-|-|-|
|Informations cliniques sur la maladie : signe et symptômes (fièvre, douleur articulaire) - voir note 1|104950-1 Signe ou symptôme associé |Codable Concept (SNOMED finding; disorder;or situation hierarchies)|
|Information diagnostic final|29308-4 Interprétation diagnostique|Codable Concept|
|Information symptome|75325-1 Symptôme|Codable concept - voir définition LOINC pour plus d'explication|
|Date de début de l’éruption|81268-5 Date de début de l'éruption |Date|
|Date des premiers signes cliniques|65222-2 Date et heure d'apparition des premiers symptomes \[Horodatage\] Patient ; Numérique |DateTime|
|Statut clinique du patient|11323-3 Etat de santé du patient rapporté |Codable Concept|
|Date du décès|81954-0 Date du décès \[Date] Patient ; Numérique |Date|
|Complication| 67187-5 Type of complication |Codable Concept|
|Complication, autre| A TROUVER |Texte|
|Antécédant de maladie - à valider |11349-8 History of Past illness||
|Le patient a t'il des signes cliniques associé à la maladie |95419-8    Whether the patient has symptoms related to condition of interest |Booléen|
|Statut du diagnostique | 33999-4 Diagnosis status |Codable Concept (nouveau, suspecté, confirmé, non confirmé, supprimé...)|
 

**Note 1** : Informations cliniques sur la maladie : signe et symptômes
- Périmètre : Cette catégorie permet d’inclure uniquement des signes cliniques, symptôme et pathologie.
- Hors périmètre : Les éléments antécédents, traitement et actes/procédure sont exclus de cette catégorie.

**Note 2** - Codes complications alternatifs :
- 19817-6 \[LOINC] Complications 
- 55109-3 Complications peut être utilisé pour typer un document décrivant les investigation liée à une complication

### 3 - DRAFT - FHIR Voyage

**Stratégie de codification** : Les codes utilisés pour décrire les voyages sont génériques, il ne mentionnent les contraintes métier nécessaire à l'enregistrement des données (ex. 15 j avant le début des symptômes). Pour le CERFA Chikungunya, plusieur occurrence des informations voyage sont demandés ; le patron ci-dessous n'en tient pas compte. 



**Périmètre FHIR** : Observation ou Questionnaire

**Contrainte du modèle syntaxique :** Le format final doit permettre de grouper les informations voyage, pays, département et dates. 



**Date de dernière revue** 09/11/2026



**Statut :** En cours de validation

**Note :** 
- traduction à faire + 
 - choix code pays \& date



|Usage|Code |Value - Type & contrainte sémantique|
|-|-|-|
|Voyage dans les XX jours précédant/suivant|**8691-8 History of Travel**. ||
|Pays|**82753-5 County of travel \[Location]** ; <br />**94651-7 Pays du voyage \[Localisation] Patient ; Résultat nominal** => Pays du voyage ?|VS|
|Département/territoire ultramarin|**82754-3 State of travel**|VS|
|Date de début du voyage|**91560-3 Date of departure from travel destination**|Date|
|Date de fin|**91559-5 Date of arrival at travel destination**|Date|


### 4 - DRAFT FHIR Vaccination

**Stratégie de codification** : **_Revue à faire sur la base des informations demandés dans les CERFA (utilisation ATC vs code SNOMED CT ; organisation des données...)_**

**Périmètre FHIR** : Observation ou Questionnaire

**Date de dernière revue** 09/11/2026



**Statut :** DRAFT à discuter avec l'équipe sémantique - ne pas implémenter

**Note :** certains codes loinc spécifique à l'immunisation existent

|Usage|Code|Value - Type & contrainte sémantique|
|-|-|-|
|Statut de vaccination (immunisation)|**11370-4 Immunization status - Reported**|VS avec les vaccins|
|Antécédents de vaccination|**41291-6 History of Immunization** (plus intéressant)|VS **Administration of vaccine to produce active immunity (procedure)**, SCTID: **33879002**, + CI-SIS pour les « non vaccination a »|
|Date de vaccination|**29742-4 Date last dose**. Note : plus générique sur l’administration médicament|Date|
|Nombre de dose reçues|**30973-2 Dose number**|Nombre|


### 5 - Informations sur le Patient

**Stratégie de codification** : Le choix du code LOINC approprié pour chaque données "sexe/genre" est à faire au regard des valeurs attendues et sources d'information. 

**Périmètre FHIR** :  Questionnaire

**Date de dernière revue** 09/11/2026

**Statut :** validé 

**Note :**  

|Usage|Code | Value - Type & contrainte sémantique|
|-|-|-|
|Nom du patient|45394-4 Nom de famille du patient ||
|Prénom|45392-8 Prénom du patient ||
|Téléphone patient|42077-8 Numéro de téléphone du patient|Tele (datatype HL7 v2)|
|E-mail|76458-9 Adresse mail du patient||
|Date de naissance|21112-8 Date de naissance [Horodatage] Patient ; Numérique |DateTime|
|Sexe à la naissance |76689-9 Sexe à la naissance [Type] Patient ; Résultat nominal ||
|Sexe (biologique) |46098-0 Sexe [Type] Patient ; Résultat nominal |JDV Administrative gender|
|Sexe administratif |107454-1 Genre administratif | _à confirmer_ JDV Administrative gender|

**Note 1** - La notion de Sexe réfère à une réalité génétique ou physiologique ; la notion de genre réfère à une construction sociale de l'individu & son identitée. 

#### Choix du code pour désigner le genre ou l'identité de genre dans un document de santé
_Cette section est issue d'une revue de littérature faite par IA (23/11/2026)- elle est données à titre indicative_
#### Tableau des principales données 
|Notion HL7|Signification|Intérêt en santé|Structuration FHIR| Code LOINC|
|-|-|-|-|-|
|Gender Identity (GI)|Genre auquel une personne s'identifie|Relation de soin, respect de l'identité, certains usages cliniques|    individual-genderIdentity| 76691-5|
|Sex Parameter| for Clinical Use (SPCU)|    Paramètre sexué pertinent pour une utilisation clinique déterminée    Interprétation d'un examen, valeur de référence, décision clinique|    patient-sexParameterForClinicalUse| 99501-9|
|Recorded Sex or Gender (RSG)|    Sexe ou genre tel qu'enregistré dans une source donnée |    Documents administratifs, état civil, systèmes historiques, sexe assigné à la naissance|    individual-recordedSexOrGender| 99502-7 ; 46098-0 ; 74698-2|
|Administrative Sex/Gender|    Information utilisée à des fins administratives|    Identification, gestion administrative, échange avec certains SI|    forme particulière de RSG| |
|Legal Sex/Gender    |Sexe/genre légal enregistré par une autorité    |Identité légale    |forme particulière de RSG |
|Sex Assigned at Birth|    Sexe assigné/enregistré à la naissance|    Peut être pertinent pour certains usages cliniques ou historiques    |forme particulière de RSG|76689-9|
|Billing Sex    |Sexe utilisé pour la facturation|    Règles administratives ou assurantielles|    RSG contextualisé
|Pronouns|    Pronoms que la personne souhaite voir utilisés|    Communication avec le patient|    individual-pronouns| 90778-2|

##### Sources principales
 [HL7 Cross Paradigm Implementation Guide: Gender Harmony – Model]décrit le modèle conceptuel et la distinction entre :
 - Gender Identity (GI)
- Sex Parameter for Clinical Use (SPCU)
- Recorded Sex or Gender (RSG)
- Name to Use (NtU)
- Pronouns
[HL7 Gender Harmony – Terminology
](https://www.hl7.org/xprod/ig/uv/gender-harmony/terminology.html) documente les terminologies et jeux de valeurs associés aux différents concepts, ainsi que les principes de binding et d'utilisation des terminologies dans un contexte international.


### 6  Contact Signalant & biologiste

#### Informations sur le signalant et le biologiste

**Stratégie de codification** : Choix de distinguer tant que faire se peut les informations sur le laboratoire à l'origine des résultats et le signalant. **Attention, certains codes génériques peuvent se recouper entre les section et l'ensemble de ses code est susceptible d'être réutiliser pour exprimer une information similaire dans d'autres cas d'usage.**

**Périmètre FHIR** :  Questionnaire

**Date de dernière revue** 09/11/2026

**Statut :** a valider + faire demande de codes

##### 6.1 Biologiste / Laboratoire 

| Usage | Code question | Type de réponse, contrainte sémantique |
|---|---|---|
  | N° FINESS du laboratoire |  91562-9 Identifiant du laboratoire |Attention la donnée doit être identifiante|
| Nom de du laboratoire |  68994-3 Nom du laboratoire | |
|Adresse du laboratoire |  68989-3 Adresse du laboratoire  | |
| Code postal du laboratoire| 52831-5 Code postal de l'établissement | |
| Commune du laboratoire | 65647-0 Ville de l'établissement | |
| Directeur du laboratoire (RPPS)| 68990-1 Directeur du laboratoire, identifiant |Attention la donnée doit être identifiante|
| Téléphone du Laboratoire |75549-6 Numéro de téléphone du laboratoire | |
| Email biologiste | 90097-7     Adresse mail du responsable du compte rendu | | 


##### 6.2 Signalant /PS / Etablissement (PSIG)
| Usage | Code question | Type de réponse, contrainte sémantique |
|---|---|---|
| Identifiant du PS |  45952-9 National provider ID  | |
| Nom du signalant | **74549-7** _Nom de la personne signalant une pathologie_  | |
| Prénom du signalant | **A DEMANDER**| |
| Téléphone du signalant | 74548-9 Numéro de téléphone du signalant  | |
| Email du signalant | **74547-1** — Person reporting to CDC - Email | | 
| Adresse du PS | **A DEMANDER**  | |
| Code postal du PS |      87720-9     Code postal du fournisseur | |
| Commune du PS  |      52531-1     Commune du fournisseur | |
| N° FINESS de l’établissement |75524-9 Identifiant de l'établissement | |
| Nom de l’établissement | 76696-4 Nom de l'établissement | |

### DRAFT 6.3 Description de l'Etablissement (facility  )
| Usage | Code question | Type de réponse, contrainte sémantique |
|---|---|---|
| N° FINESS de l’établissement |75524-9 Identifiant de l'établissement | |
| Nom de l’établissement | 76696-4 Nom de l'établissement | |
| Code postal de l'établissement| **52831-5** — Postal code [Location] Facility | |
| Commune de l'établissement | **65647-0** — City Facility | |
| Email Commune de l'établissement | **65650-4** — Email address Facility||


### 7 - Informations sur la biologie

**Contenu** Cette section contient l'ensemble des codifications pour contextualiser des informations de biologie demandé dans les questionnaires. Les codes LOINC décrivant les analyses spécifiques ne sont pas inclus dans ce tableau. 

**Périmètre FHIR** : Questionnaire

**Date de dernière revue** 24/11/2026

**Statut :** en cours

**Note :** A finaliser 
- traduction
- choix des codes


|Usage|Code |Value - Type & contrainte sémantique|
|-|-|-|
|Nature du prélèvement (si noté prélèvement autre) |66746-9 Observation [Type] Prélèvement ; Résultat nominal|VS specimen-cisis (codes HL7)|
|Date associée au résultat de biologie (voir note 1)|33882-2 Date du recueil [Date] Concerne l'échantillon ; Numérique|Date|
|Date de premier prélèvement positif|95366-1     Date du premier recueil d'échantillons positifs [Date] Patient ; Numérique|Date|     
|Prélèvement envoyé au laboratoire de référence (CNR) |**82314-6 Specimen sent to CDC** |Booléen|
|Date d'envoi du prélèvement au laboratoire de référence (CNR) |**89264-6 Date specimen was sent to public health laboratory ou  85930-6 Date specimen sent to CDC**  |Date|
|Besoin de kit de prélèvement |Codification local perenne à faire|Booléen|
|Nombre de kit de prélèvement à envoyer|Codification local perenne à faire|integer|
|**Confirmation Biologique**|TBD|TBD|


**Note 1** Cette donnée métier correspond à la date de prélèvement et non à celle de l'analyse conformément à ce qui est demandé dans les spécifications du CR de Biologie
