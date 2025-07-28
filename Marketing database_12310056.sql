create database Marketing;

use Marketing;

create table customer (
cust_id varchar(20) primary key,
name varchar(50),
address varchar(50),
city varchar(50),
credits decimal(12,2),
mobile varchar(20)
);

INSERT INTO customer (Cust_ID, Name, Address, City, Credits, Mobile) VALUES
('C001', 'Ripon', 'Lalbag', 'Rangpur', 20000.00, '1738552051'),
('C002', 'Babul', 'Shapla', 'Rangpur', 1200.00, '1521771944'),
('C003', 'Rafi', 'Talaimari', 'Rajshahi', 23000.00, '1828679600'),
('C004', 'Fahim', 'Saidpur', 'Nilphamari', 14000.00, '1580302073'),
('C005', 'Shamsu', 'Gomastapur', 'Chapainawaganj', 35000.00, '1748342181'),
('C006', 'Sayem', 'Sardullahpur', 'Gaibandha', 13000.00, '1307389900'),
('C007', 'Shakil', 'Dariapur', 'Gaibandha', 34000.00, '1304593498'),
('C008', 'Sourav', 'Kamarkhanda', 'Sirajganj', 14000.00, '1988735372'),
('C009', 'Saif', 'Meherpur Sadar', 'Meherpur', 45000.00, '1743523392'),
('C010', 'Soriful', 'Bodagonj', 'Panchagrah', 50000.00, '1762536232'),
('C011', 'Rotan', 'Saidpur', 'Nilphamari', 70000.00, '1334444432'),
('C012', 'Shafin', 'Jesshore Sadar', 'Jesshore', 15000.00, '1835482382'),
('C013', 'Shafi', 'Adda', 'Chapainawabganj', 23000.00, '1835362432'),
('C014', 'Alif', 'Gulshan', 'Dhaka', 25000.00, '1983723527'),
('C015', 'Naim', 'Keraniganj', 'Dhaka', 19000.00, '1863725392'),
('C016', 'Sumi', 'Jaintapur', 'Sylhet', 18000.00, '1953624283'),
('C017', 'Arif', 'Shibganj', 'Bogura', 16000.00, '1823632892'),
('C018', 'Nila', 'Dimla', 'Dhaka', 15000.00, '1974539362'),
('C019', 'Joya', 'Babuganj', 'Barishal', 18000.00, '1725347237'),
('C020', 'Emon', 'Gomastapur', 'Naogoan', 18000.00, '1936354365'),
('C021', 'Tani', 'Pirganj', 'Thakurgaon', 20000.00, '1783064537'),
('C022', 'Liza', 'Feni Sadar', 'Feni', 3000.00, '1453635392'),
('C023', 'Kona', 'Muktagacha', 'Mymansingh', 23000.00, '1836364533'),
('C024', 'Mitu', 'Netrokona Sadar', 'Netrakona', 25000.00, '1843654365'),
('C025', 'Tito', 'Dumki', 'Patuakhali', 24000.00, '1453745727'),
('C026', 'Rupa', 'Joldhaka', 'Niplhamari', 4000.00, '1682462734'),
('C027', 'Raju', 'Lalbag', 'Rangpur', 2900.00, '1534265725'),
('C028', 'Lamia', 'Shapla', 'Rangpur', 600.00, '1736243562'),
('C029', 'Rahi', 'Kurigram Sadar', 'Kurigram', 34000.00, '1743735462'),
('C030', 'Zia', 'Bogura Sadar', 'Bogura', 35000.00, '1937354763'),
('C031', 'Khaleda', 'Noakhali Sadar', 'Noakhali', 54000.00, '1537253522'),
('C032', 'Hasina', 'Dhaka Sadar', 'Dhaka', 78000.00, '1735463453'),
('C033', 'Kader', 'Thakurgaon Sadar', 'Thakurgaon', 30000.00, '1736343234'),
('C034', 'Palak', 'Natore Sadar', 'Natore', 6000.00, '1936364322'),
('C035', 'Joy', 'Araihazar', 'Narayanganj', 34000.00, '1735232345'),
('C036', 'Reza', 'Kutubdia', 'CoxBazar', 45000.00, '1634253426'),
('C037', 'Nobi', 'Lama', 'Gazipur', 34000.00, '1636237452'),
('C038', 'Nipu', 'Kaliganj', 'Jhenaidah', 36000.00, '1846376522'),
('C039', 'Kafii', 'Hatibandha', 'Lalmonirhat', 39000.00, '1303837432'),
('C040', 'Abir', 'Pirganj', 'Rangpur', 78000.00, '1535243724'),
('C041', 'Moon', 'Sherpur', 'Bogura', 45000.00, '1963625444'),
('C042', 'Joty', 'Maymansingh Sadar', 'Maymansingh', 67000.00, '1936245242'),
('C043', 'Fahmida', 'Kawkhali', 'Kustia', 35000.00, '1736253222'),
('C044', 'Jinat', 'Mirpur', 'Dhaka', 78000.00, '1735253423'),
('C045', 'Sumaiya', 'Dhaka', 'Dhaka', 83000.00, '1635375433'),
('C046', 'Rimi', 'Dinajpur Sadar', 'Dinajpur', 45000.00, '1936236353'),
('C047', 'Sayab', 'Ullapara', 'Sirajganj', 67000.00, '1534252211'),
('C048', 'Zillu', 'Kamarkhanda', 'Sirajganj', 45000.00, '1432273522'),
('C049', 'Nahid', 'Nachole', 'Chapainawabganj', 34000.00, '1832673526'),
('C050', 'Nawshin', 'Ullapara', 'Siranjganj', 37000.00, '1634272638');

