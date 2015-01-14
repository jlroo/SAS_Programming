DATA longheight_i;
INPUT subj HEIGHT1 - HEIGHT4;
ARRAY HEIGHT[4]HEIGHT1-HEIGHT4;
ARRAY HEIGHTM[4];
DO i=1 TO 4;
	HEIGHTM[i] = 0.0254*HEIGHT[i];
*	OUTPUT;
END;
DROP i HEIGHT1-HEIGHT4;
datalines;
001 43.6 45.2 48.5 51.3
002 41.1 43.4 48.1 51.5
003 38.4 40.9 46.7 48.1
;
PROC MEANS MEAN STD;
VAR HEIGHTM1;
RUN;