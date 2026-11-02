<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
Proof of concept (PoC) to test the Questionnaire and QuestionnaireResponse resources for the notification of notifiable diseases (maladies à déclaration obligatoire).
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/dmso</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/dmso
</p>
</blockquote>
</div>
{% endif %}


<!--  A décommenter si CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
-->

### Introduction

Certaines maladies doivent obligatoirement être signalées aux autorités sanitaires : ce sont les maladies à signalement obligatoire (déclaration obligatoire). Cet Implementation Guide explore comment décrire les formulaires de déclaration avec la ressource FHIR `Questionnaire` et comment en porter les réponses avec la ressource `QuestionnaireResponse`.

Les principales sections de l'IG sont :

* Le contexte de l'IG, quelle problématique il résout
* Ce que les Implémenteurs doivent mettre en place
* Un onglet "Ressources de conformité" pour s'assurer d'un schéma global entre tous les IGs

### Périmètre du projet

Il s'agit d'un **POC** (preuve de concept) visant à tester les ressources `Questionnaire` et `QuestionnaireResponse` dans le cadre des déclarations des maladies à signalement obligatoire.

Le test pourra être poussé plus loin avec l'outillage suivant :

1. **Gestionnaire de formulaires** (form manager) ;
2. **Outillage de génération automatique de formulaires** et de création de `QuestionnaireResponse` ;
3. **Règles métier** : par exemple, si une réponse donnée est positive, alors d'autres questions s'affichent.

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

### Objectif de sortie

Produire un `Bundle` de type `collection` contenant :

* un `Patient` ;
* un `Practitioner` ;
* une `QuestionnaireResponse`.

### Perspective

Utiliser l'opération **SDC `$extract`** (Structured Data Capture) pour extraire les réponses d'une `QuestionnaireResponse` en ressources FHIR `Observation`.

### Auteurs et contributeurs (optionnel)

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
