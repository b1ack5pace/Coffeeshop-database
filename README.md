# Coffeeshop-database
This simple database project shows how a coffee shop works from delivery to sale of goods, including employee and customer data.

Used PostgreSQL.


Enjoy:)

                        Список отношений
| Схема  |          Имя           |        Тип         | Владелец |
|--------|------------------------|--------------------|----------|
| public | client_id_updater      | последовательность | postgres |
| public | clients                | таблица            | postgres |
| public | deliveries             | таблица            | postgres |
| public | employee_id_tt_updater | последовательность | postgres |
| public | employee_id_updater    | последовательность | postgres |
| public | employee_tt            | таблица            | postgres |
| public | employees              | таблица            | postgres |
| public | order_id_updater       | последовательность | postgres |
| public | orders                 | таблица            | postgres |
| public | product_id_updater     | последовательность | postgres |
| public | products               | таблица            | postgres |
| public | suppliers              | таблица            | postgres |
| public | supplier_id_updater    | последовательность | postgres |
| public | warehouse              | таблица            | postgres |


This is how it works:
1 - Fill table products -> every new product automatically adds to warehouse with amount = 0

2 - Fill table suppliers

3 - Fill table deliveries -> every proudct from delivery adds to warehouse with exact amount

4 - Fill employees

5 - Fill employee_tt

6 - Fill clients

7 - Add orders one by one (1 product with amount > 0 per order). The price calculates automatically, including personal clients' discount.

Order can be added if there is a product on a warehouse, otherwise the error will occur.
