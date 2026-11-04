<style>
.architecture-flux svg { max-width: 100%; height: auto; }
</style>

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px 15px; margin-bottom: 15px;">
<b>Page transversale</b> : cette page s'adresse à la fois aux profils métier et aux profils techniques.
</div>

### Architecture

Cette page décrit l'architecture envisagée pour la déclaration des maladies à déclaration obligatoire à l'aide des ressources FHIR `Questionnaire` et `QuestionnaireResponse` : les personnes concernées, les systèmes d'information (SI), les flux de données, la correspondance avec les acteurs du profil SDC, puis les exigences de sécurité. Elle se termine par un exemple.

Il s'agit d'une **version 0**, destinée à être améliorée au fur et à mesure. Dans cette page :

* **Hypothèse v0** : proposition à valider ;
* **À instruire** : question ouverte, à traiter avant de décider ;
* **Perspective d'amélioration** : hors périmètre de la version 0.

#### Flux de données simplifié : hypothèse FHIR Questionnaire et QuestionnaireResponse

Vue d'ensemble, de la conception du formulaire jusqu'à la transmission des réponses. Les nuages représentent les perspectives d'amélioration.

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-donnees-simplifie.svg %}
</div>

#### Diagrammes des acteurs et des flux (version 0)

Le flux est détaillé en trois parties : conception, remplissage, puis transmission.

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-conception.svg %}
</div>

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-remplissage.svg %}
</div>

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-transmission.svg %}
</div>

#### Personas et systèmes d'information

##### Personas

Deux personas humains interagissent avec le système (hypothèses de la version 0) :

| Persona | Description | Acteur SDC utilisé |
|---|---|---|
| Éditeur de formulaires | Personne qui crée, édite et met à jour les questionnaires (`Questionnaire`) | SDC Form Designer |
| Médecin déclarant | Médecin qui remplit les formulaires pour déclarer une maladie à déclaration obligatoire | SDC Form Filler |

##### Systèmes d'information

Trois systèmes d'information sont identifiés (hypothèses de la version 0) :

| Système d'information | Description | Acteur SDC correspondant |
|---|---|---|
| Repo de formulaires versionnés | Dépôt qui stocke et versionne les définitions de formulaires (`Questionnaire`) | SDC Form Manager |
| Outil d'édition de formulaire | Outil utilisé par l'éditeur de formulaires pour concevoir les questionnaires | SDC Form Designer |
| Outil d'affichage graphique du formulaire | Outil qui affiche le formulaire au médecin et génère la `QuestionnaireResponse` à partir de sa saisie | SDC Form Filler |

#### Acteurs SDC

Cet Implementation Guide s'appuie sur le profil [SDC (Structured Data Capture)](https://hl7.org/fhir/uv/sdc/) pour la gestion des questionnaires et des réponses.

