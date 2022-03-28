import {
    createPool,
    sql
  } from 'slonik';
  
  const pool = createPool('postgresql://root@localhost:26257/defaultdb?sslmode=disable');
  
  void (async () => {
    const user = 'hey@example.com' as const
    const result = await pool.query(sql`
    SELECT DISTINCT s.shortlink, c.name as collection_name, s.url, s.description, s.tags, s.is_shared_with_web, s.is_variable, s.id AS shortcut_id, c.id AS collection_id FROM shortcuts AS s
    LEFT JOIN collections AS c ON s.collection_id = c.id
    LEFT JOIN user_group_members ON user_group_members.org_id = s.org_id OR user_group_members.org_id = c.org_id
    LEFT JOIN link_permissions ON link_permissions.collection_id = c.id OR link_permissions.shortcut_id = s.id
    WHERE s.org_id = (SELECT id FROM organisations WHERE id=(SELECT org_id FROM organisation_users WHERE user_id=(SELECT id FROM users WHERE email=${user})))
    AND (c.org_id = (SELECT id FROM organisations WHERE id=(SELECT org_id FROM organisation_users WHERE user_id=(SELECT id FROM users WHERE email=${user}))) OR c.org_id IS NULL)
    AND (link_permissions.is_private = false OR link_permissions.is_private IS NULL OR link_permissions.user_id = (SELECT id FROM users WHERE email=${user}) OR link_permissions.group_id = (SELECT group_id FROM user_group_members WHERE user_id=(SELECT id FROM users WHERE email=${user})) OR s.creator = (SELECT id FROM users WHERE email=${user}) OR c.creator = (SELECT id FROM users WHERE email=${user}))
    `);
    console.log('result = ', result)
    await pool.end()
  })()
  
export { pool }
