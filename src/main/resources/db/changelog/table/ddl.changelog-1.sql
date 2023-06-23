-- liquibase formatted sql
-- changeset codified:createInitialTables-20230623
CREATE TABLE Bible (Book INTEGER, Chapter INTEGER, Verse INTEGER, Scripture TEXT);
CREATE TABLE Details (Title NVARCHAR(100), Abbreviation NVARCHAR(50), Information TEXT, Version INTEGER, OldTestament BOOLEAN(2000000000), NewTestament BOOLEAN(2000000000), Apocrypha BOOLEAN(2000000000), Strongs BOOLEAN(2000000000), RightToLeft BOOLEAN(2000000000));
CREATE INDEX BookChapterVerseIndex ON Bible(Book, Chapter, Verse);
