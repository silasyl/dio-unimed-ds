-- criação do banco de dados para o cenário de Oficina
CREATE DATABASE car_workshop;
USE car_workshop;

-- criar tabela cliente
CREATE TABLE clients(
    idClient INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(10),
    Minit CHAR(3),
    Lname VARCHAR(20),
    CPF CHAR(11) NOT NULL,
    Address VARCHAR(255),
    CONSTRAINT unique_cpf_client UNIQUE (CPF)
);

ALTER TABLE clients AUTO_INCREMENT=1;

-- criar tabela funcionário
CREATE TABLE staff(
    idStaff INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(10),
    Minit CHAR(3),
    Lname VARCHAR(20),
    CPF CHAR(11),
    CNPJ CHAR(15),
    Address VARCHAR(255),
    Specialty VARCHAR(255),
    CONSTRAINT unique_cpf_staff UNIQUE (CPF),
    CONSTRAINT unique_cnpj_staff UNIQUE (CNPJ)
);

-- criar tabela mão de obra
CREATE TABLE activity(
    idActivity INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Price FLOAT
);

-- criar tabela peça
CREATE TABLE item(
    idItem INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Price FLOAT
);

-- criar tabela orçamento
CREATE TABLE budget(
    idBudget INT AUTO_INCREMENT PRIMARY KEY,
    idBudgetActivity INT,
    idBudgetItem INT,
    budgetItemQtd INT,
    CONSTRAINT fk_budget_activity FOREIGN KEY (idBudgetActivity) REFERENCES activity(idActivity),
    CONSTRAINT fk_budget_item FOREIGN KEY (idBudgetItem) REFERENCES item(idItem)
);

-- criar tabela equipe
CREATE TABLE team(
    idTeam INT AUTO_INCREMENT PRIMARY KEY,
    idTeamStaff INT,
    CONSTRAINT fk_team_staff FOREIGN KEY (idTeamStaff) REFERENCES staff(idStaff)
);

-- criar tabela veículo
CREATE TABLE vehicle(
    idVehicle INT AUTO_INCREMENT PRIMARY KEY,
    idVehicleStaff INT,
    Brand VARCHAR(255),
    Model VARCHAR(255),
    Color VARCHAR(255),
    Plaque CHAR(7),
    CONSTRAINT unique_plaque UNIQUE (Plaque),
    CONSTRAINT fk_vehicle_team FOREIGN KEY (idVehicleStaff) REFERENCES team(idTeam)
);

-- criar tabela ordem de serviço
CREATE TABLE serviceOrder(
    idServiceOrder INT AUTO_INCREMENT PRIMARY KEY,
    idOrderClient INT,
    idOrderVehicle INT,
    idOrderBudget INT,
    Service VARCHAR(255),
    Date_emission DATE,
    Date_delivery DATE,
    Status ENUM('Orçamento','Efetuando','Pronto','Finalizado'),
    CONSTRAINT fk_serviceOrder_clients FOREIGN KEY (idOrderClient) REFERENCES clients(idClient),
    CONSTRAINT fk_serviceOrder_vehicle FOREIGN KEY (idOrderVehicle) REFERENCES vehicle(idVehicle),
    CONSTRAINT fk_serviceOrder_budget FOREIGN KEY (idOrderBudget) REFERENCES budget(idBudget)
);
