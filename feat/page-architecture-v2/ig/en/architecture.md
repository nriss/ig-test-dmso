# Architecture - IG Test DMSO v0.1.0

## Architecture

 
There is no translation page available for the current page, so it has been rendered in the default language 

**Page transversale**: cette page s'adresse à la fois aux profils métier et aux profils techniques.

### Architecture

#### Rôle de chaque acteur SDC

Cet Implementation Guide s'appuie sur le profil [SDC (Structured Data Capture)](https://hl7.org/fhir/uv/sdc/) pour la gestion des questionnaires et des réponses.

| | |
| :--- | :--- |
| À compléter | À compléter |

#### Risque de disponibilité du SMT

Les questionnaires s'appuient sur des terminologies hébergées par le serveur multi-terminologies (SMT) national : [https://smt.esante.gouv.fr/fhir](https://smt.esante.gouv.fr/fhir).

Une indisponibilité du SMT constitue un risque pour le fonctionnement du service (affichage des listes de choix, validation des codes). Les mesures d'atténuation sont à compléter.

#### Sécurité, traçabilité et imputabilité

Trois questions structurent les exigences de sécurité :

* **Traçabilité** : les échanges sont tracés au moyen de la ressource **AuditEvent**.
* **Intégrité** : est-ce que la donnée n'a pas été altérée ?
* **Authentification et imputabilité** : qui a saisi la donnée ?

