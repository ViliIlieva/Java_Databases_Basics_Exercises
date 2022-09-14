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

5.Deposits Sum

6.Deposits Sum for Ollivander Family

7.Deposits Filter

8.Deposit Charge

9.Age Groups

10.First Letter
