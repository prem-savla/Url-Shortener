┌──────────────────────┐
│        users         │
├──────────────────────┤
│ id (UUID) PK         │
│ email UNIQUE         │
│ name                 │
│ password_hash        │
│ provider             │
│ created_at           │
│ updated_at           │
└──────────┬───────────┘
           │ 1:N
           │
┌──────────▼───────────┐
│         urls         │
├──────────────────────┤
│ id (BIGINT) PK       │  ← KGS ID
│ short_code UNIQUE    │
│ original_url         │
│ user_id FK           │
│ is_active            │
│ expires_at           │
│ created_at           │
│ updated_at           │
└──────────┬───────────┘
           │ 1:N
           │
┌──────────▼───────────┐
│     url_clicks       │
├──────────────────────┤
│ id BIGSERIAL PK      │
│ url_id FK            │
│ ip_address           │
│ user_agent           │
│ browser              │
│ operating_system     │
│ device_type          │
│ referer              │
│ country              │
│ city                 │
│ clicked_at           │
└──────────────────────┘