
--SET search_path TO salute;

--SET DATESTYLE TO 'SQL,EUROPEAN';

BEGIN;

INSERT INTO app01_materiali (sigla, nome, potcancerogeno, cancerogeno, fuorilegge)
VALUES
('Am1','Amianto',0, 1, 1),
('Fo2','Fosfato',1, 0, 0),
('Me3','Metilsalato',0, 0, 1),
('Ce4','Cementosalo',1, 0, 1),
('Mi5','Minaralato',0, 1, 1);

INSERT INTO app01_azienda (numero, indirizzo, email, fax)
VALUES
('Asl13','via Formentera, 10 30100 Venezia','Asl13@min.salute.it', '041.446798'),
('Asl56','via Giacinto, 106 64003 Treviso','Asl56@min.salute.it', '035.7677889'),
('Asl20','via Garibaldi, 54 30100 Vicenza','Asl20@min.salute.it', '041.445567'),
('Asl05','via Bernardi, 65 30100 Verona','Asl05@min.salute.it', '035.7987231'),
('Asl10','via Ermanno, 25 64500 Belluno','Asl10@min.salute.it', '041.468732');

INSERT INTO app01_funzionari (codfisc, nome, cognome, password)
VALUES
('CCHMHL70E11L840W','Michelangelo','Occhipinti', 'jgglaghgah'),
('ABNDJN50W44J674C','Abdul','Dajan', 'trewyjekmmit'),
('SSFCBD30A22G465W','Susanna','Cibidan', 'khòlfkjòlkjk'),
('NNASFE78S12E678D','Anna','Sefendi', 'erytryyu'),
('LNAFVV57A78R487F','Luana','fevervi', 'jkljkhjljhh');

INSERT INTO app01_immobile (codimm, indirizzo, comune, numaz_id)
VALUES
('imm1','fgsggdsgfdsggfds','Venezia', 'Asl13'),
('imm2','sgfdsgfdsgfdsg','Belluno', 'Asl10'),
('imm3','gfgfdsgdsgsg','Verona', 'Asl05'),
('imm4','sgsgdsgfd','Verona', 'Asl05'),
('imm5','sdgfdsgfdsg','Treviso', 'Asl56'),
('imm6','sgfdgfdgfd','Vicenza', 'Asl20'),
('imm7','sgsgdsgf','Treviso', 'Asl56'),
('imm8','sgfdsgfdsgfds','Belluno', 'Asl10'),
('imm9','sfgdsgfdsgdsg','Venezia', 'Asl13'),
('imm10','sgfdsgfgggf','Treviso', 'Asl56');

