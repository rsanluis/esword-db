-- liquibase formatted sql
-- changeset codified:populateLookupTables-20230623

-- Insert contents of kjv+ bible into SQLite virtual table BibleFTS
-- This virtual table will be used for full text searching capabilities using FTS5
insert into BibleFTS select * from Bible;

-- Insert Bible info into Books table
insert into Book (id,title,short_title,chapters) values (1,'Genesis','Gen',50);
insert into Book (id,title,short_title,chapters) values (2,'Exodus','Exo',40);
insert into Book (id,title,short_title,chapters) values (3,'Leviticus','Lev',27);
insert into Book (id,title,short_title,chapters) values (4,'Numbers','Num',36);
insert into Book (id,title,short_title,chapters) values (5,'Deuteronomy','Deu',34);
insert into Book (id,title,short_title,chapters) values (6,'Joshua','Jos',24);
insert into Book (id,title,short_title,chapters) values (7,'Judges','Jdg',21);
insert into Book (id,title,short_title,chapters) values (8,'Ruth','Rth',4);
insert into Book (id,title,short_title,chapters) values (9,'1 Samuel','1Sa',31);
insert into Book (id,title,short_title,chapters) values (10,'2 Samuel','2Sa',24);
insert into Book (id,title,short_title,chapters) values (11,'1 Kings','1Ki',22);
insert into Book (id,title,short_title,chapters) values (12,'2 Kings','2Ki',25);
insert into Book (id,title,short_title,chapters) values (13,'1 Chronicles','1Ch',29);
insert into Book (id,title,short_title,chapters) values (14,'2 Chronicles','2Ch',36);
insert into Book (id,title,short_title,chapters) values (15,'Ezra','Ezr',10);
insert into Book (id,title,short_title,chapters) values (16,'Nehemiah','Neh',13);
insert into Book (id,title,short_title,chapters) values (17,'Esther','Est',10);
insert into Book (id,title,short_title,chapters) values (18,'Job','Job',42);
insert into Book (id,title,short_title,chapters) values (19,'Psalms','Psa',150);
insert into Book (id,title,short_title,chapters) values (20,'Proverbs','Pro',31);
insert into Book (id,title,short_title,chapters) values (21,'Ecclesiastes','Ecc',12);
insert into Book (id,title,short_title,chapters) values (22,'Song of Solomon','Son',8);
insert into Book (id,title,short_title,chapters) values (23,'Isaiah','Isa',66);
insert into Book (id,title,short_title,chapters) values (24,'Jeremiah','Jer',52);
insert into Book (id,title,short_title,chapters) values (25,'Lamenations','Lam',5);
insert into Book (id,title,short_title,chapters) values (26,'Ezekiel','Eze',48);
insert into Book (id,title,short_title,chapters) values (27,'Daniel','Dan',12);
insert into Book (id,title,short_title,chapters) values (28,'Hosea','Hos',14);
insert into Book (id,title,short_title,chapters) values (29,'Joel','Joe',3);
insert into Book (id,title,short_title,chapters) values (30,'Amos','Amo',9);
insert into Book (id,title,short_title,chapters) values (31,'Obadiah','Oba',1);
insert into Book (id,title,short_title,chapters) values (32,'Jonah','Jon',4);
insert into Book (id,title,short_title,chapters) values (33,'Micah','Mic',7);
insert into Book (id,title,short_title,chapters) values (34,'Nahum','Nah',3);
insert into Book (id,title,short_title,chapters) values (35,'Habakkuk','Hab',3);
insert into Book (id,title,short_title,chapters) values (36,'Zephaniah','Zep',3);
insert into Book (id,title,short_title,chapters) values (37,'Haggai','Hag',2);
insert into Book (id,title,short_title,chapters) values (38,'Zechariah','Zec',14);
insert into Book (id,title,short_title,chapters) values (39,'Malachi','Mal',4);
insert into Book (id,title,short_title,chapters) values (40,'Matthew','Mat',28);
insert into Book (id,title,short_title,chapters) values (41,'Mark','Mar',16);
insert into Book (id,title,short_title,chapters) values (42,'Luke','Luk',24);
insert into Book (id,title,short_title,chapters) values (43,'John','Joh',21);
insert into Book (id,title,short_title,chapters) values (44,'Acts','Act',28);
insert into Book (id,title,short_title,chapters) values (45,'Romans','Rom',16);
insert into Book (id,title,short_title,chapters) values (46,'1 Corinthians','1Co',16);
insert into Book (id,title,short_title,chapters) values (47,'2 Corinthians','2Co',13);
insert into Book (id,title,short_title,chapters) values (48,'Galatians','Gal',6);
insert into Book (id,title,short_title,chapters) values (49,'Ephesians','Eph',6);
insert into Book (id,title,short_title,chapters) values (50,'Philippians','Php',4);
insert into Book (id,title,short_title,chapters) values (51,'Colossians','Col',4);
insert into Book (id,title,short_title,chapters) values (52,'1 Thessalonians','1Th',5);
insert into Book (id,title,short_title,chapters) values (53,'2 Thessalonians','2Th',3);
insert into Book (id,title,short_title,chapters) values (54,'1 Timothy','1Ti',6);
insert into Book (id,title,short_title,chapters) values (55,'2 Timothy','2Ti',4);
insert into Book (id,title,short_title,chapters) values (56,'Titus','Tit',3);
insert into Book (id,title,short_title,chapters) values (57,'Philemon','Phm',1);
insert into Book (id,title,short_title,chapters) values (58,'Hebrews','Heb',13);
insert into Book (id,title,short_title,chapters) values (59,'James','Jas',5);
insert into Book (id,title,short_title,chapters) values (60,'1 Peter','1Pe',5);
insert into Book (id,title,short_title,chapters) values (61,'2 Peter','2Pe',3);
insert into Book (id,title,short_title,chapters) values (62,'1 John','1Jn',5);
insert into Book (id,title,short_title,chapters) values (63,'2 John','2Jn',1);
insert into Book (id,title,short_title,chapters) values (64,'3 John','3Jn',1);
insert into Book (id,title,short_title,chapters) values (65,'Jude','Jud',1);
insert into Book (id,title,short_title,chapters) values (66,'Revelation','Rev',22);

