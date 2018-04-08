DROP PROCEDURE IF EXISTS set_password;

delimiter //

CREATE PROCEDURE set_password(IN curr_worker_id INT,IN curr_salt CHAR(32),IN curr_hash CHAR(128))
BEGIN

  DECLARE exit handler FOR sqlexception
  BEGIN
    SHOW ERRORS;
    ROLLBACK;
  END;

  START TRANSACTION;
  UPDATE workers SET
    salt = curr_salt,
    hash = curr_hash
  WHERE worker_id = curr_worker_id;

  SELECT
    w.worker_id,
    w.first_name,
    w.last_name,
    w.salt,
    w.hash,
    wr.role_id
  FROM workers w,
       worker_roles wr
  WHERE w.worker_id = curr_worker_id and
        w.worker_id = wr.worker_id and
        w.active    = 1;
  COMMIT;
END//

delimiter ;


DROP PROCEDURE IF EXISTS create_new_worker;

delimiter //


CREATE PROCEDURE create_new_worker(
  IN new_first_name varchar(32),
  IN new_last_name varchar(32),
  IN new_initials varchar(3),
  IN new_email varchar(64),
  IN new_phone_number varchar(32),
  IN new_salt char(32),
  IN new_hash char(128),
  IN is_administrator tinyint(1))
BEGIN

  DECLARE insert_id INT;
  DECLARE exit handler FOR sqlexception
  BEGIN
    SHOW ERRORS;
    ROLLBACK;
  END;

  START TRANSACTION;
  INSERT INTO workers(
    first_name,
    last_name,
    initials,
    email,
    phone_number,
    salt,
    hash)
  VALUES (
    new_first_name,
    new_last_name,
    new_initials,
    new_email,
    new_phone_number,
    new_salt,
    new_hash);

    -- SET insert_id = SELECT LAST_INSERT_ID();
    INSERT INTO worker_roles (worker_id, role_id) VALUES (3, 3);
COMMIT;
END//

delimiter ;
