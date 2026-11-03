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

| Acteur SDC | Rôle dans le DMSO |
|---|---|
| À compléter | À compléter |

#### Form Filler : remplissage automatique

Le Form Filler peut pré-remplir certains champs du questionnaire afin de limiter la saisie. Trois sources sont envisagées (version 0, à instruire) :

| Sujet | Piste | Points à instruire |
|---|---|---|
| Annuaire Santé | Pré-remplissage des données du professionnel de santé déclarant à partir de l'Annuaire Santé | API à retenir, données à reprendre, authentification du déclarant |
| Téléservice INSi | Pré-remplissage de l'identité du patient via le téléservice INSi | **Avons-nous le droit de l'utiliser pour ce cas d'usage ?** Base juridique et cadre d'utilisation à vérifier auprès de l'ANS avant toute décision. **Référentiel INS ?** Quel référentiel d'identité (INS) utiliser comme source ? |
| Noms des communes | Liste de choix des communes (ValueSet) plutôt qu'une saisie libre | Terminologie source à retenir (référentiel des communes), disponibilité via le SMT |

#### Risque de disponibilité du SMT

Les questionnaires s'appuient sur des terminologies hébergées par le serveur multi-terminologies (SMT) national : [https://smt.esante.gouv.fr/fhir](https://smt.esante.gouv.fr/fhir).

Une indisponibilité du SMT constitue un risque pour le fonctionnement du service (affichage des listes de choix, validation des codes). Les mesures d'atténuation sont à compléter.

#### Sécurité, traçabilité et imputabilité

Trois questions structurent les exigences de sécurité :

* **Traçabilité** : les échanges sont tracés au moyen de la ressource **AuditEvent**.
* **Intégrité** : est-ce que la donnée n'a pas été altérée ?
* **Authentification et imputabilité** : qui a saisi la donnée ?
