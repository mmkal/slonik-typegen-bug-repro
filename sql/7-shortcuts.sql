CREATE TABLE shortcuts
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    shortlink VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    description TEXT,
    tags VARCHAR [],
    creator BIGINT REFERENCES users(id) ON DELETE CASCADE,
    org_id BIGINT REFERENCES organisations(id) ON DELETE CASCADE,
    collection_id BIGINT REFERENCES collections(id) ON DELETE CASCADE,
    is_shared_with_web BOOLEAN,
    is_variable BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    version INTEGER NOT NULL DEFAULT 0,
    UNIQUE(org_id, shortlink)
);
