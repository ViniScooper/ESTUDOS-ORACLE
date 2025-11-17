// bloco anonimo 002

SET SERVEROUTPUT ON;

DECLARE 

vNumero1 NUMBER(11,2) := 1000,00;
vNumero2 NUMBER(11,2) := 1000,00;
vMedia number(11,2);

BEGIN

vMedia :=(vNumero1 + vNumero2) /2;

DBMSOUTPUT.PUT_LINE ('MEDIA É :' vMedia);

END;
