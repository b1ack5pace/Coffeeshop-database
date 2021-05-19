##This function decreases the amount in the warehouse for the exact product written in the record

CREATE OR REPLACE FUNCTION public.taking_from_warehouse()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN UPDATE warehouse SET amount = amount - NEW.product_amount WHERE product_id = NEW.product_id;
RETURN NULL; END;
$function$
