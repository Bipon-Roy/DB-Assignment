#### 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram. ###

##### Answer: 
- A product can have one category. Which is indicated by the foreign key "category_id" in the "Product" table. A foreign key is a column in a table that references the primary key of another table. In this case, "category_id" indicates the "id" primary key of the "Product_Category" table.

- A product category can have many products because there is no foreign key indicating the "Product" table in the "Product_Category" table.
---



#### 2. How could you ensure that each product in the "Product" table has a valid category assigned to it? ###

- I can enforce a foreign key constraint on the "category_id" column in the "Product" table. This constraint would reference the primary key ("id") of the "Product_Category" table. Which will prevent adding products with invalid category IDs.

- During product creation or update, I can implement validation logic in my application to check if the entered category ID exists in the "Product_Category" table. This can be done with a database query before saving the product data.

- When adding or editing a product in the application, I can display a drop-down menu with valid categories from the "Product_Category" table, which would be predefined. Which prevents users from entering invalid category IDs.
---