INSERT INTO app01_pratica (codprat, apertprat, primsoll, rispprimsoll, secsoll, inizlavori, finlavori, collaudo, esitcoll, chiusuraprat, codfunz_id, codimm_id)
VALUES
('PR1', '2012-01-31','2012-02-01','2016-02-20', null,        '2012-04-15','2012-08-30','2012-09-15','APPROVATO',    '2012-09-16','CCHMHL70E11L840W', 'imm1'),
('PR2', '2012-01-31','2012-03-01',null,         '2012-03-03','2012-04-15','2012-08-30','2012-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm1'),
('PR3', '2012-01-31','2012-04-01',null,         '2012-03-03','2012-04-15','2012-08-30','2012-09-15','NON APPROVATO','2012-09-16','CCHMHL70E11L840W', 'imm6'),
('PR5', '2012-01-31','2012-06-01',null,         '2012-03-03','2012-04-15','2012-08-30','2012-09-15','APPROVATO',    '2012-09-16','CCHMHL70E11L840W', 'imm8'),
('PR6', '2013-01-31','2013-02-01',null,         '2013-03-03','2013-04-15','2012-08-30','2012-09-15','APPROVATO',    '2012-09-16','CCHMHL70E11L840W', 'imm9'),
('PR7', '2013-01-31','2013-02-01',null,         '2013-03-03','2013-04-15','2013-08-30','2013-09-15','APPROVATO',    '2013-09-15','CCHMHL70E11L840W', 'imm10'),
('PR8', '2013-01-31','2013-02-01',null,         '2013-03-03','2013-04-15','2013-08-30','2013-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm1'),
('PR9', '2013-01-31','2013-02-01',null,         '2013-03-03','2013-04-15','2013-08-30','2013-09-15','APPROVATO',    '2013-09-15','CCHMHL70E11L840W', 'imm7'),
('PR10','2013-01-31','2013-02-01',null,         '2013-03-03','2013-04-15','2013-08-30','2013-09-15','APPROVATO',    '2013-09-15','CCHMHL70E11L840W', 'imm5'),
('PR11','2014-01-31','2014-02-01',null,         '2014-03-03','2014-04-15','2014-08-30','2014-09-15','APPROVATO',    '2013-09-15','CCHMHL70E11L840W', 'imm4'),
('PR12','2014-01-31','2014-02-01',null,         '2014-03-03','2014-04-15','2014-08-30','2014-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm2'),
('PR13','2014-01-31','2014-02-01',null,         '2014-03-03','2014-04-15','2014-08-30','2014-09-15','APPROVATO',    '2014-09-16','CCHMHL70E11L840W', 'imm3'),
('PR14','2014-01-31','2014-02-01',null,         '2014-03-03','2014-04-15','2014-08-30','2014-09-15','APPROVATO',    '2014-09-16','CCHMHL70E11L840W', 'imm2'),
('PR15','2014-01-31','2014-02-01','2016-02-10', null,        '2014-04-15','2014-08-30','2014-09-15','APPROVATO',    '2014-09-16','CCHMHL70E11L840W', 'imm1'),
('PR16','2014-01-31','2014-02-01',null,         '2014-03-03','2014-04-15','2014-08-30','2014-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm3'),
('PR17','2015-01-31','2015-02-01',null,         '2015-03-03','2015-04-15','2015-08-30','2015-09-15','APPROVATO',    '2015-09-16','CCHMHL70E11L840W', 'imm8'),
('PR18','2015-01-31','2015-02-01',null,         '2015-03-03','2015-04-15','2015-08-30','2015-09-15','APPROVATO',    '2015-09-16','CCHMHL70E11L840W', 'imm9'),
('PR20','2015-01-31','2015-02-01',null,         '2015-03-03','2015-04-15','2015-08-30','2015-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm4'),
('PR21','2016-01-31','2016-02-01',null,         '2016-03-03','2016-04-15','2016-08-30','2016-09-15','NON APPROVATO','2016-09-16','CCHMHL70E11L840W', 'imm6'),
('PR22','2016-01-31','2016-02-01',null,         '2016-03-03','2016-04-15','2016-08-30','2016-09-15','APPROVATO',    '2016-09-16','CCHMHL70E11L840W', 'imm2'),
('PR23','2016-01-31','2016-02-01',null,         '2016-03-03','2016-04-15','2016-08-30','2016-09-15','NON APPROVATO',null,        'CCHMHL70E11L840W', 'imm7'),
('PR24','2016-10-31','2016-11-30',null,         '2016-12-31','2017-01-10','2017-01-31','2017-02-15','APPROVATO',    null,        'CCHMHL70E11L840W', 'imm9'),
('PR25','2016-11-20','2016-12-20',null,         '2017-01-20','2017-01-31','2017-02-28','2017-03-07','APPROVATO',    null,        'CCHMHL70E11L840W', 'imm10');


INSERT INTO app01_schedaimmobile (codimm_id, codmat_id)
VALUES
('imm1','Am1'),
('imm1','Fo2'),
('imm1','Me3'),
('imm1','Ce4'),	
('imm2','Am1'),
('imm2','Mi5'),
('imm2','Fo2'),
('imm3','Mi5'),
('imm3','Fo2'),
('imm4','Am1'),
('imm4','Ce4'),
('imm5','Am1'),
('imm6','Fo2'),
('imm6','Me3'),
('imm7','Ce4'),
('imm7','Am1'),
('imm8','Mi5'),
('imm8','Fo2'),
('imm9','Mi5'),
('imm9','Fo2'),
('imm9','Am1'),
('imm10','Am1'),
('imm10','Ce4');

COMMIT;
