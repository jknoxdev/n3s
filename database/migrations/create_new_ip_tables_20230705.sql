CREATE TABLE public.ip_list (
	ip_list_id serial NOT NULL,
	CONSTRAINT ip_list_pk PRIMARY KEY (ip_list_id)
);

ALTER TABLE public.ip ADD ip_list_id int NULL;
ALTER TABLE public.ip ADD CONSTRAINT ip_fk FOREIGN KEY (ip_list_id) REFERENCES public.ip_list(ip_list_id);


