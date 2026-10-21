-- Nexus Repository Setup
CREATE USER rmuser WITH PASSWORD 'rmuser';
CREATE DATABASE rmdb OWNER rmuser;
GRANT ALL PRIVILEGES ON DATABASE rmdb TO rmuser;

-- IQ Server Setup
CREATE USER iquser WITH PASSWORD 'iquser';
CREATE DATABASE iqdb OWNER iquser;
GRANT ALL PRIVILEGES ON DATABASE iqdb TO iquser;

-- Display a summary of all tables, views, and sequences in the current schema
\d

-- Display detailed list of tables only
\dt

-- Display detailed list of views
\dv

-- Display custom ENUM types or domain types
\dT

-- Display custom schemas
\dn

-- List all user-defined tables, views, and sequence names
SELECT table_schema, table_name, table_type 
FROM information_schema.tables 
WHERE table_schema NOT IN ('information_schema', 'pg_catalog')
ORDER BY table_schema, table_name;

-- Count total created tables
SELECT count(*) AS total_tables 
FROM information_schema.tables 
WHERE table_schema = 'public' AND table_type = 'BASE TABLE';