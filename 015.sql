/*Please add ; after each select statement*/
CREATE PROCEDURE expressionsVerification()
BEGIN
        SELECT 
                id, 
                a, 
                b, 
                operation, 
                c
        FROM 
                expressions
        WHERE 
                c = CASE operation 
                        WHEN '+' THEN (a + b) 
                        WHEN '-' THEN (a - b) 
                        WHEN '*' THEN (a * b) 
                        WHEN '/' THEN (a / b) 
                END;
        
        /* SELECT 
                CASE operation 
                        WHEN '+' THEN (a + b) 
                        WHEN '-' THEN (a - b) 
                        WHEN '*' THEN (a * b) 
                        WHEN '/' THEN (a / b) 
                END AS result 
        FROM 
                expressions;*/
END