insert into xt.acttype (
  acttype_nsname,
  acttype_tblname,
  acttype_code,
  acttype_col_uuid,
  acttype_col_editor_key,
  acttype_col_type,
  acttype_col_name,
  acttype_col_active,
  acttype_col_status,
  acttype_col_priority_id, 
  acttype_col_description,
  acttype_col_owner_username,
  acttype_col_assigned_username,
  acttype_col_start_date,
  acttype_col_due_date,
  acttype_col_assigned_date,
  acttype_col_completed_Date,
  acttype_col_parent_uuid,
  acttype_join
) values (
  'public',
  'pohead',
  'PurchaseOrder',
  'pohead.obj_uuid',
  'pohead_number',
  'acttype_code',
  'pohead_number',
  'pohead_status != ''C''',
  'pohead_status',
  'null',
  'vend_name',
  'pohead_agent_username',
  'pohead_agent_username',
  'pohead_orderdate',
  'xt.po_schedule_date(pohead)',
  'pohead_released',
  'null',
  'null',
  'join vendinfo on pohead_vend_id=vend_id'
);

insert into xt.acttype (
  acttype_nsname,
  acttype_tblname,
  acttype_code,
  acttype_col_uuid,
  acttype_col_editor_key,
  acttype_col_type,
  acttype_col_name,
  acttype_col_active,
  acttype_col_status,
  acttype_col_priority_id, 
  acttype_col_description,
  acttype_col_owner_username,
  acttype_col_assigned_username,
  acttype_col_start_date,
  acttype_col_due_date,
  acttype_col_assigned_date,
  acttype_col_completed_Date,
  acttype_col_parent_uuid,
  acttype_join
) values (
  'xt',
  'powf',
  'PurchaseOrderWorkflow',
  'powf.obj_uuid',
  'pohead_number',
  'acttype_code',
  'wf_name',
  'wf_status not in (''C'',''D'')',
  'wf_status',
  'wf_priority_id',
  'wf_description',
  'wf_owner_username',
  'wf_assigned_username',
  'wf_start_date',
  'wf_due_date',
  'wf_assigned_date',
  'wf_completed_date',
  'pohead.obj_uuid::uuid',
  'join pohead on pohead.obj_uuid=wf_parent_uuid'
);
