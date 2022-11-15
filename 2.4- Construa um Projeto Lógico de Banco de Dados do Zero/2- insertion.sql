USE ecommerce;
SHOW TABLES;

-- idClient, Fname, Minit, Lname, CPF, Address
INSERT INTO Clients (Fname, Minit, Lname, CPF, Address)
    VALUES('Maria','M','Silva',12346789,'rua silva de prata 29, Carangola - Cidade das flores'),
          ('Matheus','O','Pimentel',987654321,'rua alameda 289, Centro - Cidade das flores'),
          ('Ricardo','F','Silva',45678913,'avenida alameda vinha 1009, Centro - Cidade das flores'),
          ('Julia','S','Franca',789123456,'rua laranjeiras 861, Centro - Cidade das flores'),
          ('Roberta','G','Assis',98745631,'avenida koller 19, Centro - Cidade das flores'),
          ('Isabela','M','Cruz',654789123,'rua alameda das flores 28, Centro - Cidade das flores');
        
-- idStaff, Fname, Minit, Lname, CPF, Address, Specialty
INSERT INTO staff (Fname, Minit, Lname, CPF, Address, Specialty) VALUES
    ('André','O','Santos',123789456,'rua das orquideas 1', 'Mecânico'),
    ('João','P','Almeida',123789654,'rua das rosas 2', 'Engenheiro'),
    ('Marcos','M','Graças',123789555,'rua das palmeiras 3', 'Técnico'),
    ('Paulo','S','Silva',123789666,'rua das azaléias 4', 'Mecânico'),
    ('Carlos','A','Assunção',123789888,'rua das margaridas 5', 'Eletricista');
    
-- idActivity, Name, Price
INSERT INTO activity (Name, Price) VALUES
    ('Balanceamento',200),
    ('Martelinho de Ouro',100),
    ('Revisão',100),
    ('Troca peça',300);

-- idItem, Name, Price
INSERT INTO item (Name, Price) VALUES
    ('Roda',150),
    ('Tinta',50),
    ('Tubo',55),
    ('Motor',3000);

-- idBudget, idBudgetActivity, idBudgetItem, budgetItemQtd
INSERT INTO budget (idBudgetActivity, idBudgetItem, budgetItemQtd) VALUES
    (1, 1, 4),
    (2, 2, 2),
    (3, , ,),
    (4, 3, 1),
    (4, 4, 1);

-- idTeam, idTeamStaff
INSERT INTO team (idTeamStaff) VALUES
    (1, 2, 3),
    (1, 3, 4),
    (2, 3);

-- idVehicle, idVehicleStaff, Brand, Model, Color, Plaque
INSERT INTO vehicle (idVehicleStaff, Brand, Model, Color, Plaque) VALUES
    (1, 'Volkswagen', 'Fox', 'Preto', 'AAA1111'),
    (2, 'Fiat', 'Uno', 'Branco', 'BBB2222'),
    (3, 'Mercedez', 'Classe A', 'Vermelho', 'CCC3333');

-- idServiceOrder, idOrderClient, idOrderVehicle, idOrderBudget, Service, Date_emission, Date_delivery, Status
INSERT INTO serviceOrder (idOrderClient, idOrderVehicle, idOrderBudget, Service, Date_emission, Date_delivery, Status) VALUES
    (1, 1, 1, 'Revisão', '2022-01-01', '2022-01-03', 'Pronto'),
    (3, 3, 2, 'Rotina', '2022-01-02', '2022-01-05', 'Orçamento'),
    (6, 2, 4, 'Batida', '2022-01-03', '2022-01-10', 'Efetuando');
