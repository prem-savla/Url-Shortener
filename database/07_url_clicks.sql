CREATE TABLE url_clicks (

    id BIGSERIAL PRIMARY KEY,

    url_id BIGINT NOT NULL
        REFERENCES urls(id)
        ON DELETE CASCADE,

    ip_address INET,

    user_agent TEXT,

    referer TEXT,

    clicked_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);