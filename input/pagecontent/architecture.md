<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 10px 15px; margin-bottom: 15px;">
<b>Page transversale</b> : cette page s'adresse à la fois aux profils métier et aux profils techniques.
</div>

### Architecture

#### Diagrammes des acteurs et des flux (version 0)

Ces diagrammes sont une première version, destinée à être améliorée. Le flux est découpé en trois parties : conception, remplissage, puis transmission.

<style>
.architecture-flux svg { max-width: 100%; height: auto; }
</style>

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-conception.svg %}
</div>

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-remplissage.svg %}
</div>

<div class="architecture-flux" style="max-width: 100%; overflow-x: auto;">
{% include architecture-flux-transmission.svg %}
</div>

#### Rôle de chaque acteur SDC

Cet Implementation Guide s'appuie sur le profil [SDC (Structured Data Capture)](https://hl7.org/fhir/uv/sdc/) pour la gestion des questionnaires et des réponses.

##### Personas

Deux personas humains interagissent avec le système (hypothèses de la version 0, à valider) :

| Persona | Description | Acteur SDC utilisé |
|---|---|---|
| Éditeur de formulaires | Personne qui crée, édite et met à jour les questionnaires (`Questionnaire`) | SDC Form Designer |
| Médecin déclarant | Médecin qui remplit les formulaires pour déclarer une maladie à déclaration obligatoire | SDC Form Filler |

##### Acteurs SDC

##### Systèmes d'information

Trois systèmes d'information sont identifiés (hypothèses de la version 0, à valider) :

| Système d'information | Description | Acteur SDC correspondant |
|---|---|---|
| Repo de formulaires versionnés | Dépôt qui stocke et versionne les définitions de formulaires (`Questionnaire`) | SDC Form Manager |
| Outil d'édition de formulaire | Outil utilisé par l'éditeur de formulaires pour concevoir les questionnaires | SDC Form Designer |
| Outil d'affichage graphique du formulaire | Outil qui affiche le formulaire au médecin et génère la `QuestionnaireResponse` à partir de sa saisie | SDC Form Filler |

Les acteurs et leur définition proviennent de la page [Basic SDC workflow](https://build.fhir.org/ig/HL7/sdc/en/workflow.html) (version CI-build 4.0.0, non publiée officiellement). La colonne « Rôle dans le DMSO » est une hypothèse de la version 0, à valider.

| Acteur SDC | Définition SDC | Rôle dans le DMSO (hypothèse v0) |
|---|---|---|
| SDC Form Designer | Système responsable de la création et de l'édition des formulaires | Outil métier : il doit permettre à l'éditeur de formulaires de créer et d'éditer un formulaire sans compétences techniques |
| SDC Form Filler | Système responsable de la saisie utilisateur pour produire des formulaires partiellement ou totalement remplis | Application de saisie du professionnel de santé.<br/><br/><b>Remplissage automatique</b><br/>Le Form Filler peut pré-remplir certains champs du questionnaire afin de limiter la saisie. Deux sources sont envisagées (version 0, à instruire) :<table><thead><tr><th>Sujet</th><th>Piste</th><th>Points à instruire</th></tr></thead><tbody><tr><td>Annuaire Santé</td><td>Pré-remplissage des données du professionnel de santé déclarant à partir de l'Annuaire Santé</td><td>API à retenir, données à reprendre, authentification du déclarant</td></tr><tr><td>Noms des communes</td><td>Liste de choix des communes (ValueSet) plutôt qu'une saisie libre</td><td>Terminologie source à retenir (référentiel des communes), disponibilité via le SMT</td></tr></tbody></table><b>Note :</b> le téléservice INSi n'est pas utilisé, car PSIG n'y a pas accès.<br/><br/><b>Risque de disponibilité des services d'autocomplétion</b><br/>Le risque de disponibilité concerne tous les services nécessaires à l'autocomplétion et au pré-remplissage des champs du questionnaire, notamment :<ul><li>le serveur multi-terminologies (SMT) national : <a href="https://smt.esante.gouv.fr/fhir">https://smt.esante.gouv.fr/fhir</a> (listes de choix, noms des communes, validation des codes) ;</li><li>l'Annuaire Santé (données du professionnel de santé) ;</li><li>d'autres services à identifier.</li></ul>Une indisponibilité de l'un de ces services constitue un risque pour le fonctionnement du service. Il faut prévoir un système de cache afin que les données d'autocomplétion (ex. expansions de ValueSets) restent disponibles même en cas d'indisponibilité du service source. Les autres mesures d'atténuation sont à compléter. |
| SDC Form Fill Manager | Dépôt d'accès aux définitions de formulaires, pouvant aussi effectuer le pré-remplissage | À compléter |
| SDC Form Manager | Dépôt de maintenance des définitions de formulaires (s'appuie sur le Form Fill Manager) | Héberge les `Questionnaire` du DMSO |
| SDC Form Response Manager | Dépôt interrogeable pour le stockage et la récupération des formulaires complétés ou partiellement complétés | À compléter (reprise de saisie ?) |
| SDC Form Receiver | Destination en écriture seule vers laquelle les formulaires sont envoyés pour traitement | Reçoit les `QuestionnaireResponse` |
| SDC Form Archiver | Système en écriture seule chargé d'archiver les formulaires complétés et les travaux en cours | À compléter |

Trois rôles sont par ailleurs cités par SDC comme **non définis par le guide** :

| Rôle (hors périmètre SDC) | Définition SDC | Correspondance envisagée dans le DMSO |
|---|---|---|
| Clinical or Administrative Data Source | Dossier patient ou système similaire qui répond aux requêtes pendant le pré-remplissage | Annuaire Santé |
| Data Element Source | Dépôt de StructureDefinitions ou de CodeSystems pour retrouver définitions d'items ou codes | SMT |
| Task Manager | Dépôt de `Task` représentant les demandes de remplissage d'un formulaire | À compléter |

#### Exemple de QuestionnaireResponse

Exemple fictif de `QuestionnaireResponse` produite par le Form Filler à partir du questionnaire de signalement de la rougeole et envoyée au Form Receiver. Les données sont fictives. Voir l'exemple complet : [QuestionnaireResponseRougeoleExemple]({{site.data.fhir.path}}QuestionnaireResponse-QuestionnaireResponseRougeoleExemple.html).

{% include QuestionnaireResponse-QuestionnaireResponseRougeoleExemple-json-html.xhtml %}

#### Sécurité, traçabilité et imputabilité

Trois questions structurent les exigences de sécurité :

* **Traçabilité** : les échanges sont tracés au moyen de la ressource **AuditEvent**.
* **Intégrité** : est-ce que la donnée n'a pas été altérée ?
* **Authentification et imputabilité** : qui a saisi la donnée ?
