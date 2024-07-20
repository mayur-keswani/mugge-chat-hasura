CREATE OR REPLACE FUNCTION generate_random_string(length INTEGER) RETURNS TEXT AS $$
DECLARE
    chars TEXT := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    result TEXT := '';
    i INTEGER := 0;
BEGIN
    IF length < 1 THEN
        RAISE EXCEPTION 'Length must be greater than 0';
    END IF;
    FOR i IN 1..length LOOP
        result := result || substr(chars, floor(random() * length(chars) + 1), 1);
    END LOOP;
    RETURN result;
END;
$$ LANGUAGE plpgsql;
