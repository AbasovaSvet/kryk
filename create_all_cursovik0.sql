CREATE TABLE vid_sorew(id_sorew serial primary key, rang_sorew varchar(25), vid_sport varchar(25), got_sorew int, strana_sorew varchar(25));
CREATE TABLE comand(id_comn serial primary key,name_comn varchar(25), strana_comn varchar(25), rez_sorew varchar(25));
CREATE TABLE rez_sorew(id_rez serial primary key, name_comn varchar(25), tip_rez varchar(25), name_sopern varchar(25));
CREATE TABLE itog_sorew(id_itog_sorew serial primary key, id_sorew int, id_rez int);
CREATE TABLE itog(id_itog serial primary key, id_comn int, id_rez int);
CREATE TABLE match(id_natch serial primary key);

ALTER TABLE itog_sorew add CONSTRAINT fk_itog_sorew FOREIGN KEY (id_sorew) REFERENCES vid_sorew(id_sorew);

ALTER TABLE itog_sorew add CONSTRAINT fk_itog_soreww FOREIGN KEY (id_rez) REFERENCES rez_sorew(id_rez);

ALTER TABLE itog add CONSTRAINT fk_itog FOREIGN KEY (id_rez) REFERENCES rez_sorew(id_rez);

ALTER TABLE itog add CONSTRAINT fk_itogg FOREIGN KEY (id_comn) REFERENCES comand(id_comn);