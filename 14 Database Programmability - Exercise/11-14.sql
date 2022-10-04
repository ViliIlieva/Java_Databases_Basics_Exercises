-- 11. Calculating Interest
delimiter ***
CREATE FUNCTION ufn_calculate_future_value (I DECIMAL(20, 4), R double, T int)
RETURNS DECIMAL(20, 4)
DETERMINISTIC 
	BEGIN
    RETURN I*pow((1+R), T);
END;

CREATE PROCEDURE usp_calculate_future_value_for_account (ac_id INT, interest_rate DECIMAL(19, 4))
BEGIN
SELECT a.id, ah.first_name, ah.last_name, a.balance as 'current_balance' ,
ufn_calculate_future_value(a.balance, interest_rate, 5) as 'balance_in_5_years'
FROM account_holders as ah
left JOIN accounts as a ON ah.id = a.account_holder_id
WHERE a.id = ac_id;
END;
***
CALL usp_calculate_future_value_for_account('1', '0.1');
----------------------------------------------------------------------------------------------------

-- 12. Deposit Money
delimiter ***
CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(20,4))
BEGIN
START TRANSACTION;
if (money_amount <= 0) THEN ROLLBACK;
ELSE UPDATE accounts
set balance = balance + money_amount
WHERE id = account_id;
	COMMIT;
END IF;    
END
***
CALL usp_deposit_money('1', '10');
----------------------------------------------------------------------------------------------------

-- 13. Withdraw Money
delimiter ***
CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(20,4))
BEGIN
START TRANSACTION;
if (money_amount <= 0 or (SELECT balance from accounts WHERE id = account_id) < money_amount) THEN ROLLBACK;
ELSE UPDATE accounts
set balance = balance - money_amount
WHERE id = account_id;
	COMMIT;
END IF;    
END
***
CALL usp_withdraw_money('1', '10');
----------------------------------------------------------------------------------------------------

-- 14. Money Transfer
delimiter ***
CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT , amount DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
		IF (amount <= 0 
				OR (SELECT balance FROM accounts WHERE id = from_account_id) < amount
                OR (SELECT count(id) FROM accounts WHERE id = from_account_id) <> 1
                OR (SELECT count(id) FROM accounts WHERE id = to_account_id) <> 1
                OR from_account_id = to_account_id) THEN
    ROLLBACK;
		ELSE
			UPDATE accounts
            SET balance = balance - amount
            WHERE id = from_account_id;
		
			UPDATE accounts
            SET balance = balance + amount
            WHERE id = to_account_id;
            COMMIT;
        END IF;	
END
***
CALL usp_transfer_money('1','2','10');
----------------------------------------------------------------------------------------------------
