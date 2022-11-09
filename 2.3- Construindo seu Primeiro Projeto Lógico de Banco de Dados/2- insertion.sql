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
        
-- idProduct, Pname, classification_kids boolean, category('Eletronico','Brinquedos','Alimentos','Moveis'), avaliacao, size
INSERT INTO product (Pname, classification_kids, category, avaliacao, size) VALUES
    ('Fone de ouvido',false,'Eletronico','4',null),
    ('Barbie Elsa',true,'Brinquedos','3',null),
    ('Body Carters',true,'Vestimenta','5',null),
    ('Microfone Vedo - Youtuber',False,'Eletronico','4',null),
    ('Sofa retratil',False,'Moveis','3','3x57x80'),
    ('Farinha de arroz',False,'Alimentos','2',null),
    ('Fire Stick Amazon',False,'Eletronico','3',null);
    
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES
    (1,default,'compra via aplicativo',null,1),
    (2,default,'compra via aplicativo',50,0),
    (3,'Confirmado',null,null,1),
    (4,default,'compra via web site',150,0);
    
-- idPOproduct, idPOorder, poQuantity, poStatus
INSERT INTO productOrder (idPOproduct, IdPOorder, poQuantity, poStatus) VALUES
    (1,5,2,null),
    (2,5,1,null),
    (3,6,1,null);
    
-- storageLocation, quantity
INSERT INTO productStorage (storageLocation, quantity) VALUES
    ('Rio de Janeiro',1000),
    ('Rio de Janeiro',500),
    ('Sao Paulo',10),
    ('Sao Paulo', 100),
    ('Sao Paulo',10),
    ('Brasilia',60);
    
-- idLproduct, idLstorage, location
INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
    (1,2,'RJ'),
    (2,6,'GO');
    
-- idSupplier, SocialName, CNPJ, contact
INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
    ('Almeida e filhos',123456789123456,'21985474'),
    ('Eletronicos Silva',854519649143457,'21985484'),
    ('Eletronicos Valma',934567893934695,'21975474');
    
-- idPsSupplier, idPsProduct, quantity
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
    (1,1,500),
    (1,2,400),
    (2,4,633),
    (3,3,5),
    (2,5,10);
    
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
INSERT INTO seller (SocialName, AbstName, CNPJ, location, contact) VALUES
    ('Tech eletronics',null,123456789456321,null,'Rio de Janeiro',219946287),
    ('Botique Durgas',null,null,123456783,'Rio de Janeiro',219567895),
    ('Kids World',null,456789123654485,null,'Sao Paulo',1198657484);
    
-- idPseller, idPproduct, prodQuantity
INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
    (1,6,80),
    (2,7,10);