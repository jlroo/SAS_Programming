DATA PATIENT;
/*
 * ----ASSIGMENT_2---------
 * Author: Jose L Rodriguez
 * Assigment: 2
 * Probleml:  2.1a
 * Date: September 18th, 2014
 * SAS303 - FALL 2014
 * SAS platform 'Linux LIN X64 2.6.32-431.11.2.el6.x86_64' 
 * SAS version '9.04.01M1P12042013' 
 *
 */
INPUT @1 ID$ 3. @4 GENDER$ 1. @5 RACE$ 1. @6 AGE 2.;

DATALINES;
001MW35
002FW41
003MB62
004FB38
005MW44
006FB47
007FW53
008MW58
009FB56
010FB39
;

PROC SORT DATA=PATIENT;
BY RACE;
PROC PRINT DATA=PATIENT;
TITLE "PATIENT";
RUN;
