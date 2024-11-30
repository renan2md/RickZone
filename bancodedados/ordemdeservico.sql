CREATE TABLE Ordens_de_Servico (
    id_os INT PRIMARY KEY AUTO_INCREMENT,
    id_veiculo INT,
    data_servico DATETIME NOT NULL,
    id_servico INT,
    status ENUM('Agendado', 'Em andamento', 'Concluído', 'Cancelado') DEFAULT 'Agendado',
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);