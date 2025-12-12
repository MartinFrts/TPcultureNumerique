<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="IMG PREND_LA_VALEUR 1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="poids EST_DU_TYPE NOMBRE" code="1#NOMBRE#poids"/>
        <item algoitem="Taille EST_DU_TYPE NOMBRE" code="1#NOMBRE#Taille"/>
        <item algoitem="Âge EST_DU_TYPE NOMBRE" code="1#NOMBRE#Âge"/>
        <item algoitem="Sexe EST_DU_TYPE NOMBRE" code="1#NOMBRE#Sexe"/>
        <item algoitem="IMG EST_DU_TYPE NOMBRE" code="1#NOMBRE#IMG"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Quel est votre poids en kg ?&quot;" code="4#Quel est votre poids en kg ?#1"/>
        <item algoitem="LIRE poids" code="2#poids#pasliste"/>
        <item algoitem="AFFICHER &quot;Quel est votre taille en mètres ?&quot;" code="4#Quel est votre taille en mètres ?#1"/>
        <item algoitem="LIRE Taille" code="2#Taille#pasliste"/>
        <item algoitem="AFFICHER &quot;Quel est votre âge en années ?&quot;" code="4#Quel est votre âge en années ?#1"/>
        <item algoitem="LIRE Âge" code="2#Âge#pasliste"/>
        <item algoitem="AFFICHER &quot;Quel est votre sexe ?&quot;" code="4#Quel est votre sexe ?#1"/>
        <item algoitem="AFFICHER &quot;0 pour une femme&quot;" code="4#0 pour une femme#1"/>
        <item algoitem="AFFICHER &quot;1 pour un homme&quot;" code="4#1 pour un homme#1"/>
        <item algoitem="LIRE Sexe" code="2#Sexe#pasliste"/>
        <item algoitem="SI (Sexe == 0) ALORS" code="6#Sexe == 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Votre IMG est de :&quot;" code="4#Votre IMG est de :#1"/>
            <item algoitem="AFFICHERCALCUL 1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4" code="20#1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4#1"/>
            <item algoitem="IMG PREND_LA_VALEUR 1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4" code="5#IMG#1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4#pasliste"/>
            <item algoitem="SI (IMG > 30) ALORS" code="6#IMG > 30">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Vous êtes en excès de graisse !&quot;" code="4#Vous êtes en excès de graisse !#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;IMG normal !&quot;" code="4#IMG normal !#1"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (Sexe == 1) ALORS" code="6#Sexe == 1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Votre IMG est de :&quot;" code="4#Votre IMG est de :#1"/>
            <item algoitem="AFFICHERCALCUL 1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4" code="20#1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4#1"/>
            <item algoitem="IMG PREND_LA_VALEUR 1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4" code="5#IMG#1.2*(poids/(Taille*Taille))+0.23*Âge-10.8*Sexe-5.4#pasliste"/>
            <item algoitem="SI (IMG > 20) ALORS" code="6#IMG > 20">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Vous êtes en excès de graisse !&quot;" code="4#Vous êtes en excès de graisse !#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;IMG normal !&quot;" code="4#IMG normal !#1"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
