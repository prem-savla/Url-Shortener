CREATE INDEX idx_urls_user
ON urls(user_id);

CREATE INDEX idx_clicks_url
ON url_clicks(url_id);

CREATE INDEX idx_clicks_url_time
ON url_clicks(url_id, clicked_at);