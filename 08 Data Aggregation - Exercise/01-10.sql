1.Records' Count
SELECT count(*) as 'count'
FROM `wizzard_deposits`;

2.Longest Magic Wand
SELECT max(magic_wand_size) as 'longest_magic_wand'
FROM `wizzard_deposits`;

3.Longest Magic Wand Per Deposit Groups
SELECT deposit_group,  max(magic_wand_size) as 'longest_magic_wand'
FROM `wizzard_deposits`
GROUP BY deposit_group
ORDER BY `longest_magic_wand` ASC, deposit_group;

4.Smallest Deposit Group Per Magic Wand Size*
SELECT deposit_group
FROM `wizzard_deposits`
GROUP BY deposit_group
ORDER BY avg(magic_wand_size)
LIMIT 1;

5.Deposits Sum
SELECT `deposit_group`, sum(deposit_amount) as 'total_sum'
from `wizzard_deposits`
GROUP BY deposit_group
ORDER BY `total_sum`;

6.Deposits Sum for Ollivander Family
SELECT `deposit_group`, sum(deposit_amount) as 'total_sum'
from `wizzard_deposits`
WHERE magic_wand_creator = 'Ollivander family'
GROUP BY deposit_group
ORDER BY deposit_group;

7.Deposits Filter
SELECT `deposit_group`, sum(deposit_amount) as 'total_sum'
from `wizzard_deposits`
WHERE magic_wand_creator = 'Ollivander family'
GROUP BY deposit_group
HAVING `total_sum` < 150000
ORDER BY `total_sum` DESC;

8.Deposit Charge
SELECT `deposit_group`, magic_wand_creator, min(deposit_charge) as 'min_deposit_charge'
from `wizzard_deposits`
GROUP BY deposit_group, magic_wand_creator
ORDER BY `magic_wand_creator` ASC, deposit_group;

9.Age Groups

10.First Letter
