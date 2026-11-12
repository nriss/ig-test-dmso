Extension: QuestionnaireItemCdaAttribute
Id: questionnaire-item-cda-attribute
Title: "Attribut CDA de l'item de questionnaire"
Description: "Permet de renseigner l'attribut CDA correspondant à l'item du questionnaire."
* ^status = #draft
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* value[x] only string
* value[x] 1..1
