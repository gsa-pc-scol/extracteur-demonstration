-- Script de création d'un schéma pour le job d'extraction de donnée
-- le script crée :
--     - un schéma : sysschema
--     - une table : etablissement
-- c'est la table etablissement qui contiendra le resultat du job. 

CREATE SCHEMA sysschema;
CREATE TABLE sysschema.etablissement
(
    ordre bigint NOT NULL,
    "dateDebut" date NOT NULL,
    "dateFin" date,
    uai character(50) COLLATE pg_catalog."default" NOT NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
