-- Bloco PL/SQL demonstrando diferentes tipos de variáveis e saída de valores
DECLARE
    -- Variável numérica com precisão e escala
    vNumero NUMBER(11,2) := 1000.50;  -- até 11 dígitos, 2 casas decimais

    -- Variável de caractere com tamanho fixo
    vCaracterTamFixo CHAR(100) := 'Texto';  -- sempre ocupa 100 caracteres, completando com espaços

    -- Variável de caractere com tamanho variável
    vCaracterTamVariavel VARCHAR2(100) := 'Texto tamanho variável';  -- usa apenas o tamanho necessário

    -- Variável booleana
    vBooleano BOOLEAN := TRUE;  -- pode ser TRUE, FALSE ou NULL

    -- Variável do tipo data
    vData DATE := SYSDATE;  -- data e hora atuais do sistema

    -- Variável do tipo LONG (antiga, usada para textos grandes, não recomendada em novas aplicações)
    vLong LONG := 'Texto de tamanho longo';  

    -- Variável do tipo ROWID (identificador único de linha no banco)
    vRowid ROWID;  

    -- Variável do tipo TIMESTAMP com fuso horário
    vTimestamptz TIMESTAMP := SYSTIMESTAMP;  -- data e hora com precisão de fração de segundos e fuso horário

    -- Variável de caractere universal (suporta Unicode) de tamanho fixo
    vCaracterTamFixoUniversal NVARCHAR2(100) := 'Texto de tamanho fixo universal';  

    -- Variável de caractere universal de tamanho variável
    vCaracterTamVariavelUniversal NVARCHAR2(100) := 'Texto variável universal';  

    -- Variável inteira
    vNumeroInteiro BINARY_INTEGER := 1200;  -- alternativa para INTEGER

    -- Variável do tipo FLOAT
    vNumeroFloat BINARY_FLOAT := 1200;  

    -- Variável do tipo DOUBLE
    vNumeroDouble BINARY_DOUBLE := 1500000;  

BEGIN
    -- Exibe os valores no console
    DBMS_OUTPUT.PUT_LINE('Número: ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('String (tamanho fixo): ' || vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String (tamanho variável): ' || vCaracterTamVariavel);
    DBMS_OUTPUT.PUT_LINE('Booleano: ' || CASE WHEN vBooleano THEN 'TRUE' ELSE 'FALSE' END);
    DBMS_OUTPUT.PUT_LINE('Data atual: ' || TO_CHAR(vData, 'DD/MM/YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Texto longo: ' || vLong);
    DBMS_OUTPUT.PUT_LINE('Timestamp com fuso horário: ' || TO_CHAR(vTimestamptz, 'DD/MM/YYYY HH24:MI:SS.FF TZR'));
    DBMS_OUTPUT.PUT_LINE('String Unicode (fixa): ' || vCaracterTamFixoUniversal);
    DBMS_OUTPUT.PUT_LINE('String Unicode (variável): ' || vCaracterTamVariavelUniversal);
    DBMS_OUTPUT.PUT_LINE('Número inteiro: ' || vNumeroInteiro);
    DBMS_OUTPUT.PUT_LINE('Número float: ' || vNumeroFloat);
    DBMS_OUTPUT.PUT_LINE('Número double: ' || vNumeroDouble);
END;
/
