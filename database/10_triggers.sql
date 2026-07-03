CREATE TRIGGER users_updated_at_trigger
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER urls_updated_at_trigger
BEFORE UPDATE ON urls
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();