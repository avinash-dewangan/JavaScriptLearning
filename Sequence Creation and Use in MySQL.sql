 
use "DBNAME";

SET global 
log_bin_trust_function_creators=1;


 

CREATE TABLE sequence (
name              VARCHAR(50) NOT NULL,
current_value INT NOT NULL,
increment       INT NOT NULL DEFAULT 1,
PRIMARY KEY (name)
) ENGINE=InnoDB;

INSERT INTO sequence VALUES ('APPLICATION_ID',1,1);
 
DELIMITER $
CREATE FUNCTION currval (seq_name VARCHAR(50))
RETURNS INTEGER
CONTAINS SQL
BEGIN
  DECLARE value INTEGER;
  SET value = 0;
  SELECT current_value INTO value
  FROM sequence
  WHERE name = seq_name;

      if value=0
     then 
     Insert into sequence (name,current_value,increment) values(seq_name,1,1);
      set value=1;
    end if;
    
  RETURN value;
END$
DELIMITER ;



DELIMITER $
CREATE FUNCTION nextval (seq_name VARCHAR(50))
RETURNS INTEGER
CONTAINS SQL
BEGIN
   UPDATE sequence
   SET          current_value = current_value + increment
   WHERE name = seq_name;
   RETURN currval(seq_name);
END$
DELIMITER ;

  SELECT currval('APPLICATION_ID');  

select nextval('APPLICATION_ID');

select * from sequence;
 