
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
('Asl13','via Formentera, 10 30100 Venezia','Asl13@min.salute.it', '041/446798'),
('Asl56','via Giacinto, 106 64003 Treviso','Asl56@min.salute.it', '035/7677889'),
('Asl20','via Garibaldi, 54 30100 Vicenza','Asl20@min.salute.it', '041/445567'),
('Asl05','via Bernardi, 65 30100 Verona','Asl05@min.salute.it', '035/7987231'),
('Asl10','via Ermanno, 25 64500 Belluno','Asl10@min.salute.it', '041/468732');

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
('PR1','31/01/2012','01/02/2012','20/02/2016'	,null,'15/04/2012','30/08/2012','15/09/2012','APPROVATO','16/09/2012','CCHMHL70E11L840W', 'imm1'),
('PR2','31/01/2012','01/03/2012',null,'03/03/2012','15/04/2012','30/08/2012','15/09/2012','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm1'),
('PR3','31/01/2012','01/04/2012',null,'03/03/2012','15/04/2012','30/08/2012','15/09/2012','NON APPROVATO','16/09/2012','CCHMHL70E11L840W', 'imm6'),
('PR5','31/01/2012','01/06/2012',null,'03/03/2012','15/04/2012','30/08/2012','15/09/2012','APPROVATO','16/09/2012','CCHMHL70E11L840W', 'imm8'),
('PR6','31/01/2013','01/02/2013',null,'03/03/2013','15/04/2013','30/08/2012','15/09/2012','APPROVATO','16/09/2012','CCHMHL70E11L840W', 'imm9'),
('PR7','31/01/2013','01/02/2013',null,'03/03/2013','15/04/2013','30/08/2013','15/09/2013','APPROVATO','16/09/2013','CCHMHL70E11L840W', 'imm10'),
('PR8','31/01/2013','01/02/2013',null,'03/03/2013','15/04/2013','30/08/2013','15/09/2013','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm1'),
('PR9','31/01/2013','01/02/2013',null,'03/03/2013','15/04/2013','30/08/2013','15/09/2013','APPROVATO','16/09/2013','CCHMHL70E11L840W', 'imm7'),
('PR10','31/01/2013','01/02/2013',null,'03/03/2013','15/04/2013','30/08/2013','15/09/2013','APPROVATO','16/09/2013','CCHMHL70E11L840W', 'imm5'),
('PR11','31/01/2014','01/02/2014',null,'03/03/2014','15/04/2014','30/08/2014','15/09/2014','APPROVATO','16/09/2013','CCHMHL70E11L840W', 'imm4'),
('PR12','31/01/2014','01/02/2014',null,'03/03/2014','15/04/2014','30/08/2014','15/09/2014','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm2'),
('PR13','31/01/2014','01/02/2014',null,'03/03/2014','15/04/2014','30/08/2014','15/09/2014','APPROVATO','16/09/2014','CCHMHL70E11L840W', 'imm3'),
('PR14','31/01/2014','01/02/2014',null,'03/03/2014','15/04/2014','30/08/2014','15/09/2014','APPROVATO','16/09/2014','CCHMHL70E11L840W', 'imm2'),
('PR15','31/01/2014','01/02/2014','10/02/2016',null,'15/04/2014','30/08/2014','15/09/2014','APPROVATO','16/09/2014','CCHMHL70E11L840W', 'imm1'),
('PR16','31/01/2014','01/02/2014',null,'03/03/2014','15/04/2014','30/08/2014','15/09/2014','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm3'),
('PR17','31/01/2015','01/02/2015',null,'03/03/2015','15/04/2015','30/08/2015','15/09/2015','APPROVATO','16/09/2015','CCHMHL70E11L840W', 'imm8'),
('PR18','31/01/2015','01/02/2015',null,'03/03/2015','15/04/2015','30/08/2015','15/09/2015','APPROVATO','16/09/2015','CCHMHL70E11L840W', 'imm9'),
('PR20','31/01/2015','01/02/2015',null,'03/03/2015','15/04/2015','30/08/2015','15/09/2015','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm4'),
('PR21','31/01/2016','01/02/2016',null,'03/03/2016','15/04/2016','30/08/2016','15/09/2016','NON APPROVATO','16/09/2016','CCHMHL70E11L840W', 'imm6'),
('PR22','31/01/2016','01/02/2016',null,'03/03/2016','15/04/2016','30/08/2016','15/09/2016','APPROVATO','16/09/2016','CCHMHL70E11L840W', 'imm2'),
('PR23','31/01/2016','01/02/2016',null,'03/03/2016','15/04/2016','30/08/2016','15/09/2016','NON APPROVATO',null,'CCHMHL70E11L840W', 'imm7'),
('PR24','31/10/2016','30/11/2016',null,'31/12/2016','10/01/2017','31/01/2017','15/02/2017','APPROVATO',null,'CCHMHL70E11L840W', 'imm9'),
('PR25','20/11/2016','20/12/2016',null,'20/01/2017','31/01/2017','28/02/2017','07/03/2017','APPROVATO',null,'CCHMHL70E11L840W', 'imm10');


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
