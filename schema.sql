CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco DECIMAL(12,2) NOT NULL,
    categoria_id INT NOT NULL,

    CONSTRAINT fk_produto_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categorias(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(200)
) ENGINE=InnoDB;


INSERT INTO categorias (nome) VALUES
('Aviões de Carga'),
('Caças Supersônicos'),
('Caças Furtivos'),
('Caças para Porta-Aviões');


INSERT INTO produtos (nome, descricao, preco, categoria_id) VALUES
('Lockheed AC-130 Hercules', 'Anjo da Morte', 150000000.00, 1),
('Boeing C-17 Globemaster III', 'Aeronave de transporte de grande porte.', 340000000.00, 1),
('Embraer C-390 Millennium', 'Aeronave brasileira bimotor.', 85000000.00, 1),

('Sukhoi Su-35', 'Caça supermanobrável russo.', 85000000.00, 2),
('Mikoyan MiG-31', 'Interceptador supersônico de longo alcance.', 60000000.00, 2),
('Eurofighter Typhoon', 'Caça destacado por sua asa em delta.', 120000000.00, 2),

('Lockheed Martin F-22 Raptor', 'Caça furtivo de superioridade aérea de última geração.', 350000000.00, 3),
('Lockheed Martin F-35 Lightning II', 'Caça multifuncional furtivo de quinta geração.', 110000000.00, 3),
('Chengdu J-20', 'Caça furtivo bimotor chinês de quinta geração.', 120000000.00, 3),

('F/A-18 Super Hornet', 'Caça supersônico de porta-aviões.', 70000000.00, 4),
('Dassault Rafale M', 'Variante naval do caça francês.', 90000000.00, 4),
('Sukhoi Su-33', 'Avião supersônico de porta-aviões.', 65000000.00, 4);


INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('Yuri Orlov', 'orlovri@gmail.com', '(47) 98888-1111', 'Russia'),
('Kim Chol-su', 'cholsumin@gmail.com', '(47) 98888-2222', 'Coreia do Norte'),
('Douglas McArthur', 'mcdouglas@gmail.com', '(47) 98888-3333', 'Washington D.C.'),
('Simeon Weisz', 'sameonvsz@gmail.com', '(47) 98888-4444', 'Mianmar'),
('Tariq Al-Mansoor', 'tariqmansoor67@gmail.com', '(47) 98888-5555', 'Emirados Árabes Unidos');