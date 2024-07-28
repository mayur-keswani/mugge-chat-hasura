SET check_function_bodies = false;
INSERT INTO public.roles (role_id, description) VALUES ('super_admin', 'Super User have access to all rooms and can send images and messages to all rooms and terminate any user');
INSERT INTO public.roles (role_id, description) VALUES ('user', 'Normal User which have access to rooms which he is the member');
