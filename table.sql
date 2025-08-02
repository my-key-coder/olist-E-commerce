-- Table: public.cutomers

-- DROP TABLE IF EXISTS public.cutomers;

CREATE TABLE IF NOT EXISTS public.cutomers
(
    customer_id character varying COLLATE pg_catalog."default",
    customer_unique_id character varying COLLATE pg_catalog."default",
    customer_zip_code_prefix integer,
    customer_city character varying COLLATE pg_catalog."default",
    customer_state character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cutomers
    OWNER to postgres;



-- Table: public.geolocation_data

-- DROP TABLE IF EXISTS public.geolocation_data;

CREATE TABLE IF NOT EXISTS public.geolocation_data
(
    geolocation_zip_code_prefix integer,
    geolocation_lat numeric(10,4),
    geolocation_lng numeric(10,4),
    geolocation_city character varying COLLATE pg_catalog."default",
    geolocation_state character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.geolocation_data
    OWNER to postgres;



-- Table: public.order_items

-- DROP TABLE IF EXISTS public.order_items;

CREATE TABLE IF NOT EXISTS public.order_items
(
    order_id character varying COLLATE pg_catalog."default",
    order_item_id integer,
    product_id character varying COLLATE pg_catalog."default",
    seller_id character varying COLLATE pg_catalog."default",
    shipping_limit_date timestamp without time zone,
    price numeric(10,2),
    freight_value numeric(10,2)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_items
    OWNER to postgres;




-- Table: public.order_payments

-- DROP TABLE IF EXISTS public.order_payments;

CREATE TABLE IF NOT EXISTS public.order_payments
(
    order_id character varying COLLATE pg_catalog."default",
    payment_sequential integer,
    payment_type character varying COLLATE pg_catalog."default",
    payment_installments integer,
    payment_value numeric(10,2)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_payments
    OWNER to postgres;



-- Table: public.orders

-- DROP TABLE IF EXISTS public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    order_id character varying COLLATE pg_catalog."default" NOT NULL,
    customer_id character varying COLLATE pg_catalog."default",
    order_status character varying COLLATE pg_catalog."default",
    order_purchase_timestamp timestamp without time zone,
    order_approved_at timestamp without time zone,
    order_delivered_carrier_date timestamp without time zone,
    order_delivered_customer_date timestamp without time zone,
    order_estimated_delivery_date timestamp without time zone,
    CONSTRAINT orders_pkey PRIMARY KEY (order_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orders
    OWNER to postgres;






-- Table: public.product_category

-- DROP TABLE IF EXISTS public.product_category;

CREATE TABLE IF NOT EXISTS public.product_category
(
    name character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_category
    OWNER to postgres;



-- Table: public.products

-- DROP TABLE IF EXISTS public.products;

CREATE TABLE IF NOT EXISTS public.products
(
    product_category_name character varying COLLATE pg_catalog."default",
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.products
    OWNER to postgres;





-- Table: public.sellers

-- DROP TABLE IF EXISTS public.sellers;

CREATE TABLE IF NOT EXISTS public.sellers
(
    seller_id character varying COLLATE pg_catalog."default",
    seller_zip_code_prefix integer,
    seller_city character varying COLLATE pg_catalog."default",
    seller_state character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sellers
    OWNER to postgres;


