SELECT * from budget
SELECT * from expenses
SELECT * from budget_expense

INSERT INTO expenses (expense_name, expense_amt, budget_id) VALUES
('Groceries', 20, 1),
('Gas', 30, 1),
('Clothes', 40, 2),
('Books', 20, 1),
('Water', 5, 2)

DROP TABLE budget_expense

DELETE FROM expenses
WHERE expense_id = 1

ALTER TABLE expenses 
	ADD budget_id INTEGER

INSERT INTO budget_expense (budget_id)

SELECT SUM(expense_amt) FROM expenses
WHERE budget_id = 1