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

### Contraintes

* Les formulaires (`Questionnaire`) doivent être **versionnés**.
* L'outil d'édition et de publication des formulaires doit être **simple d'usage**, y compris pour des profils non techniques.
* Les réponses doivent être portées par des ressources `QuestionnaireResponse`, afin d'être en FHIR.

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
