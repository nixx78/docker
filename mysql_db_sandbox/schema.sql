CREATE TABLE IF NOT EXISTS customer(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL,
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS account(
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id int,
    account_name VARCHAR(20) NOT NULL,
    account_number VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE IF NOT EXISTS transaction(
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id int,
	amount numeric(10,3),
    date_time timestamp,
    currency char(3),    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES account(id)
);

insert into customer (name, surname, date_of_birth) values ('name1', 'surname1', '1978-12-06');
insert into customer (name, surname, date_of_birth) values ('name2', 'surname2', '1980-05-15');

insert into account (customer_id, account_name, account_number) values(1, 'SavindAccount', '111-111-111');
insert into account (customer_id, account_name, account_number) values(1, 'PrimaryAccount', '222-222-222');
insert into account (customer_id, account_name, account_number) values(2, 'Loan', '000-111-1111');

#Timestamp will be saved in UTC timezone
insert into transaction(account_id, amount, date_time, currency) values(1, 10.39, '2023-04-15 11:04:11', 'EUR');
insert into transaction(account_id, amount, date_time, currency) values(1, 2.10, '2023-04-15 12:00:00', 'USD');
insert into transaction(account_id, amount, date_time, currency) values(1, 100.39, '2023-04-01 14:04:11', 'EUR');

insert into transaction(account_id, amount, date_time, currency) values(2, 10.39, '2023-01-01 11:04:11', 'EUR');
insert into transaction(account_id, amount, date_time, currency) values(2, 2.10, '2023-01-02 12:00:00', 'USD');
insert into transaction(account_id, amount, date_time, currency) values(2, 20.15, '2023-01-03 14:04:11', 'EUR');

select * from transaction;