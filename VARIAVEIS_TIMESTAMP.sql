//TIPOS DE VARIAVEIS TIMESTAMP 



DECLARE 

vData1 TIMESTAMP := SYSTIMESTAMP;
vData2 TIMESTAMP(3) := SYSTIMESTAMP; //somente 3 digitos depois da virgula


BEGIN

DBMSOUTPUT.PUT_LINE(vdata1)

DBMSOUTPUT.PUT_LINE(vdata2)

END;


//TIMESTAMP COM LOCAL TIME ZONE MOSTRA

//Ele guarda a data e hora no banco SEM fuso horário,
//mas sempre converte automaticamente para o fuso horário do usuário/sessão quando você consulta.


TIMESTAMP WITH LOCAL TIME ZONE '2025-01-01 10:00:00'


DECLARE
    v_data TIMESTAMP WITH LOCAL TIME ZONE;
BEGIN
    v_data := SYSTIMESTAMP; 
    DBMS_OUTPUT.PUT_LINE(v_data);
END;
/