select * from customer;

create table product (
Product_ID varchar(20) primary key,
Name varchar(20),
Company varchar(20),
rate decimal(8,2)
);

insert into	product (Product_ID,name,company,rate) values
('P001', 'Lux', 'UNILEVER', 50.00),
('P002', 'Fresh Cola', 'Fresh', 45.00),
('P003', 'Milk Vita', 'Milk Vita', 20.00),
('P004', 'Local Milk Pawder', 'Pran', 34.00),
('P005', 'Cadbury', 'Cadbury', 45.00),
('P006', 'Teer Oil', 'City Group', 67.00),
('P007', 'Soyabean', 'Fresh', 89.00),
('P008', 'Radhuni', 'Meghna', 56.00),
('P009', 'Salt', 'ACI', 45.00),
('P010', 'Maggi Noodles', 'Nestle', 34.00),
('P011', 'Mr. Noodles', 'Pran Food', 32.00),
('P012', 'WHEEL', 'UNILEVER', 160.00),
('P013', 'Savlon', 'ACI', 45.00),
('P014', 'Toilet Cleaner', 'Square', 187.00),
('P015', 'Baby Lotion', 'Square', 123.00),
('P016', 'Symphony', 'Symphony', 400.00),
('P017', 'Walton', 'Walton', 500.00),
('P018', 'Washing Machine', 'Singer', 350.00),
('P019', 'Walton TV', 'Walton', 250.00),
('P020', 'Desktop', 'Sony', 350.00),
('P021', 'Shampo', 'Square', 45.00),
('P022', 'Super Salt', 'Molla', 56.00),
('P023', 'DETOL', 'ACI', 150.00),
('P024', 'Meril', 'Square', 34.00),
('P025', 'Tibet', 'Kohinoor', 45.00),
('P026', 'Keya', 'Keya Cosmetic', 78.00),
('P027', 'Sandelina', 'Kohinoor', 46.00),
('P028', 'Pusti', 'T.K Group', 23.00),
('P029', 'Family', 'T.K Group', 56.00),
('P030', 'Munchee', 'Ceylon LTD', 87.00),
('P031', 'Bombay Sweets', 'Bombay', 20.00),
('P032', 'Olympic', 'Olympic', 10.00),
('P033', 'Mama', 'President Food', 45.00),
('P034', 'AERSOL', 'ACI', 60.00),
('P035', 'Sajeeb', 'Sajeeb Group', 15.00),
('P036', 'Ifad', 'Ifad LDT', 36.00),
('P037', 'Doodles', 'New Zealand Group', 67.00),
('P038', 'Confidence', 'Confidence LTD', 59.00),
('P039', 'Cool', 'Square', 34.00),
('P040', 'Cute', 'Kohinoor', 34.00),
('P041', 'Apex Footware', 'Apex', 56.00),
('P042', 'Hometex', 'HomeTex LTD', 46.00),
('P043', 'Haiko', 'Electro Mart', 78.00),
('P044', 'Gree AC', 'Gree', 560.00),
('P045', 'AXE', 'AXE', 350.00),
('P046', 'LG TV', 'LG LTD', 450.00),
('P047', 'Mojo', 'Akij', 40.00),
('P048', 'Pran_Up', 'Pran', 45.00),
('P049', 'Sprite', 'Akij', 30.00),
('P050', 'Royal Tiger', 'Globe', 67.00);

select * from product;

