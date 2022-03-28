CREATE TABLE organisation_users
(
    org_id BIGINT REFERENCES organisations(id),
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    role VARCHAR NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY(org_id, user_id),
    UNIQUE(user_id, org_id, role)
);