<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Combien souhaitez-vous retirer ?&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="d EST_DU_TYPE NOMBRE" code="1#NOMBRE#d"/>
        <item algoitem="r EST_DU_TYPE NOMBRE" code="1#NOMBRE#r"/>
        <item algoitem="valeur_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#valeur_1"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="SI (s > 0) ALORS" code="6#s > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Que voulez-vous faire ?&quot;" code="4#Que voulez-vous faire ?#1"/>
            <item algoitem="AFFICHER &quot;1.Dépôt&quot;" code="4#1.Dépôt#1"/>
            <item algoitem="AFFICHER &quot;2.Retrait&quot;" code="4#2.Retrait#1"/>
            <item algoitem="LIRE valeur_1" code="2#valeur_1#pasliste"/>
            <item algoitem="SI (valeur_1 == 1) ALORS" code="6#valeur_1 == 1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Combien souhaitez-vous déposer ?&quot;" code="4#Combien souhaitez-vous déposer ?#1"/>
                <item algoitem="LIRE d" code="2#d#pasliste"/>
                <item algoitem="AFFICHERCALCUL s + d" code="20#s + d#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (valeur_1 == 2) ALORS" code="6#valeur_1 == 2">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Combien souhaitez-vous retirer ?&quot;" code="4#Combien souhaitez-vous retirer ?#1"/>
                <item algoitem="LIRE r" code="2#r#pasliste"/>
                <item algoitem="SI (r > s) ALORS" code="6#r > s">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Retrait impossible !&quot;" code="4#Retrait impossible !#1"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHERCALCUL s - r" code="20#s - r#1"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Transaction impossible !&quot;" code="4#Transaction impossible !#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
