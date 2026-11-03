<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px 15px; margin-bottom: 15px;">
<b>Page transversale</b> : cette page s'adresse à la fois aux profils métier et aux profils techniques.
</div>

### Architecture

#### Diagramme des acteurs et des flux (version 0)

Ce diagramme est une première version, destinée à être améliorée.

<div>
{% include architecture-flux.svg %}
</div>

#### Rôle de chaque acteur SDC

Cet Implementation Guide s'appuie sur le profil [SDC (Structured Data Capture)](https://hl7.org/fhir/uv/sdc/) pour la gestion des questionnaires et des réponses.

Les acteurs et leur définition proviennent de la page [Basic SDC workflow](https://build.fhir.org/ig/HL7/sdc/en/workflow.html) (version CI-build 4.0.0, non publiée officiellement). La colonne « Rôle dans le DMSO » est une hypothèse de la version 0, à valider.

| Acteur SDC | Définition SDC | Rôle dans le DMSO (hypothèse v0) |
|---|---|---|
| SDC Form Designer | Système responsable de la création et de l'édition des formulaires | À compléter |
| SDC Form Filler | Système responsable de la saisie utilisateur pour produire des formulaires partiellement ou totalement remplis | Application de saisie du professionnel de santé ; pré-remplissage (voir ci-dessous) |
| SDC Form Fill Manager | Dépôt d'accès aux définitions de formulaires, pouvant aussi effectuer le pré-remplissage | À compléter |
| SDC Form Manager | Dépôt de maintenance des définitions de formulaires (s'appuie sur le Form Fill Manager) | Héberge les `Questionnaire` du DMSO |
| SDC Form Response Manager | Dépôt interrogeable pour le stockage et la récupération des formulaires complétés ou partiellement complétés | À compléter (reprise de saisie ?) |
| SDC Form Receiver | Destination en écriture seule vers laquelle les formulaires sont envoyés pour traitement | Reçoit les `QuestionnaireResponse` |
| SDC Form Archiver | Système en écriture seule chargé d'archiver les formulaires complétés et les travaux en cours | À compléter |

Trois rôles sont par ailleurs cités par SDC comme **non définis par le guide** :

| Rôle (hors périmètre SDC) | Définition SDC | Correspondance envisagée dans le DMSO |
|---|---|---|
| Clinical or Administrative Data Source | Dossier patient ou système similaire qui répond aux requêtes pendant le pré-remplissage | Annuaire Santé, téléservice INSi (à instruire) |
| Data Element Source | Dépôt de StructureDefinitions ou de CodeSystems pour retrouver définitions d'items ou codes | SMT |
| Task Manager | Dépôt de `Task` représentant les demandes de remplissage d'un formulaire | À compléter |

#### Form Filler : remplissage automatique

Le Form Filler peut pré-remplir certains champs du questionnaire afin de limiter la saisie. Trois sources sont envisagées (version 0, à instruire) :

| Sujet | Piste | Points à instruire |
|---|---|---|
| Annuaire Santé | Pré-remplissage des données du professionnel de santé déclarant à partir de l'Annuaire Santé | API à retenir, données à reprendre, authentification du déclarant |
| Téléservice INSi | Pré-remplissage de l'identité du patient via le téléservice INSi | **Avons-nous le droit de l'utiliser pour ce cas d'usage ?** Base juridique et cadre d'utilisation à vérifier auprès de l'ANS avant toute décision. **Référentiel INS ?** Quel référentiel d'identité (INS) utiliser comme source ? |
| Noms des communes | Liste de choix des communes (ValueSet) plutôt qu'une saisie libre | Terminologie source à retenir (référentiel des communes), disponibilité via le SMT |

#### Risque de disponibilité du SMT

Les questionnaires s'appuient sur des terminologies hébergées par le serveur multi-terminologies (SMT) national : [https://smt.esante.gouv.fr/fhir](https://smt.esante.gouv.fr/fhir).

Une indisponibilité du SMT constitue un risque pour le fonctionnement du service (affichage des listes de choix, validation des codes). Il faut prévoir un système de cache afin que les expansions de ValueSets restent disponibles même en cas d'indisponibilité du SMT. Les autres mesures d'atténuation sont à compléter.

#### Sécurité, traçabilité et imputabilité

Trois questions structurent les exigences de sécurité :

* **Traçabilité** : les échanges sont tracés au moyen de la ressource **AuditEvent**.
* **Intégrité** : est-ce que la donnée n'a pas été altérée ?
* **Authentification et imputabilité** : qui a saisi la donnée ?
