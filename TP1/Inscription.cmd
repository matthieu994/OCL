-- Creer les thématiques
!create GL, Math, BD : Thematique

-- Creer les cours
!create INF1130, INF1120, INF2120, INF3143, INF5151 : Cours 
!set INF1130.titre := 'Mathématiques pour informaticien'
!set INF1120.titre := 'Programmation I'
!set INF2120.titre := 'Programmation II modélisation'
!set INF3143.titre := 'Modélisation et spécification formelles de logiciel'
!set INF5151.titre := 'Génie logiciel : analyse et modélisation'

-- specifier les thématiques des cours
!insert (Math, INF1130) into sujet 
!insert (GL, INF1120) into sujet 
!insert (GL, INF2120) into sujet 
!insert (GL, INF3143) into sujet 
!insert (GL, INF5151) into sujet 

-- creer les prerequis des cours
!insert (INF1120, INF2120) into cours
!insert (INF1130, INF3143) into cours
!insert (INF2120, INF3143) into cours
-- Viole contrainte C2
!insert (INF3143, INF5151) into cours
-- Viole contrainte C1 + C2
!insert (INF1130, INF1130) into cours

-- créer les enseignants
!create Louis, Gilles : Enseignant
!set Louis.nom := 'Louis'
!set Gilles.nom := 'Gilles'

-- les spécialités des enseignants
!insert (BD, Louis) into specialites
!insert (GL, Louis) into specialites
!insert (Math, Gilles) into specialites
!insert (GL, Gilles) into specialites

-- Creer des groupes cours
!create INF1120_10_aut09 : GroupeCours
!create INF1120_20_aut10 : GroupeCours
!create INF1120_30_aut10 : GroupeCours
!create INF2120_10_hiv10 : GroupeCours
!create INF2120_10_aut10 : GroupeCours
!create INF1130_30_hiv10 : GroupeCours
!create INF1130_40_aut10 : GroupeCours
!create INF3143_10_aut09 : GroupeCours
!create INF3143_10_aut10 : GroupeCours
!create INF5151_30_aut10 : GroupeCours 
!set INF1120_10_aut09.numero := 10
!set INF1120_10_aut09.sessionAnnee := 093
!set INF1120_20_aut10.numero := 20
!set INF1120_20_aut10.sessionAnnee := 103
!set INF1120_30_aut10.numero := 30
!set INF1120_30_aut10.sessionAnnee := 103
!set INF2120_10_hiv10.numero := 10
!set INF2120_10_hiv10.sessionAnnee := 101
!set INF2120_10_aut10.numero := 10
!set INF2120_10_aut10.sessionAnnee := 103
!set INF1130_30_hiv10.numero := 30
!set INF1130_30_hiv10.sessionAnnee := 101
!set INF1130_40_aut10.numero := 40
!set INF1130_40_aut10.sessionAnnee := 103
!set INF3143_10_aut09.numero := 10
!set INF3143_10_aut09.sessionAnnee := 093
!set INF3143_10_aut10.numero := 10
!set INF3143_10_aut10.sessionAnnee := 103
!set INF5151_30_aut10.numero := 30
!set INF5151_30_aut10.sessionAnnee := 103

-- lier groupes cours aux cours
!insert (INF1120, INF1120_10_aut09) into edition
!insert (INF1120, INF1120_20_aut10) into edition
!insert (INF1120, INF1120_30_aut10) into edition
!insert (INF2120, INF2120_10_hiv10) into edition
!insert (INF2120, INF2120_10_aut10) into edition
!insert (INF1130, INF1130_30_hiv10) into edition
!insert (INF1130, INF1130_40_aut10) into edition
!insert (INF3143, INF3143_10_aut09) into edition
!insert (INF3143, INF3143_10_aut10) into edition
!insert (INF5151, INF5151_30_aut10) into edition 

-- taches d'enseignement
-- Viole contrainte C4 + C5
!insert (Louis, INF1120_20_aut10) into dispense
!insert (Louis, INF1120_30_aut10) into dispense
!insert (Louis, INF2120_10_aut10) into dispense
!insert (Louis, INF1130_40_aut10) into dispense
!insert (Louis, INF5151_30_aut10) into dispense

-- etudiants
!create martin, francoise : Etudiant
!set martin.codePermanent := 'DUPM21098801'
!set francoise.codePermanent := 'BERF27628901'

-- inscriptions - martin
-- Viole contrainte C5
!create inscriptionMartin1 : Inscription between (martin, INF1120_20_aut10)
!create inscriptionMartin2 : Inscription between (martin, INF2120_10_aut10)

-- inscription - francoise
-- Viole contrainte C3
!create INF1120_10_aut08 : GroupeCours
!set INF1120_10_aut08.numero := 10
!set INF1120_10_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_10_aut08) into edition
!create inscriptionFrancoise1 : Inscription between (francoise, INF1120_10_aut08)
!create INF1120_20_aut08 : GroupeCours
!set INF1120_20_aut08.numero := 20
!set INF1120_20_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_20_aut08) into edition
!create inscriptionFrancoise2 : Inscription between (francoise, INF1120_20_aut08)
!create INF1120_30_aut08 : GroupeCours
!set INF1120_30_aut08.numero := 30
!set INF1120_30_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_30_aut08) into edition
!create inscriptionFrancoise3 : Inscription between (francoise, INF1120_30_aut08)
!create INF1120_40_aut08 : GroupeCours
!set INF1120_40_aut08.numero := 40
!set INF1120_40_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_40_aut08) into edition
!create inscriptionFrancoise4 : Inscription between (francoise, INF1120_40_aut08)
!create INF1120_50_aut08 : GroupeCours
!set INF1120_50_aut08.numero := 50
!set INF1120_50_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_50_aut08) into edition
!create inscriptionFrancoise5 : Inscription between (francoise, INF1120_50_aut08)
!create INF1120_60_aut08 : GroupeCours
!set INF1120_60_aut08.numero := 60
!set INF1120_60_aut08.sessionAnnee := 083
!insert (INF1120, INF1120_60_aut08) into edition
!create inscriptionFrancoise6 : Inscription between (francoise, INF1120_60_aut08)