create database biblioteca;


CREATE TABLE Livros (
    livros_id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);


INSERT INTO Livros (livros_id, titulo, autor, editora, ano_publicacao, isbn) VALUES 
('1', 'A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('2','Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('3','O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
('4','The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
('5','1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
('6','Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');


create table autores (
    id INT PRIMARY KEY auto_increment,
    nome_autor varchar(255)
);

create table editores (
    id INT PRIMARY KEY auto_increment,
    nome_editor varchar(255)
);


alter table livros drop column autor;

alter table livros drop column editora;

alter table livros add autor_id varchar(255);

alter table livros add editora_id varchar(255);


update livros set autor_id = 'John Green' where livros_id = '1';
update livros set autor_id = 'J.K. Rowling' where livros_id = '2';
update livros set autor_id = 'J.R.R. Tolkien' where livros_id = '3';
update livros set autor_id = 'J.D. Salinger' where livros_id = '4';
update livros set autor_id = 'George Orwell' where livros_id = '5';
update livros set autor_id = 'Rick Riordan' where livros_id = '6';


update livros set editora_id = 'Intrínseca' where livros_id = '1';
update livros set editora_id = 'Rocco' where livros_id = '2';
update livros set editora_id = 'Martins Fontes' where livros_id = '3';
update livros set editora_id = 'Little, Brown and Company' where livros_id = '4';
update livros set editora_id = 'Companhia Editora Nacional' where livros_id = '5';
update livros set editora_id = 'Intrínseca' where livros_id = '6';


INSERT INTO Livros (livros_id, titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES 
(7, 'Grande Sertão: Veredas', 1956, '9788520923251', 'João Guimarães Rosa','Nova Fronteira'),
(8, 'Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 'Machado de Assis', 'Companhia das Letras'),
(9, 'Vidas Secas', 1938, '9788572326972','Graciliano Ramos', 'Companhia Editora Nacional'),
(10, 'O Alienista', 1882,  '9788572327429', 'Machado de Assis', 'Martin Claret'),
(11, 'O Cortiço', 1890, '9788579027048', 'Aluísio Azevedo', 'Penguin Companhia'),
(12, 'Dom Casmurro',  1899, '9788583862093', 'Machado de Assis', 'Penguin Companhia'),
(13, 'Macunaíma',  1928, '9788503012302', 'Mário de Andrade', 'Companhia Editora Nacional');


SELECT * FROM Livros;