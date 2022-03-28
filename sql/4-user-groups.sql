CREATE TABLE user_groups
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    org_id BIGINT REFERENCES organisations(id) ON DELETE CASCADE,
    name VARCHAR UNIQUE NOT NULL,
    description TEXT,
    slug VARCHAR(35) NOT NULL,
    creator BIGINT REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    UNIQUE (org_id, slug)
);