Les acteurs et leur définition proviennent de la page [Basic SDC workflow](https://build.fhir.org/ig/HL7/sdc/en/workflow.html) (version CI-build 4.0.0, non publiée officiellement). La colonne « Rôle dans le DMSO » est une hypothèse de la version 0.

| Acteur SDC | Définition SDC | Rôle dans le DMSO (hypothèse v0) |
|---|---|---|
| SDC Form Designer | Système responsable de la création et de l'édition des formulaires | Outil métier : il doit permettre à l'éditeur de formulaires de créer et d'éditer un formulaire sans compétences techniques |
| SDC Form Filler | Système responsable de la saisie utilisateur pour produire des formulaires partiellement ou totalement remplis | Application de saisie du professionnel de santé, avec remplissage automatique (voir [Remplissage automatique du formulaire](#remplissage-automatique-du-formulaire)) |
| SDC Form Fill Manager | Dépôt d'accès aux définitions de formulaires, pouvant aussi effectuer le pré-remplissage | Pas de système distinct : l'accès aux `Questionnaire` par l'outil d'affichage est assuré par le repo de formulaires versionnés (même système que le Form Manager) |
| SDC Form Manager | Dépôt de maintenance des définitions de formulaires (s'appuie sur le Form Fill Manager) | Héberge les `Questionnaire` du DMSO |
| SDC Form Response Manager | Dépôt interrogeable pour le stockage et la récupération des formulaires complétés ou partiellement complétés | Perspective d'amélioration : sauvegarde de brouillons de `QuestionnaireResponse` et reprise de saisie |
| SDC Form Receiver | Destination en écriture seule vers laquelle les formulaires sont envoyés pour traitement | Reçoit les `QuestionnaireResponse` |
| SDC Form Archiver | Système en écriture seule chargé d'archiver les formulaires complétés et les travaux en cours | À instruire : archivage des `QuestionnaireResponse` reçues |

Trois rôles sont par ailleurs cités par SDC comme **non définis par le guide** :

| Rôle (hors périmètre SDC) | Définition SDC | Correspondance envisagée dans le DMSO |
|---|---|---|
| Clinical or Administrative Data Source | Dossier patient ou système similaire qui répond aux requêtes pendant le pré-remplissage | Annuaire Santé |
| Data Element Source | Dépôt de StructureDefinitions ou de CodeSystems pour retrouver définitions d'items ou codes | Serveur multi-terminologies (SMT) |
| Task Manager | Dépôt de `Task` représentant les demandes de remplissage d'un formulaire | Non utilisé dans la version 0 : le médecin ouvre lui-même le formulaire |

#### Remplissage automatique du formulaire

Le Form Filler peut pré-remplir certains champs du questionnaire afin de limiter la saisie. Deux sources sont envisagées (perspective d'amélioration) :

| Sujet | Piste | Points à instruire |
|---|---|---|
| Annuaire Santé | Pré-remplissage des données du professionnel de santé déclarant à partir de l'Annuaire Santé | API à retenir, données à reprendre, authentification du déclarant |
| Noms des communes | Liste de choix des communes (ValueSet) plutôt qu'une saisie libre | Terminologie source à retenir (référentiel des communes), disponibilité via le SMT |

Le téléservice INSi n'est pas utilisé, car PSIG n'y a pas accès.

#### Risque de disponibilité des services d'autocomplétion

Le risque de disponibilité concerne tous les services nécessaires à l'autocomplétion et au pré-remplissage des champs du questionnaire, notamment :

* le serveur multi-terminologies (SMT) national : [https://smt.esante.gouv.fr/fhir](https://smt.esante.gouv.fr/fhir) (listes de choix, noms des communes, validation des codes) ;
* l'Annuaire Santé (données du professionnel de santé) ;
* d'autres services à identifier.

Une indisponibilité de l'un de ces services constitue un risque pour le fonctionnement du service. Il faut prévoir un système de cache afin que les données d'autocomplétion (ex. expansions de ValueSets) restent disponibles même en cas d'indisponibilité du service source. Les autres mesures d'atténuation sont à compléter.

#### Sécurité, traçabilité et imputabilité

Trois questions structurent les exigences de sécurité :

* **Traçabilité** : les échanges sont tracés au moyen de la ressource **AuditEvent**. Dans l'hypothèse du schéma de transmission, l'`AuditEvent` est créé à la réception de la `QuestionnaireResponse` et indique qui a saisi, quoi et quand.
* **Intégrité** : est-ce que la donnée n'a pas été altérée ?
* **Authentification et imputabilité** : qui a saisi la donnée ?

Ces points restent à détailler (version 0).

#### Exemple de QuestionnaireResponse

Exemple fictif de `QuestionnaireResponse` produite par le Form Filler à partir du questionnaire de signalement de la rougeole et envoyée au Form Receiver. Les données sont fictives.

##### Définition d'une question et d'une réponse

Une question est définie dans un `item` du `Questionnaire` (ici la question « Fièvre > 38,5° C » du questionnaire rougeole). La réponse correspondante est un `item` de la `QuestionnaireResponse` qui reprend le même `linkId`.

**Définition de la question** (extrait du `Questionnaire`) :

```json
{
  "linkId": "fievre",
  "text": "Fièvre > 38,5° C",
  "code": [
    { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R50.9", "display": "Fièvre, sans précision" }
  ],
  "type": "choice",
  "answerOption": [
    { "valueCoding": { "system": "http://loinc.org", "code": "LA33-6", "display": "Yes" } },
    { "valueCoding": { "system": "http://loinc.org", "code": "LA32-8", "display": "No" } }
  ]
}
```

**Définition de la réponse** (extrait de la `QuestionnaireResponse`) :

```json
{
  "linkId": "fievre",
  "answer": [
    { "valueCoding": { "system": "http://loinc.org", "code": "LA33-6", "display": "Yes" } }
  ]
}
```

La réponse ne reprend que le `linkId` et la valeur choisie, parmi les `answerOption` proposées par la question. Le texte et le type viennent du `Questionnaire`. Les libellés « Yes » et « No » sont ceux des codes LOINC (en anglais).

##### Exemple complet

Voir aussi la page de l'exemple : [QuestionnaireResponseRougeoleExemple]({{site.data.fhir.path}}QuestionnaireResponse-QuestionnaireResponseRougeoleExemple.html).

{% include QuestionnaireResponse-QuestionnaireResponseRougeoleExemple-json-html.xhtml %}
