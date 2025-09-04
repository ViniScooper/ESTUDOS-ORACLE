

----Criando usuario hr para estudos no oracle e concedendo privilegios

 CREATE USER HR 
 IDENTIFIED BY hr
 DEFAULT TABLESPACE users
 TEMPORARY TABLESPACE TEMP
 QUOTA unlimeted on users;
 QUOTA 0 on system;
 
 GRANT CONNECT, RESOURCE TO HR;
 
 GRANT CREATE SESSION, CREATE VIEW ,CREATE TABLE ALTER SESSION, CREATE PROCEDURE , CREATE TRIGGER TO HR;
 GRANT CREATE SYNONYM , CREATE DATABASE LINK , UNLIMITED TABLESPACE TO HR;
 
 
 
 ------------comando por partes abaixo----------------------
 
 
 -- Cria um usuário chamado HR com senha "hr"
CREATE USER HR 
IDENTIFIED BY hr
-- Define o tablespace padrão para o usuário (onde os objetos dele vão ser armazenados)
DEFAULT TABLESPACE users
-- Define o tablespace temporário (usado para operações internas, como ordenações grandes)
TEMPORARY TABLESPACE temp
-- Dá espaço ilimitado no tablespace "users" (pode criar tabelas, índices etc. sem limite dentro dele)
QUOTA unlimited ON users
-- Bloqueia a criação de objetos no tablespace "system" (o system é crítico, não deve guardar objetos de usuários)
QUOTA 0 ON system;

-- Dá ao usuário HR as permissões de CONNECT (entrar no banco) e RESOURCE (criar objetos básicos)
GRANT CONNECT, RESOURCE TO HR;

-- Concede permissões detalhadas para criar sessão, tabelas, procedures, triggers, views etc.
GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE PROCEDURE, CREATE TRIGGER TO HR;

-- Concede mais permissões, como criar sinônimos, database links e usar espaço ilimitado
GRANT CREATE SYNONYM, CREATE DATABASE LINK, UNLIMITED TABLESPACE TO HR;

 
 
 