-- Insert search context info into Context table
insert into Context (id,context,context_desc,start_id,end_id) values (1,'Bible','Search Entire Bible',1,66);
insert into Context (id,context,context_desc,start_id,end_id) values (2,'OldTestament','Search Old Testament',1,39);
insert into Context (id,context,context_desc,start_id,end_id) values (3,'Pentateuch','Search Pentateuch (Gen - Deu)',1,5);
insert into Context (id,context,context_desc,start_id,end_id) values (4,'History','Search History (Jos - Est)',6,17);
insert into Context (id,context,context_desc,start_id,end_id) values (5,'Wisdom','Search Wisdom (Job - Son)',18,22);
insert into Context (id,context,context_desc,start_id,end_id) values (6,'MajorProphets','Search Major Prophets (Isa - Dan)',23,27);
insert into Context (id,context,context_desc,start_id,end_id) values (7,'MinorProphets','Search Minor Prophets (Hos - Mal)',28,39);
insert into Context (id,context,context_desc,start_id,end_id) values (8,'NewTestament','Search New Testament',40,66);
insert into Context (id,context,context_desc,start_id,end_id) values (9,'GospelsActs','Search Gospels & Acts (Mat - Act)',40,44);
insert into Context (id,context,context_desc,start_id,end_id) values (10,'PaulsLetters','Search Paul''s Letters (Rom - Heb)',45,58);
insert into Context (id,context,context_desc,start_id,end_id) values (11,'GeneralLetters','Search General Letters (Jas - Jud)',59,65);
insert into Context (id,context,context_desc,start_id,end_id) values (12,'Apocalypse','Search History (Rev)',66,66);