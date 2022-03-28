CREATE TABLE user_group_members
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_id BIGINT REFERENCES user_groups(id) ON DELETE CASCADE,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    org_id BIGINT REFERENCES organisations(id) ON DELETE CASCADE,
    UNIQUE(org_id, group_id, user_id)
);
