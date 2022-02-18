insert into vid_sorew(rang_sorew,vid_sport,got_sorew,strana_sorew) values 
('olimp igr','football', 2002, 'turkey'),
('chemp mir', 'football', 2003,'brazil'),
('chemp evro', 'football', 2004,'england'),
('olimp igr', 'basketball', 2005, 'russia'),
('chemp mir', 'basketball', 2006, 'us'),
('chemp evro', 'basketball', 2007, 'spain'),
('olimp igr', 'tennis', 2008, 'brazil'),
('chemp mir', 'tennis', 2009,'england'),
('chemp evro', 'tennis', 2010, 'china'),
('olimp igr', 'football', 2011, 'us'),
('chemp mir', 'football', 2012, 'england'),
('chemp evro', 'football', 2013, 'japan'),
('olimp igr', 'basketball', 2014, 'england'),
('chemp mir', 'basketball', 2015, 'russia'),
('chemp evro', 'basketball', 2016, 'poland'),
('olimp igr', 'tennis', 2017, 'italy'),
('chemp mir', 'tennis', 2018, 'brazil'),
('chemp evro', 'tennis', 2019,'england'),
('olimp igr', 'football', 2020, 'russia'),
('chemp mir', 'football', 2021, 'us');

insert into comand(name_comn,strana_comn,rez_sorew,name_sopern) values
('abasova', 'japan', 'win','Polavin'),
('alecsandrow', 'england', 'loss','Zakirow'),
('bartosh', 'russia', 'draw','Polavin'),
('bobrow', 'poland', 'loss','Savin'),
('vaitcavichus', 'italy', 'draw','Dervin'),
('vinogradova', 'italy', 'win','Zafriev'),
('grigoreva', 'brazil', 'draw','Zakirow'),
('iluxin', 'england', 'draw','Savin'),
('kasatcin', 'us', 'win', 'Shumaeva'),
('kuznechow', 'spain', 'loss', 'KozinaK'),
('necludow', 'brazil', 'loss','Ocina'),
('pawlow', 'england', 'win', 'Frantowa'),
('serebracov', 'china', 'loss', 'Pushkarev'),
('sorokin', 'brazil', 'draw', 'Frantowa'),
('tronenco', 'poland', 'loss','Polavin'),
('hvashewskii', 'england', 'win','Polavin'),
('chuvaev', 'japan', 'loss','Dervin'),
('shah', 'england', 'loss','Ocina'),
('shlahtin', 'poland', 'win','Zakirow'),
('eshmyratow', 'japan', 'loss','Shumaeva');

insert into rez_sorew(name_comn,tip_rez) values
('abasova', 'win'),
('alecsandrow', 'loss'),
('bartosh', 'draw'),
('bobrow', 'loss'),
('vaitcavichus', 'draw'),
('vinogradova', 'win'),
('grigoreva', 'draw'),
('iluxin', 'draw'),
('kasatcin', 'win'),
('kuznechow', 'loss'),
('necludow', 'loss'),
('pawlow', 'win'),
('serebracov', 'loss'),
('sorokin', 'draw'),
('tronenco', 'loss'),
('hvashewskii', 'win'),
('chuvaev', 'loss'),
('shah', 'loss'),
('shlahtin', 'win'),
('eshmyratow', 'loss');


insert into  itog_sorew(id_sorew,id_rez) values
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),
(11, 11),(12, 12),(13, 13),(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),
(19, 19),(20, 20);

insert into itog(id_comn,id_rez) values
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),
(11, 11),(12, 12),(13, 13),(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),
(19, 19),(20, 20);

SELECT name_comn, strana_comn AS strana_sorew FROM comand WHERE strana_comn = 'england' ;

SELECT * FROM rez_sorew WHERE tip_rez != 'draw';

SELECT rang_sorew,vid_sport,strana_sorew  FROM vid_sorew WHERE rang_sorew = 'chemp mir' and vid_sport = 'football';
SELECT rang_sorew,vid_sport,strana_sorew  FROM vid_sorew WHERE rang_sorew = 'chemp mir' and vid_sport = 'basketball';
SELECT rang_sorew,vid_sport,strana_sorew  FROM vid_sorew WHERE rang_sorew = 'chemp mir' and vid_sport = 'tennis';

SELECT Count(strana_sorew) AS max_kol, strana_sorew FROM vid_sorew  WHERE got_sorew >=2010 and got_sorew<=2020 GROuP BY strana_sorew ORDER BY  max_kol desc limit 1;
