CREATE TABLE organisations
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    subdomain VARCHAR(60) UNIQUE NOT NULL,
    creator BIGINT REFERENCES users(id) ON DELETE CASCADE,
    allowlisted_domains VARCHAR [],
    workspace_type VARCHAR NOT NULL,
    employee_count INTEGER DEFAULT -1,
    billing_email VARCHAR,
    profile_image_id VARCHAR,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);