CREATE TABLE `order`(
    Order_id VARCHAR(20) PRIMARY KEY,
    date DATE,
    cust_id VARCHAR(20),
    product_id VARCHAR(20),
    Quantity INT,
    paid ENUM("yes","no"),
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO `Order` (Order_Id, Date, Cust_ID, Product_ID, Quantity, Paid) VALUES
('OR001', '2025-06-19', 'C001', 'P001', 20, 'Yes'),
('OR002', '2025-06-20', 'C002', 'P002', 20, 'Yes'),
('OR003', '2025-06-21', 'C003', 'P003', 5, 'No'),
('OR004', '2025-06-22', 'C004', 'P004', 30, 'Yes'),
('OR005', '2025-06-22', 'C005', 'P005', 50, 'Yes'),
('OR006', '2025-06-25', 'C006', 'P006', 60, 'No'),
('OR007', '2025-06-25', 'C007', 'P007', 70, 'Yes'),
('OR008', '2025-06-25', 'C008', 'P008', 80, 'Yes'),
('OR009', '2025-06-25', 'C009', 'P009', 50, 'No'),
('OR010', '2025-06-25', 'C010', 'P020', 70, 'No'),
('OR011', '2025-06-25', 'C014', 'P013', 40, 'Yes'),
('OR012', '2025-06-25', 'C016', 'P015', 20, 'No'),
('OR013', '2025-06-25', 'C014', 'P027', 40, 'Yes'),
('OR014', '2025-06-26', 'C028', 'P038', 40, 'No'),
('OR015', '2025-06-26', 'C018', 'P018', 30, 'Yes'),
('OR016', '2025-06-26', 'C017', 'P017', 50, 'No'),
('OR018', '2025-06-26', 'C029', 'P018', 30, 'Yes'),
('OR019', '2025-06-26', 'C019', 'P014', 60, 'No'),
('OR020', '2025-06-26', 'C023', 'P020', 30, 'Yes'),
('OR021', '2025-06-26', 'C035', 'P019', 40, 'No'),
('OR022', '2025-06-26', 'C024', 'P021', 30, 'Yes'),
('OR023', '2025-06-26', 'C038', 'P037', 30, 'No'),
('OR024', '2025-06-26', 'C048', 'P022', 30, 'Yes'),
('OR025', '2025-06-27', 'C032', 'P004', 40, 'Yes'),
('OR026', '2025-06-27', 'C019', 'P019', 30, 'No'),
('OR027', '2025-06-27', 'C012', 'P002', 40, 'Yes'),
('OR028', '2025-06-27', 'C027', 'P025', 30, 'Yes'),
('OR029', '2025-06-27', 'C015', 'P011', 40, 'No'),
('OR030', '2025-06-26', 'C003', 'P003', 20, 'Yes'),
('OR031', '2025-06-27', 'C006', 'P016', 30, 'No'),
('OR032', '2025-06-27', 'C032', 'P025', 20, 'Yes'),
('OR033', '2025-06-27', 'C030', 'P032', 20, 'No'),
('OR034', '2025-06-27', 'C017', 'P029', 30, 'Yes'),
('OR035', '2025-06-27', 'C020', 'P021', 20, 'No'),
('OR036', '2025-06-27', 'C026', 'P030', 10, 'Yes'),
('OR037', '2025-06-27', 'C025', 'P023', 40, 'Yes'),
('OR038', '2025-06-28', 'C033', 'P045', 10, 'No'),
('OR039', '2025-06-28', 'C027', 'P024', 30, 'No'),
('OR040', '2025-06-28', 'C040', 'P020', 20, 'Yes'),
('OR041', '2025-06-28', 'C015', 'P010', 80, 'Yes'),
('OR042', '2025-06-28', 'C010', 'P029', 30, 'No'),
('OR043', '2025-06-28', 'C020', 'P023', 30, 'Yes'),
('OR044', '2025-06-28', 'C019', 'P029', 20, 'Yes'),
('OR045', '2025-06-28', 'C025', 'P032', 40, 'No'),
('OR046', '2025-06-28', 'C019', 'P023', 10, 'Yes'),
('OR047', '2025-06-28', 'C045', 'P029', 40, 'No'),
('OR048', '2025-06-28', 'C023', 'P024', 10, 'Yes'),
('OR049', '2025-06-28', 'C020', 'P031', 30, 'Yes'),
('OR050', '2025-06-28', 'C033', 'P018', 30, 'Yes');




DROP TABLE customer;
DROP TABLE product;
DROP TABLE `order`;
truncate table cust;
select * from customer;
select * from product;
select * from `order`;



select *from customer 
where city = "dhaka";


Select * from customer
where credits >10000;

select * from customer
where city = "rangpur" and credits between 1000 and 20000;

select cust_id,name,city,credits from customer
where city = "rangpur" and credits >1000 and credits <20000;

select * from customer
order by name asc
limit 5;


update customer
set credits = 12000,name = "tasjid"
where cust_id ="C040";


update customer
set credits = 12000,name = "tasjid"
where cust_id in (C040,C041)

