CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT pk_Customer PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
    );
   

CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price>0)
    );


CREATE TABLE Orders(
    CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id) 
    CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
    Quantity NUMBER ,
    Total_amount NUMBER
    );


ALTER TABLE Product ADD CONSTRAINT Category VARCHAR2(20) ;
ALTER TABLE Orders ADD CONSTRAINT OrderDate DEFAULT SYSDATE();