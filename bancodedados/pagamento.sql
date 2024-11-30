CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_os INT,
    valor_pago DECIMAL(10, 2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo_pagamento ENUM('Dinheiro', 'Cartão', 'Pix', 'Outro'),
    FOREIGN KEY (id_os) REFERENCES Ordens_de_Servico(id_os)
);