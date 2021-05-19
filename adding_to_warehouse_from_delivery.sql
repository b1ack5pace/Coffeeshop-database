##This function adds the exact amount to the exact products, gained from the deliveries

CREATE OR REPLACE FUNCTION public.adding_to_warehouse_from_delivery()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN UPDATE warehouse SET amount = amount + NEW.amount WHERE product_id = NEW.product_id;
RETURN NULL; END;
$function$
