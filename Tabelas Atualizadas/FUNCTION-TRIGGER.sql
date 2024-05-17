DELIMITER //

CREATE TRIGGER log_status_aluno AFTER UPDATE ON aluno
FOR EACH ROW
BEGIN
    IF OLD.status <> NEW.status THEN
        INSERT INTO log_aluno (id_aluno, status_anterior, status_atual, data_atualizacao)
        VALUES (NEW.id_aluno, OLD.status, NEW.status, CURRENT_TIMESTAMP);
    END IF;
END;
//

DELIMITER ;
