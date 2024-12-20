CREATE TABLE RADNIK(
	MBR SERIAL PRIMARY KEY,
	IME TEXT NOT NULL,
	PRZ TEXT NOT NULL,
	PLT INT,
	SEF SERIAL references RADNIK(MBR)
);

CREATE TABLE PROJEKAT(
	SPR SERIAL PRIMARY KEY,
	NAP TEXT NOT NULL,
	RUK SERIAL references RADNIK(MBR) NOT NULL
);

CREATE TABLE RADPROJ(
	MBR SERIAL references RADNIK(MBR),
	SPR SERIAL references PROJEKAT(SPR),
	BRC INT NOT NULL,
	PRIMARY KEY(MBR, SPR)
);
