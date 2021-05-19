This function calculates the price of an order, including personal discount of the exact client

CREATE OR REPLACE FUNCTION public.price_counting()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN UPDATE orders SET total_price = (product_amount  * (SELECT price FROM products WHERE NEW.product_id = products.product_id) *
                                       (1 - ((SELECT discount FROM clients WHERE NEW.client_id = clients.client_id) *0.01))) WHERE NEW.order_id = orders.order_id;
RETURN NEW; END;
$function$;
