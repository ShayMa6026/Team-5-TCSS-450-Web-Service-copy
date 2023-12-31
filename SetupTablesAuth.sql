DROP TABLE IF EXISTS Members CASCADE;
CREATE TABLE Members (MemberID SERIAL PRIMARY KEY,
                      FirstName VARCHAR(255) NOT NULL,
		              LastName VARCHAR(255) NOT NULL,
                      Username VARCHAR(255) NOT NULL UNIQUE,
                      Email VARCHAR(255) NOT NULL UNIQUE,
                      Verification INT DEFAULT 0,
                      VerificationCode VARCHAR(225)
);

DROP TABLE IF EXISTS Credentials CASCADE;
CREATE TABLE Credentials (CredentialID SERIAL PRIMARY KEY,
                      MemberID INT NOT NULL,
                      SaltedHash VARCHAR(255) NOT NULL,
                      SALT VARCHAR(255),
                      FOREIGN KEY(MemberID) REFERENCES Members(MemberID)
);










