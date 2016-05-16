--1. All users from chicago
    SELECT * FROM syntax_practice
    WHERE city = 'chicago';

--2. All users with usernames that contain 'a'
    SELECT * FROM syntax_practice
    WHERE username like '%a%';

--3. Bonus of 10 to new customers
    UPDATE syntax_practice
    SET account_balance = 10.00
    WHERE account_balance = 0
    AND  transactions_attempted = 0;

--4. All users with >= 9 transactions_attempted
    SELECT * FROM syntax_practice
    WHERE transactions_attempted >= 9;

--5. username and account_balance of top 3 account_balances
    SELECT username, account_balance
    FROM syntax_practice
    ORDER BY account_balance DESC
    LIMIT 3;

--6. username and account_balance of lowest 3 account_balances
    SELECT username, account_balance
    FROM syntax_practice
    ORDER BY account_balance ASC
    LIMIT 3;

--7. All users with account_balance > 100
    SELECT * FROM syntax_practice
    WHERE account_balance > 100;

--8. New record
    INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('quinn', 'minneapolis', 1000, 1000, 100000000);

--9. Deletes losers
    DELETE FROM syntax_practice
    WHERE city = 'miami'
    OR city = 'phoenix'
    AND transactions_completed < 5;
