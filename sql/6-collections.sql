CREATE TABLE collections
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    creator BIGINT REFERENCES users(id) ON DELETE CASCADE,
    org_id BIGINT REFERENCES organisations(id) ON DELETE CASCADE,
    is_deleted BOOLEAN DEFAULT false,
    is_persistent BOOLEAN,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    UNIQUE(org_id, name, creator)
);
