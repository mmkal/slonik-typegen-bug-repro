CREATE TABLE link_permissions
(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    shortcut_id BIGINT REFERENCES shortcuts(id) ON DELETE CASCADE,
    collection_id BIGINT REFERENCES collections(id) ON DELETE CASCADE,
    org_id BIGINT NOT NULL REFERENCES organisations(id) ON DELETE CASCADE,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    group_id BIGINT REFERENCES user_groups(id) ON DELETE CASCADE,
    is_private BOOLEAN NOT NULL DEFAULT false
);