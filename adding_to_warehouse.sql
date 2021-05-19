##This function adds new record to warehouse whenever it is created in products

CREATE OR REPLACE FUNCTION public.adding_to_warehouse()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN INSERT INTO warehouse (product_id) VALUES (NEW.product_id);
RETURN NULL; END;
$function$
