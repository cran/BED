CREATE CONSTRAINT ON (n:System) ASSERT n.name IS UNIQUE;
CREATE CONSTRAINT ON (n:System) ASSERT n.version IS UNIQUE;
CREATE CONSTRAINT ON (n:TaxID) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:OrganismName) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:BEDB) ASSERT n.name IS UNIQUE;
CREATE CONSTRAINT ON (n:BEName) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:BESymbol) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (n:BEType) ASSERT n.value IS UNIQUE;
CREATE CONSTRAINT ON (p:Platform) ASSERT p.name IS UNIQUE;
CREATE INDEX ON :BEID(value);
CREATE INDEX ON :BEID(database);
CREATE INDEX ON :Attribute(name);
CREATE INDEX ON :GeneID(value);
CREATE INDEX ON :GeneID(database);
CREATE INDEX ON :TranscriptID(value);
CREATE INDEX ON :TranscriptID(database);
CREATE INDEX ON :PeptideID(value);
CREATE INDEX ON :PeptideID(database);
CREATE INDEX ON :ObjectID(value);
CREATE INDEX ON :ObjectID(database);
CREATE INDEX ON :ProbeID(value);
CREATE INDEX ON :ProbeID(platform);
CREATE INDEX ON :Platform(description);
// Technical indexes
CREATE INDEX ON :BESymbol(value_up);
CREATE INDEX ON :BEName(value_up);
CREATE INDEX ON :OrganismName(value_up);
