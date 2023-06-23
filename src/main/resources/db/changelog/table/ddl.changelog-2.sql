-- liquibase formatted sql
-- changeset codified:createLookupTables-20230623

-- Create virtual table BibleFTS
create virtual table BibleFTS using FTS5(book,chapter,verse,scripture);

-- Create table Books
create table Book (
    id integer not null primary key,
    title text not null,
    short_title text not null,
    chapters integer not null
);

-- Create table Context
create table Context (
    id integer not null primary key,
    context text not null,
    context_desc text not null,
    start_id integer not null,
    end_id integer not null
);
