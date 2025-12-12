<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="moyenne PREND_LA_VALEUR somme / n"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#valeur_1" algoitem="valeur_1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#maximum" algoitem="maximum EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#minimum" algoitem="minimum EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#choix" algoitem="choix EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Veuillez entrer le nombre n de valeur :#1" algoitem="AFFICHER &quot;Veuillez entrer le nombre n de valeur :&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="5#minimum#200000000#pasliste" algoitem="minimum PREND_LA_VALEUR 200000000"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Veuillez entrer la valeur du nombre :#1" algoitem="AFFICHER &quot;Veuillez entrer la valeur du nombre :&quot;"/>
            <item code="2#valeur_1#pasliste" algoitem="LIRE valeur_1"/>
            <item code="5#somme#somme + valeur_1#pasliste" algoitem="somme PREND_LA_VALEUR somme + valeur_1"/>
            <item code="6#valeur_1 > maximum" algoitem="SI (valeur_1 > maximum) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#maximum#valeur_1#pasliste" algoitem="maximum PREND_LA_VALEUR valeur_1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#valeur_1 &lt; minimum " algoitem="SI (valeur_1 &lt; minimum ) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#minimum#valeur_1#pasliste" algoitem="minimum PREND_LA_VALEUR valeur_1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Que souhaitez-vous afficher ? (1 pour somme, 2 pour moyenne, 3 pour maximum ou 4 pour minimum)#1" algoitem="AFFICHER &quot;Que souhaitez-vous afficher ? (1 pour somme, 2 pour moyenne, 3 pour maximum ou 4 pour minimum)&quot;"/>
        <item code="2#choix#pasliste" algoitem="LIRE choix"/>
        <item code="6#choix == 1" algoitem="SI (choix == 1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#La somme des n nombres saisies est :#1" algoitem="AFFICHER &quot;La somme des n nombres saisies est :&quot;"/>
            <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix == 2" algoitem="SI (choix == 2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#n > 0" algoitem="SI (n > 0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#moyenne#somme / n#pasliste" algoitem="moyenne PREND_LA_VALEUR somme / n"/>
                <item code="4#La moyenne des nombres saisis est :#1" algoitem="AFFICHER &quot;La moyenne des nombres saisis est :&quot;"/>
                <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#Erreur: n ne peut pas être 0#1" algoitem="AFFICHER &quot;Erreur: n ne peut pas être 0&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix == 3" algoitem="SI (choix == 3) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le plus grand nombre saisi est :#1" algoitem="AFFICHER &quot;Le plus grand nombre saisi est :&quot;"/>
            <item code="3#maximum#1#pasliste" algoitem="AFFICHER maximum"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix == 4" algoitem="SI (choix == 4) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le plus petit nombre saisi est :#1" algoitem="AFFICHER &quot;Le plus petit nombre saisi est :&quot;"/>
            <item code="3#minimum#1#pasliste" algoitem="AFFICHER minimum"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
