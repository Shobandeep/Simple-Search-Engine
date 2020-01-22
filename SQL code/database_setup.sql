DROP DATABASE IF EXISTS searchengine;
CREATE DATABASE searchengine;
use searchengine;

CREATE TABLE page (
   pageId INT PRIMARY KEY AUTO_INCREMENT,
   URL VARCHAR(500) UNIQUE,
	 title VARCHAR(500),
   summary VARCHAR(500),
   pageRank DOUBLE DEFAULT .25,
   indexedTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE word (
   wordId INT PRIMARY KEY AUTO_INCREMENT,
   word VARCHAR(100) UNIQUE
);

CREATE TABLE pageword (
  wordId INT NOT NULL,
  pageId INT NOT NULL,
  frequency INT NOT NULL DEFAULT '0'
);

CREATE TABLE search (
  searchId INT PRIMARY KEY AUTO_INCREMENT,
  terms VARCHAR(100) NOT NULL,
  count INT NOT NULL,
  searchDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
