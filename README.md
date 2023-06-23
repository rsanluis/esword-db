# esword-db

### Description

This utility creates an e-Sword database file: **kjv+matches.bbli**

- Derived from the **kjv+.bbli** database file used in the e-Sword X Mac edition
- To be used within the **e-sword-cli** project 
  - [https://github.com/rsanluis/esword-cli] (https://github.com/rsanluis/esword-cli)
- Includes WordMatches tables for the entire Bible, Daniel, Revelation, and a combined DanRev (Daniel/Revelation)
- WordMatches data generation code located within **e-sword-cli**
  - [https://github.com/rsanluis/esword-cli] (https://github.com/rsanluis/esword-cli)
- Generated using Liquibase

### Runtime Instructions

**For Mac Users**

`./build.sh`

**For Windows Users**

`build.bat`
