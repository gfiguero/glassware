# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_17_163851) do
  create_schema "cache"
  create_schema "location"
  create_schema "topology"

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "postgis_topology"
  enable_extension "unaccent"

  create_table "admin_groups", id: :serial, force: :cascade do |t|
    t.integer "group_id"
    t.integer "adminable_id"
    t.string "adminable_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["adminable_id", "adminable_type"], name: "by_adminable"
    t.index ["group_id"], name: "index_admin_groups_on_group_id"
  end

  create_table "admin_roles", id: :serial, force: :cascade do |t|
    t.integer "role_id"
    t.integer "authorizable_id"
    t.string "authorizable_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["authorizable_id", "authorizable_type"], name: "by_authorizable"
    t.index ["role_id"], name: "index_admin_roles_on_role_id"
  end

  create_table "aim_access_permissions_facts", id: :serial, force: :cascade do |t|
    t.integer "category_id"
    t.string "category_type"
    t.integer "interface_id"
    t.string "interface_type"
    t.integer "group_id"
    t.integer "map_id"
    t.boolean "only_read", default: false
    t.boolean "only_create", default: false
    t.boolean "super_user", default: false
    t.boolean "administrator", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["category_type", "category_id"], name: "category_aim_access_permissions_idx"
    t.index ["interface_type", "interface_id"], name: "interface_aim_access_permissions_idx"
  end

  create_table "aim_action_executions", id: :serial, force: :cascade do |t|
    t.datetime "started_at", precision: nil
    t.datetime "ended_at", precision: nil
    t.integer "interest_point_id"
    t.integer "location_id"
    t.integer "procedure_execution_id"
    t.integer "action_id"
    t.hstore "value"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["action_id"], name: "index_aim_action_executions_on_action_id"
    t.index ["procedure_execution_id"], name: "index_aim_action_executions_on_procedure_execution_id"
  end

  create_table "aim_action_subjects", id: :serial, force: :cascade do |t|
    t.integer "action_id"
    t.integer "interest_point_id"
    t.integer "location_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["action_id"], name: "index_aim_action_subjects_on_action_id"
  end

  create_table "aim_actions", id: :serial, force: :cascade do |t|
    t.integer "procedure_id"
    t.integer "sequence"
    t.string "usage"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["procedure_id"], name: "index_aim_actions_on_procedure_id"
  end

  create_table "aim_active_tracking_action_tags", id: :serial, force: :cascade do |t|
    t.integer "order_interface_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_active_tracking_action_tags_orders", id: :serial, force: :cascade do |t|
    t.integer "order_id"
    t.integer "action_tag_id"
  end

  create_table "aim_active_tracking_agent_zones", id: :serial, force: :cascade do |t|
    t.integer "agent_id"
    t.integer "zone_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["agent_id"], name: "index_aim_active_tracking_agent_zones_on_agent_id"
    t.index ["zone_id"], name: "index_aim_active_tracking_agent_zones_on_zone_id"
  end

  create_table "aim_active_tracking_line_items", id: :serial, force: :cascade do |t|
    t.integer "order_id"
    t.string "external_id"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "price"
    t.float "quantity"
    t.string "unit", default: "units"
    t.index ["order_id"], name: "index_aim_active_tracking_line_items_on_order_id"
  end

  create_table "aim_active_tracking_order_action_tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_active_tracking_order_agents", id: :serial, force: :cascade do |t|
    t.integer "order_id"
    t.integer "agent_id"
    t.text "wkt"
    t.index ["agent_id"], name: "index_aim_active_tracking_order_agents_on_agent_id"
    t.index ["order_id"], name: "index_aim_active_tracking_order_agents_on_order_id"
  end

  create_table "aim_active_tracking_order_interface_zones", id: :serial, force: :cascade do |t|
    t.integer "order_interface_id"
    t.integer "zone_id"
    t.string "issues_status", default: "low_amount"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "issues_notification_status", default: "low_amount"
    t.index ["order_interface_id"], name: "index_aim_active_tracking_order_intrf_zones_on_order_intrf_id"
    t.index ["zone_id"], name: "index_aim_active_tracking_order_interface_zones_on_zone_id"
  end

  create_table "aim_active_tracking_order_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.boolean "is_default", default: false
    t.integer "deadline_seconds"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "unassigned_order_warning_seconds"
    t.string "notification_kind"
    t.datetime "deleted_at", precision: nil
    t.integer "issues_amount_threshold"
    t.integer "issues_amount_notification_threshold"
    t.boolean "allow_multiple_agents", default: false
    t.boolean "allow_service_items", default: false
    t.integer "order_type", default: 0
    t.index ["is_default"], name: "index_aim_active_tracking_order_interfaces_on_is_default"
  end

  create_table "aim_active_tracking_order_rejected_agents", id: :serial, force: :cascade do |t|
    t.integer "order_id"
    t.integer "agent_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "message"
    t.index ["agent_id"], name: "index_aim_active_tracking_order_rejected_agents_on_agent_id"
    t.index ["order_id"], name: "index_aim_active_tracking_order_rejected_agents_on_order_id"
  end

  create_table "aim_active_tracking_order_state_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.boolean "comments"
    t.boolean "pictures"
    t.boolean "documents"
    t.string "icon_name"
    t.boolean "initial"
    t.boolean "final"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "happy_path"
    t.integer "order_interface_id"
    t.boolean "allow_service_item_state_update", default: false
    t.boolean "stop_deadline_timer", default: false
    t.boolean "ghost_state", default: false
    t.integer "position", default: 0
    t.integer "signature", default: 0
    t.index ["final"], name: "index_aim_active_tracking_order_state_interfaces_on_final"
    t.index ["initial"], name: "index_aim_active_tracking_order_state_interfaces_on_initial"
    t.index ["order"], name: "index_aim_active_tracking_order_state_interfaces_on_order"
    t.index ["order_interface_id"], name: "index_aim_active_tracking_order_state_interfs_on_order_inter_id"
  end

  create_table "aim_active_tracking_order_states", id: :serial, force: :cascade do |t|
    t.integer "order_state_interface_id"
    t.integer "order_id"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "is_current_state"
    t.float "lat"
    t.float "lng"
    t.integer "acuracy"
    t.index ["order_id"], name: "index_aim_active_tracking_order_states_on_order_id"
    t.index ["order_state_interface_id"], name: "index_aim_active_tracking_order_states_on_order_state_interf_id"
    t.index ["user_id"], name: "index_aim_active_tracking_order_states_on_user_id"
  end

  create_table "aim_active_tracking_orders", id: :serial, force: :cascade do |t|
    t.string "external_id"
    t.string "tracking_id"
    t.string "pickup_address"
    t.string "contact_name"
    t.string "contact_address"
    t.string "contact_phone"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "zone_id"
    t.integer "current_order_state_id"
    t.datetime "queued_at", precision: nil
    t.string "contact_email"
    t.string "pickup_name"
    t.string "pickup_phone"
    t.string "pickup_email"
    t.datetime "finished_at", precision: nil
    t.integer "order_interface_id"
    t.geometry "pickup_location", limit: {:srid=>0, :type=>"st_point"}
    t.geometry "contact_location", limit: {:srid=>0, :type=>"st_point"}
    t.boolean "has_issues", default: false
    t.string "order_state_names", default: [], array: true
    t.string "current_order_state_name"
    t.boolean "has_assigned_agents", default: false
    t.string "slug"
    t.string "contact_address_zone"
    t.datetime "timer_stopped_at", precision: nil
    t.integer "current_ghost_state_id"
    t.integer "work_time_id"
    t.datetime "deadline_date", precision: nil
    t.integer "created_from", default: 0
    t.integer "region_id"
    t.index ["contact_name"], name: "index_aim_active_tracking_orders_on_contact_name"
    t.index ["current_order_state_id"], name: "index_aim_active_tracking_orders_on_current_order_state_id"
    t.index ["current_order_state_name"], name: "index_aim_active_tracking_orders_on_current_order_state_name"
    t.index ["external_id"], name: "index_aim_active_tracking_orders_on_external_id"
    t.index ["finished_at"], name: "index_aim_active_tracking_orders_on_finished_at"
    t.index ["has_assigned_agents"], name: "index_aim_active_tracking_orders_on_has_assigned_agents"
    t.index ["order_interface_id"], name: "index_aim_active_tracking_orders_on_order_interface_id"
    t.index ["queued_at"], name: "index_aim_active_tracking_orders_on_queued_at"
    t.index ["slug"], name: "index_aim_active_tracking_orders_on_slug", unique: true
    t.index ["zone_id"], name: "index_aim_active_tracking_orders_on_zone_id"
  end

  create_table "aim_active_tracking_previous_order_state_interfaces", id: :serial, force: :cascade do |t|
    t.integer "previous_order_state_interface_id"
    t.integer "order_state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["order_state_interface_id"], name: "index_aim_active_tracking_prev_ord_st_intfs_on_ord_st_intf_id"
    t.index ["previous_order_state_interface_id"], name: "index_aim_active_trackng_prv_ord_st_intfs_on_prv_ord_st_intf_id"
  end

  create_table "aim_active_tracking_service_items", id: :serial, force: :cascade do |t|
    t.integer "order_id"
    t.string "name"
    t.string "external_id"
    t.integer "service_state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["order_id"], name: "index_aim_active_tracking_service_items_on_order_id"
    t.index ["service_state_interface_id"], name: "index_aim_active_tracking_service_items_on_service_stt_intrf_id"
  end

  create_table "aim_active_tracking_service_state_interfaces", id: :serial, force: :cascade do |t|
    t.integer "order_interface_id"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["order_interface_id"], name: "index_aim_active_tracking_service_state_intrfs_on_ordr_intrf_id"
  end

  create_table "aim_active_tracking_work_times", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "total_hours"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_active_tracking_workdays", id: :serial, force: :cascade do |t|
    t.integer "work_time_id"
    t.integer "day_week"
    t.integer "hours"
    t.string "start_time"
    t.string "end_time"
    t.string "duration_lunch"
    t.boolean "enabled", default: true
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["work_time_id"], name: "index_aim_active_tracking_workdays_on_work_time_id"
  end

  create_table "aim_active_tracking_zones", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.geometry "shapes", limit: {:srid=>0, :type=>"multi_polygon"}
    t.datetime "deleted_at", precision: nil
    t.string "external_api_id"
    t.string "address"
    t.string "alias"
  end

  create_table "aim_active_tracking_zones_users", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "zone_id"
    t.index ["user_id"], name: "index_aim_active_tracking_zones_users_on_user_id"
    t.index ["zone_id"], name: "index_aim_active_tracking_zones_users_on_zone_id"
  end

  create_table "aim_adjustments", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "date"
    t.integer "reason"
    t.decimal "amount"
    t.integer "currency_id"
    t.decimal "percentage"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_adjustments_on_currency_id"
    t.index ["store_id"], name: "index_aim_adjustments_on_store_id"
  end

  create_table "aim_administrative_calendar_subscriptions", id: :serial, force: :cascade do |t|
    t.integer "calendar_id"
    t.integer "administrative_calendarable_id"
    t.string "administrative_calendarable_type"
  end

  create_table "aim_alert_responses", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "user_alert_state_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["user_alert_state_id"], name: "index_aim_alert_responses_on_user_alert_state_id"
  end

  create_table "aim_api_keys", id: :serial, force: :cascade do |t|
    t.integer "bearer_id", null: false
    t.string "bearer_type", null: false
    t.string "token_digest", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["bearer_id", "bearer_type"], name: "index_aim_api_keys_on_bearer_id_and_bearer_type"
    t.index ["token_digest"], name: "index_aim_api_keys_on_token_digest", unique: true
  end

  create_table "aim_api_versions", id: :serial, force: :cascade do |t|
    t.string "owner_name"
    t.text "data"
    t.datetime "version", precision: nil
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "state"
    t.index ["owner_name", "state"], name: "aim_api_versions_owner_name_state"
    t.index ["owner_name"], name: "aim_api_versions_owner_name"
    t.index ["state"], name: "aim_api_versions_state"
  end

  create_table "aim_assist_control_workers", id: :serial, force: :cascade do |t|
    t.integer "owner_entity_id"
    t.string "owner_entity_type"
    t.integer "assist_control_id"
    t.integer "worker_id"
    t.index ["owner_entity_type", "owner_entity_id"], name: "assist_control_owner_index"
    t.index ["worker_id"], name: "index_aim_assist_control_workers_on_worker_id"
  end

  create_table "aim_assist_controls", id: :serial, force: :cascade do |t|
    t.text "observations"
    t.integer "worker_id"
    t.integer "request_id"
    t.datetime "access_at", precision: nil
    t.datetime "left_at", precision: nil
    t.index ["request_id"], name: "index_aim_assist_controls_on_request_id"
    t.index ["worker_id"], name: "index_aim_assist_controls_on_worker_id"
  end

  create_table "aim_authorization_authorized_maps", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.integer "map_id"
    t.string "state"
    t.datetime "authorized_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["request_id", "map_id"], name: "auth_authorized_maps_req_id_map_id"
    t.index ["request_id"], name: "index_aim_authorization_authorized_maps_on_request_id"
  end

  create_table "aim_authorization_current_worker_documents", id: :serial, force: :cascade do |t|
    t.integer "request_workerable_worker_id"
    t.integer "worker_document_id"
    t.index ["request_workerable_worker_id"], name: "aim_auth_current_documents_worker_id"
    t.index ["worker_document_id", "request_workerable_worker_id"], name: "aim_auth_current_documents_mix"
    t.index ["worker_document_id"], name: "aim_auth_current_documents_id"
  end

  create_table "aim_authorization_group_requests", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.integer "authorizer_id"
    t.integer "group_id"
    t.string "state"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "authorized_at", precision: nil
    t.text "message"
    t.index ["authorizer_id"], name: "index_aim_authorization_group_requests_on_authorizer_id"
    t.index ["group_id"], name: "index_aim_authorization_group_requests_on_group_id"
    t.index ["request_id"], name: "index_aim_authorization_group_requests_on_request_id"
    t.index ["state"], name: "index_aim_authorization_group_requests_on_state"
  end

  create_table "aim_authorization_history_states", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.string "state"
    t.string "state_translate"
    t.datetime "date", precision: nil
    t.index ["request_id"], name: "index_aim_authorization_history_states_on_request_id"
  end

  create_table "aim_authorization_map_group_requests", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "group_id"
    t.integer "request_id"
    t.integer "authorizer_id"
    t.string "state"
    t.datetime "authorized_at", precision: nil
    t.text "message"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "slug"
    t.index ["authorizer_id"], name: "index_aim_authorization_map_group_requests_on_authorizer_id"
    t.index ["map_id"], name: "index_aim_authorization_map_group_requests_on_map_id"
    t.index ["request_id", "state"], name: "auth_map_group_request_state"
    t.index ["request_id"], name: "index_aim_authorization_map_group_requests_on_request_id"
  end

  create_table "aim_authorization_provision_request_types", id: :serial, force: :cascade do |t|
    t.integer "provision_id"
    t.integer "request_type_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["provision_id"], name: "index_aim_authorization_provision_request_types_on_provision_id"
    t.index ["request_type_id"], name: "auth_request_provision_request_type_id_index"
  end

  create_table "aim_authorization_provision_suppliers", id: :serial, force: :cascade do |t|
    t.integer "provision_id"
    t.integer "supplier_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["provision_id"], name: "index_aim_authorization_provision_suppliers_on_provision_id"
    t.index ["supplier_id"], name: "index_aim_authorization_provision_suppliers_on_supplier_id"
  end

  create_table "aim_authorization_provisions", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["name"], name: "index_aim_authorization_provisions_on_name"
  end

  create_table "aim_authorization_request_document_type_documents", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.integer "document_type_id"
    t.integer "document_id"
  end

  create_table "aim_authorization_request_maps", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "request_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["map_id"], name: "index_aim_authorization_request_maps_on_map_id"
    t.index ["request_id"], name: "index_aim_authorization_request_maps_on_request_id"
  end

  create_table "aim_authorization_request_type_authorizing_groups", id: :serial, force: :cascade do |t|
    t.integer "request_type_id"
    t.integer "group_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["group_id"], name: "aim_auth_request_type_group_group"
    t.index ["request_type_id"], name: "aim_auth_request_type_group_type"
  end

  create_table "aim_authorization_request_type_document_types", id: :serial, force: :cascade do |t|
    t.integer "request_type_id"
    t.string "name"
    t.text "description"
    t.integer "validation_type", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_authorization_request_type_notificable_exceptions", id: :serial, force: :cascade do |t|
    t.integer "request_type_id"
    t.integer "user_id"
    t.index ["request_type_id"], name: "rt_notificable_exception_index"
    t.index ["user_id"], name: "user_notificable_exception_index"
  end

  create_table "aim_authorization_request_type_notificable_groups", id: :serial, force: :cascade do |t|
    t.integer "request_type_id"
    t.integer "group_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["request_type_id"], name: "authorization_request_type_not_group"
  end

  create_table "aim_authorization_request_type_worker_profiles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "request_type_id"
    t.integer "validation_type", default: 0
    t.boolean "default", default: false
    t.integer "workerable_type", default: 0
    t.integer "order", default: 100
    t.index ["request_type_id"], name: "workers_profiles_request_type_id"
  end

  create_table "aim_authorization_request_type_worker_profiles_document_types", id: :serial, force: :cascade do |t|
    t.integer "worker_profile_id"
    t.integer "document_type_id"
    t.index ["document_type_id"], name: "aartwpdt_document_type_id"
    t.index ["worker_profile_id"], name: "aartwpdt_worker_profile_id"
  end

  create_table "aim_authorization_request_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "store"
    t.integer "infrastructure"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "map_id"
    t.text "description"
    t.datetime "deleted_at", precision: nil
    t.string "anticipation_time", default: "0m"
    t.boolean "add_description_to_email", default: false
    t.integer "global_map_options", default: 0
    t.integer "attachment_number", default: 0
    t.boolean "check_store_request_auth", default: false
    t.time "start_working_hour"
    t.time "end_working_hours"
    t.integer "document_type_id"
    t.integer "max_duration", default: 0
    t.integer "max_workers_number"
    t.boolean "terms_and_conditions_to_save", default: false
    t.time "from_hour_to_create"
    t.time "until_hour_to_create"
    t.boolean "show_declaration", default: false
    t.boolean "update_until_approved", default: false
    t.integer "scope_type", default: 3
    t.integer "min_workers_number"
    t.integer "category"
    t.integer "administrative_days", default: 0
    t.index ["deleted_at"], name: "index_aim_authorization_request_types_on_deleted_at"
    t.index ["infrastructure"], name: "index_aim_authorization_request_types_on_infrastructure"
    t.index ["map_id"], name: "index_aim_authorization_request_types_on_map_id"
    t.index ["name"], name: "index_aim_authorization_request_types_on_name"
    t.index ["store"], name: "index_aim_authorization_request_types_on_store"
  end

  create_table "aim_authorization_request_vehicles", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.integer "vehicle_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["request_id"], name: "index_aim_authorization_request_vehicles_on_request_id"
    t.index ["vehicle_id"], name: "index_aim_authorization_request_vehicles_on_vehicle_id"
  end

  create_table "aim_authorization_request_workerable_workers", id: :serial, force: :cascade do |t|
    t.integer "request_worker_id"
  end

  create_table "aim_authorization_request_workers", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.integer "worker_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "worker_profile_id"
    t.integer "owner_type", default: 0
    t.integer "workerable_id"
    t.string "workerable_type"
    t.index ["request_id"], name: "index_aim_authorization_request_workers_on_request_id"
    t.index ["worker_id"], name: "index_aim_authorization_request_workers_on_worker_id"
    t.index ["workerable_type", "workerable_id"], name: "index_request_workers_on_workerable"
  end

  create_table "aim_authorization_requests", id: :serial, force: :cascade do |t|
    t.integer "requester_id"
    t.integer "request_type_id"
    t.integer "interest_point_id"
    t.string "interest_point_type"
    t.string "state"
    t.datetime "from_time", precision: nil
    t.datetime "until_time", precision: nil
    t.integer "from_time_num"
    t.integer "until_time_num"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "map_id"
    t.integer "requester_kind"
    t.string "requester_role"
    t.text "requester_comments"
    t.text "supplier_comments"
    t.text "comments"
    t.integer "supplier_id"
    t.string "requester_identification"
    t.string "requester_name"
    t.string "requester_phone"
    t.string "requester_email"
    t.datetime "authorized_at", precision: nil
    t.boolean "for_mall", default: true
    t.string "payroll_workers_file_name"
    t.string "payroll_workers_content_type"
    t.integer "payroll_workers_file_size"
    t.datetime "payroll_workers_updated_at", precision: nil
    t.string "slug"
    t.time "start_working_hour"
    t.time "end_working_hour"
    t.integer "mixed", default: 0, null: false
    t.integer "requester_type", default: 0, null: false
    t.datetime "deleted_at", precision: nil
    t.datetime "completion_time", precision: nil
    t.index ["deleted_at"], name: "index_aim_authorization_requests_on_deleted_at"
    t.index ["from_time_num"], name: "index_aim_authorization_requests_on_from_time_num"
    t.index ["interest_point_id"], name: "index_aim_authorization_requests_on_interest_point_id"
    t.index ["map_id"], name: "index_aim_authorization_requests_on_map_id"
    t.index ["request_type_id"], name: "index_aim_authorization_requests_on_request_type_id"
    t.index ["requester_email"], name: "index_aim_authorization_requests_on_requester_email"
    t.index ["requester_id"], name: "index_aim_authorization_requests_on_requester_id"
    t.index ["requester_identification"], name: "index_aim_authorization_requests_on_requester_identification"
    t.index ["requester_kind"], name: "index_aim_authorization_requests_on_requester_kind"
    t.index ["requester_name"], name: "index_aim_authorization_requests_on_requester_name"
    t.index ["requester_phone"], name: "index_aim_authorization_requests_on_requester_phone"
    t.index ["requester_role"], name: "index_aim_authorization_requests_on_requester_role"
    t.index ["state"], name: "index_aim_authorization_requests_on_state"
    t.index ["supplier_id"], name: "index_aim_authorization_requests_on_supplier_id"
    t.index ["until_time_num"], name: "index_aim_authorization_requests_on_until_time_num"
  end

  create_table "aim_authorization_scanned_frames", id: :serial, force: :cascade do |t|
    t.date "created_at"
    t.integer "map_id"
    t.text "frame_text"
    t.string "format_type"
  end

  create_table "aim_authorization_worker_documents", id: :serial, force: :cascade do |t|
    t.integer "contact_id"
    t.integer "document_type_id"
    t.integer "request_worker_profile_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at", precision: nil
    t.integer "state", default: 0
    t.datetime "expiration_date", precision: nil
    t.integer "user_id"
    t.datetime "authorization_date", precision: nil
    t.integer "workerable_worker_id"
    t.datetime "deleted_at", precision: nil
    t.integer "worker_document_version_id"
    t.index ["contact_id"], name: "index_worker_documents_contacts_on_contact_id"
    t.index ["deleted_at", "document_type_id"], name: "aimauth_worker_documentsdocument_type_id"
    t.index ["deleted_at", "state", "document_type_id"], name: "aimauth_worker_documentsdocument_type_id_state"
    t.index ["deleted_at"], name: "index_aim_authorization_worker_documents_on_deleted_at"
    t.index ["document_type_id"], name: "index_worker_documents_contacts_on_document_type_id"
    t.index ["request_worker_profile_id"], name: "index_worker_documents_contacts_on_request_worker_profile_id"
  end

  create_table "aim_background_tasks", id: :serial, force: :cascade do |t|
    t.integer "backgroundable_id"
    t.string "backgroundable_type"
    t.string "key"
    t.integer "status", default: 0
    t.float "percentage", default: 0.0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
    t.integer "count_processed"
    t.string "name"
    t.string "file"
  end

  create_table "aim_background_tasks_users", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "background_task_id"
    t.index ["background_task_id"], name: "index_aim_background_tasks_users_on_background_task_id"
    t.index ["user_id"], name: "index_aim_background_tasks_users_on_user_id"
  end

  create_table "aim_blacklist_records", id: :serial, force: :cascade do |t|
    t.integer "blacklist_id"
    t.integer "user_id"
    t.text "comments"
    t.datetime "occurrence_date", precision: nil
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "active", default: true
    t.index ["blacklist_id"], name: "index_aim_blacklist_records_on_blacklist_id"
    t.index ["user_id"], name: "index_aim_blacklist_records_on_user_id"
  end

  create_table "aim_blacklists", id: :serial, force: :cascade do |t|
    t.integer "subject_id"
    t.string "subject_type"
    t.integer "current_id"
    t.boolean "active", default: true
    t.index ["current_id"], name: "index_aim_blacklists_on_current_id"
    t.index ["subject_type", "subject_id"], name: "index_aim_blacklists_on_subject_type_and_subject_id"
  end

  create_table "aim_blocked_days", id: :serial, force: :cascade do |t|
    t.date "day"
    t.integer "calendar_id"
    t.boolean "all_day"
  end

  create_table "aim_business_lines", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "use_percent"
    t.integer "store_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_id"], name: "index_aim_business_lines_on_store_id"
  end

  create_table "aim_calendar_subscription_maps", id: :serial, force: :cascade do |t|
    t.integer "calendar_id"
    t.integer "map_id"
    t.integer "calendarable_id"
    t.string "calendarable_type"
  end

  create_table "aim_calendar_subscriptions", id: :serial, force: :cascade do |t|
    t.integer "calendar_id"
    t.integer "calendarable_id"
    t.string "calendarable_type"
  end

  create_table "aim_calendars", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "name"
    t.boolean "non_business_days_weekly", default: [false, false, false, false, false, false, false], array: true
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "map_id"
    t.integer "show_from_zoom"
    t.integer "show_until_zoom"
    t.boolean "is_infrastructure"
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.string "type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "code"
    t.datetime "deleted_at", precision: nil
    t.index ["deleted_at"], name: "index_aim_categories_on_deleted_at"
    t.index ["map_id"], name: "index_aim_categories_on_map_id"
  end

  create_table "aim_category_translations", id: :serial, force: :cascade do |t|
    t.integer "aim_category_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.index ["aim_category_id"], name: "index_aim_category_translations_on_aim_category_id"
    t.index ["locale"], name: "index_aim_category_translations_on_locale"
  end

  create_table "aim_cemetery_deceaseds", id: :serial, force: :cascade do |t|
    t.integer "grave_id"
    t.integer "map_id"
    t.integer "layer_id"
    t.geometry "position", limit: {:srid=>0, :type=>"st_point"}
    t.string "external_id"
    t.string "names"
    t.string "last_names"
    t.string "identification"
    t.date "birthdate"
    t.date "death_date"
    t.hstore "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "submodule_id"
    t.index ["birthdate"], name: "index_aim_cemetery_deceaseds_on_birthdate"
    t.index ["data"], name: "index_aim_cemetery_deceaseds_on_data", using: :gin
    t.index ["death_date"], name: "index_aim_cemetery_deceaseds_on_death_date"
    t.index ["external_id"], name: "index_aim_cemetery_deceaseds_on_external_id"
    t.index ["grave_id"], name: "index_aim_cemetery_deceaseds_on_grave_id"
    t.index ["identification"], name: "index_aim_cemetery_deceaseds_on_identification"
    t.index ["layer_id"], name: "index_aim_cemetery_deceaseds_on_layer_id"
    t.index ["map_id"], name: "index_aim_cemetery_deceaseds_on_map_id"
    t.index ["submodule_id"], name: "index_aim_cemetery_deceaseds_on_submodule_id"
  end

  create_table "aim_cemetery_grave_interfaces", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.text "submodule_data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "show_until_zoom"
    t.integer "show_from_zoom"
    t.text "deceased_data"
    t.text "grave_data"
    t.datetime "deleted_at", precision: nil
    t.index ["map_id"], name: "index_aim_cemetery_grave_interfaces_on_map_id"
    t.index ["name"], name: "index_aim_cemetery_grave_interfaces_on_name"
  end

  create_table "aim_cemetery_graves", id: :serial, force: :cascade do |t|
    t.geometry "position", limit: {:srid=>0, :type=>"st_point"}
    t.integer "map_id"
    t.integer "layer_id"
    t.integer "zone_id"
    t.string "external_id"
    t.hstore "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "grave_interface_id"
    t.string "kind"
    t.index ["data"], name: "index_aim_cemetery_graves_on_data", using: :gin
    t.index ["external_id"], name: "index_aim_cemetery_graves_on_external_id"
    t.index ["grave_interface_id"], name: "index_aim_cemetery_graves_on_grave_interface_id"
    t.index ["layer_id"], name: "index_aim_cemetery_graves_on_layer_id"
    t.index ["map_id"], name: "index_aim_cemetery_graves_on_map_id"
    t.index ["zone_id"], name: "index_aim_cemetery_graves_on_zone_id"
  end

  create_table "aim_cemetery_obituaries", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "zone_id"
    t.text "description"
    t.string "arrival_hour"
    t.string "arrival_date"
    t.hstore "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "deceased_name"
    t.string "external_id"
    t.index ["data"], name: "index_aim_cemetery_obituaries_on_data", using: :gin
    t.index ["deceased_name"], name: "index_aim_cemetery_obituaries_on_deceased_name"
    t.index ["external_id"], name: "index_aim_cemetery_obituaries_on_external_id"
    t.index ["map_id"], name: "index_aim_cemetery_obituaries_on_map_id"
    t.index ["zone_id"], name: "index_aim_cemetery_obituaries_on_zone_id"
  end

  create_table "aim_cemetery_previous_submodule_state_interfaces", id: :serial, force: :cascade do |t|
    t.integer "previous_state_interface_id"
    t.integer "state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["previous_state_interface_id"], name: "cemetery_prev_submodule_prev_state_iterface_id"
    t.index ["state_interface_id"], name: "cemetery_prev_submodule_state_iterface_id"
  end

  create_table "aim_cemetery_submodule_state_interfaces", id: :serial, force: :cascade do |t|
    t.integer "grave_interface_id"
    t.string "name"
    t.string "icon_name"
    t.string "color"
    t.integer "order"
    t.boolean "comments"
    t.boolean "pictures"
    t.boolean "documents"
    t.boolean "initial"
    t.boolean "final"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["grave_interface_id"], name: "cemetery_submodule_state_interface_grave_interface_id"
    t.index ["name"], name: "index_aim_cemetery_submodule_state_interfaces_on_name"
  end

  create_table "aim_cemetery_submodule_states", id: :serial, force: :cascade do |t|
    t.integer "grave_id"
    t.integer "submodule_id"
    t.integer "state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["grave_id"], name: "index_aim_cemetery_submodule_states_on_grave_id"
    t.index ["state_interface_id"], name: "index_aim_cemetery_submodule_states_on_state_interface_id"
    t.index ["submodule_id"], name: "index_aim_cemetery_submodule_states_on_submodule_id"
  end

  create_table "aim_cemetery_submodules", id: :serial, force: :cascade do |t|
    t.integer "grave_id"
    t.integer "current_state_id"
    t.integer "contact_id"
    t.string "external_id"
    t.hstore "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "contract_date", precision: nil
    t.integer "capacity", default: 0
    t.integer "reductions", default: 0
    t.index ["contact_id"], name: "index_aim_cemetery_submodules_on_contact_id"
    t.index ["current_state_id"], name: "index_aim_cemetery_submodules_on_current_state_id"
    t.index ["external_id"], name: "index_aim_cemetery_submodules_on_external_id"
    t.index ["grave_id"], name: "index_aim_cemetery_submodules_on_grave_id"
  end

  create_table "aim_checklist_answer_options", id: :serial, force: :cascade do |t|
    t.integer "checklist_tag_id"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["checklist_tag_id"], name: "index_aim_checklist_answer_options_on_checklist_tag_id"
  end

  create_table "aim_checklist_answer_options_tags", id: :serial, force: :cascade do |t|
    t.integer "checklist_tag_id"
    t.integer "checklist_answer_option_id"
  end

  create_table "aim_checklist_categories", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "filterable_by_auditor", default: false
    t.boolean "filterable_by_supervisor", default: false
    t.index ["map_id"], name: "index_aim_checklist_categories_on_map_id"
    t.index ["name"], name: "index_aim_checklist_categories_on_name"
  end

  create_table "aim_checklist_categories_custom_reports", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "checklist_category_id"
  end

  create_table "aim_checklist_category_groups", id: :serial, force: :cascade do |t|
    t.integer "group_id"
    t.integer "checklist_category_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "relation_kind", default: "both"
    t.index ["checklist_category_id"], name: "index_aim_checklist_category_groups_on_checklist_category_id"
    t.index ["group_id"], name: "index_aim_checklist_category_groups_on_group_id"
  end

  create_table "aim_checklist_grade_options", id: :serial, force: :cascade do |t|
    t.integer "checklist_step_interface_id", null: false
    t.string "name"
    t.integer "grade"
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "comments"
    t.integer "pictures"
    t.integer "documents"
    t.datetime "deleted_at", precision: nil
    t.integer "default_tag_for_incident_id"
    t.index ["checklist_step_interface_id"], name: "index_aim_checklist_grade_options_on_checklist_step_interf_id"
    t.index ["incident_interface_id"], name: "index_aim_checklist_grade_options_on_incident_interface_id"
  end

  create_table "aim_checklist_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "grade_min"
    t.integer "grade_max"
    t.integer "grade_interval"
    t.boolean "is_for_store", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.boolean "autogenerate_incident"
    t.boolean "is_for_service", default: false
    t.boolean "is_for_infrastructure", default: false
    t.integer "checklist_category_id"
    t.datetime "deleted_at", precision: nil
    t.integer "user_start_position"
    t.integer "user_finish_position"
    t.float "expiration_time", default: 0.0
    t.boolean "is_section_weight", default: true
    t.boolean "show_skip_steps", default: false
    t.boolean "show_section_of_skip_steps", default: false
    t.boolean "show_pdf_skip_steps", default: false
    t.boolean "show_pdf_section_of_skip_steps", default: false
    t.integer "aim_concept_id"
    t.boolean "add_photo_from_gallery"
    t.boolean "show_pdf_unsuccess_step_only", default: false
    t.boolean "is_for_product", default: false
    t.index ["aim_concept_id"], name: "index_aim_checklist_interfaces_on_aim_concept_id"
    t.index ["checklist_category_id"], name: "index_aim_checklist_interfaces_on_checklist_category_id"
    t.index ["deleted_at"], name: "aim_checklist_interfaces_deleted"
  end

  create_table "aim_checklist_interfaces_concepts", id: :serial, force: :cascade do |t|
    t.integer "concept_id"
    t.integer "checklist_interface_id"
    t.index ["checklist_interface_id"], name: "index_checklist_interfaces_concepts_on_ch_id"
    t.index ["concept_id"], name: "index_checklist_interfaces_concepts_on_c_id"
  end

  create_table "aim_checklist_interfaces_custom_reports", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "checklist_interface_id"
  end

  create_table "aim_checklist_interfaces_groups", id: false, force: :cascade do |t|
    t.integer "checklist_interface_id", null: false
    t.integer "group_id", null: false
    t.index ["checklist_interface_id"], name: "index_aim_checklist_interfaces_groups_on_checklist_interface_id"
    t.index ["group_id"], name: "index_aim_checklist_interfaces_groups_on_group_id"
  end

  create_table "aim_checklist_interfaces_info_groups", id: :serial, force: :cascade do |t|
    t.integer "checklist_interface_id"
    t.integer "group_id"
  end

  create_table "aim_checklist_interfaces_maps", id: false, force: :cascade do |t|
    t.integer "checklist_interface_id", null: false
    t.integer "map_id", null: false
    t.index ["checklist_interface_id"], name: "index_aim_checklist_interfaces_maps_on_checklist_interface_id"
    t.index ["map_id"], name: "index_aim_checklist_interfaces_maps_on_map_id"
  end

  create_table "aim_checklist_section_interfaces", id: :serial, force: :cascade do |t|
    t.integer "checklist_interface_id", null: false
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.float "grade_weight", default: 1.0
    t.text "description", default: ""
    t.float "rank", default: 0.0
    t.datetime "deleted_at", precision: nil
    t.index ["checklist_interface_id"], name: "index_aim_checklist_section_interfaces_on_checklist_interf_id"
    t.index ["rank"], name: "index_aim_checklist_section_interfaces_on_rank"
  end

  create_table "aim_checklist_section_interfaces_groups", id: false, force: :cascade do |t|
    t.integer "checklist_section_interface_id", null: false
    t.integer "group_id", null: false
    t.index ["checklist_section_interface_id"], name: "index_aim_checklist_section_interf_grps_on_chckl_sect_interf_id"
    t.index ["group_id"], name: "index_aim_checklist_section_interfaces_groups_on_group_id"
  end

  create_table "aim_checklist_sections", id: :serial, force: :cascade do |t|
    t.integer "checklist_section_interface_id"
    t.integer "checklist_id"
    t.decimal "grade"
    t.float "grade_weight"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.float "grade_weight_percentage"
    t.boolean "skipped", default: false
    t.integer "rank", default: 0
    t.index ["checklist_id"], name: "index_aim_checklist_sections_on_checklist_id"
    t.index ["checklist_section_interface_id"], name: "index_aim_checklist_sections_on_checklist_section_interface_id"
  end

  create_table "aim_checklist_step_checklist_tags", id: :serial, force: :cascade do |t|
    t.integer "checklist_step_id"
    t.integer "checklist_tag_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.float "grade_weight"
    t.index ["checklist_step_id"], name: "index_aim_checklist_step_chck_tgs_on_chk_stp_id"
    t.index ["checklist_tag_id"], name: "index_aim_checklist_step_checklist_tags_on_chk_tag_id"
  end

  create_table "aim_checklist_step_interface_checklist_tags", id: :serial, force: :cascade do |t|
    t.integer "checklist_step_interface_id"
    t.integer "checklist_tag_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.float "grade_weight"
    t.index ["checklist_step_interface_id"], name: "index_aim_checklist_step_interface_chck_tgs_on_chk_stp_inf_id"
    t.index ["checklist_tag_id", "checklist_step_interface_id"], name: "ch_ste_inter_ch_tag", unique: true
    t.index ["checklist_tag_id"], name: "index_aim_checklist_step_interface_checklist_tags_on_chk_tag_id"
  end

  create_table "aim_checklist_step_interface_infrastructure_interfaces", id: :serial, force: :cascade do |t|
    t.integer "checklist_step_interface_id"
    t.integer "infrastructure_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["checklist_step_interface_id"], name: "index_aim_checklist_stp_intrfc_infrstr_infs_n_c_stp_intf_id"
    t.index ["infrastructure_interface_id"], name: "index_aim_checklist_stp_intrfc_infrstr_infs_n_infr_intf_id"
  end

  create_table "aim_checklist_step_interfaces", id: :serial, force: :cascade do |t|
    t.integer "checklist_section_interface_id", null: false
    t.string "name"
    t.text "description"
    t.integer "comments_when_high_grade"
    t.integer "pictures_when_high_grade"
    t.integer "documents_when_high_grade"
    t.boolean "has_grade"
    t.integer "low_grade"
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "required", default: false
    t.boolean "skippable", default: false
    t.float "grade_weight", default: 1.0
    t.boolean "light_question", default: false
    t.integer "comments_when_low_grade"
    t.integer "pictures_when_low_grade"
    t.integer "documents_when_low_grade"
    t.integer "parent_checklist_step_interface_id"
    t.integer "parent_checklist_grade_option_id"
    t.integer "default_grade"
    t.integer "default_checklist_grade_option_id"
    t.float "rank", default: 0.0
    t.datetime "deleted_at", precision: nil
    t.index ["checklist_section_interface_id"], name: "index_aim_checklist_step_interfaces_on_checklist_sect_interf_id"
    t.index ["default_checklist_grade_option_id"], name: "index_aim_checklist_step_interfaces_on_default_cklst_grd_opt_id"
    t.index ["incident_interface_id"], name: "index_aim_checklist_step_interfaces_on_incident_interface_id"
    t.index ["parent_checklist_grade_option_id"], name: "index_aim_checklist_step_interfaces_on_parent_cklst_grd_opt_id"
    t.index ["parent_checklist_step_interface_id"], name: "index_aim_checklist_step_interfaces_on_parent_cklst_stp_intf_id"
    t.index ["rank"], name: "index_aim_checklist_step_interfaces_on_rank"
  end

  create_table "aim_checklist_steps", id: :serial, force: :cascade do |t|
    t.integer "checklist_step_interface_id", null: false
    t.integer "checklist_id", null: false
    t.integer "checklist_grade_option_id"
    t.text "comments"
    t.integer "grade"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "answered_at", precision: nil
    t.boolean "skipped", default: false
    t.string "incident_slug"
    t.integer "infrastructure_id"
    t.boolean "forced_grade", default: false
    t.float "grade_weight"
    t.string "slug"
    t.float "grade_weight_percentage"
    t.integer "checklist_section_id"
    t.float "absolute_grade_weight_percentage"
    t.float "absolute_grade_percentage"
    t.index ["checklist_grade_option_id"], name: "index_aim_checklist_steps_on_checklist_grade_option_id"
    t.index ["checklist_id"], name: "index_aim_checklist_steps_on_checklist_id"
    t.index ["checklist_section_id"], name: "aim_checklist_steps_checklist_section_id"
    t.index ["checklist_step_interface_id"], name: "index_aim_checklist_steps_on_checklist_step_interface_id"
    t.index ["infrastructure_id"], name: "index_aim_checklist_steps_on_infrastructure_id"
  end

  create_table "aim_checklist_tag_grade_weights", id: :serial, force: :cascade do |t|
    t.integer "checklist_id"
    t.integer "tag_id"
    t.float "grade_weight"
    t.float "grade"
    t.index ["checklist_id", "tag_id"], name: "aim_checklist_tag_grade_weights_fast_report"
    t.index ["tag_id", "checklist_id"], name: "aim_checklist_tag_grade_weights_fast_report_inverse"
  end

  create_table "aim_checklist_tags", id: :serial, force: :cascade do |t|
    t.integer "checklist_interface_id"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.string "chosen_grade_option_name"
    t.integer "override_grade"
    t.integer "override_checklist_tag_id"
    t.boolean "skipped", default: false
    t.integer "tag_type", default: 0
    t.float "grade_weight"
    t.integer "rank", default: 0
    t.integer "aim_concept_id"
    t.index ["aim_concept_id"], name: "index_aim_checklist_tags_on_aim_concept_id"
    t.index ["checklist_interface_id"], name: "index_aim_checklists_checklist_tgs_on_chklst_intrf_id"
    t.index ["override_checklist_tag_id"], name: "index_aim_checklist_tags_on_override_checklist_tag_id"
  end

  create_table "aim_checklists", id: :serial, force: :cascade do |t|
    t.integer "checklist_interface_id", null: false
    t.integer "map_id", null: false
    t.integer "store_id"
    t.integer "user_id", null: false
    t.decimal "global_grade"
    t.datetime "started_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "finished_at", precision: nil
    t.integer "service_id"
    t.integer "infrastructure_id"
    t.string "slug"
    t.geometry "user_start_position", limit: {:srid=>0, :type=>"st_point"}
    t.geometry "user_finish_position", limit: {:srid=>0, :type=>"st_point"}
    t.integer "grade_min"
    t.integer "grade_max"
    t.string "product_id"
    t.integer "event_id"
    t.index ["checklist_interface_id"], name: "index_aim_checklists_on_checklist_interface_id"
    t.index ["created_at"], name: "index_aim_checklists_on_created_at"
    t.index ["infrastructure_id"], name: "index_aim_checklists_on_infrastructure_id"
    t.index ["map_id"], name: "index_aim_checklists_on_map_id"
    t.index ["service_id"], name: "index_aim_checklists_on_service_id"
    t.index ["slug"], name: "index_aim_checklists_on_slug", unique: true
    t.index ["store_id"], name: "index_aim_checklists_on_store_id"
    t.index ["user_id"], name: "index_aim_checklists_on_user_id"
  end

  create_table "aim_claims", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.integer "user_id"
    t.string "comprobation_code"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "type"
  end

  create_table "aim_comments", id: :serial, force: :cascade do |t|
    t.integer "commentable_id"
    t.string "commentable_type"
    t.text "body"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "title"
    t.integer "user_id"
    t.string "status", default: "default"
    t.index ["commentable_id", "commentable_type"], name: "aim_comments_commentable_poly"
    t.index ["status"], name: "index_aim_comments_on_status"
    t.index ["title"], name: "index_aim_comments_on_title"
    t.index ["user_id"], name: "index_aim_comments_on_user_id"
  end

  create_table "aim_common_expenses", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.integer "reason"
    t.decimal "amount"
    t.integer "currency_id"
    t.decimal "percentage"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_common_expenses_on_currency_id"
    t.index ["store_id"], name: "index_aim_common_expenses_on_store_id"
  end

  create_table "aim_concepts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_contact_incidents", id: :serial, force: :cascade do |t|
    t.integer "contact_id"
    t.integer "incident_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "involved_interface_id"
    t.index ["contact_id"], name: "index_aim_contact_incidents_on_contact_id"
    t.index ["incident_id"], name: "index_aim_contact_incidents_on_incident_id"
  end

  create_table "aim_contact_suppliers", id: :serial, force: :cascade do |t|
    t.integer "contact_id"
    t.integer "supplier_id"
    t.string "role"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_contacts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "identification"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.date "birthdate"
    t.integer "contactable_id"
    t.string "contactable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "involved_interface_id"
    t.string "type"
    t.boolean "blacklisted"
    t.string "last_names"
    t.string "role"
    t.integer "identification_type", default: 0
    t.datetime "deleted_at", precision: nil
    t.integer "sex"
    t.integer "age"
    t.index "lower((((name)::text || ' '::text) || (last_names)::text))", name: "idx_contacts_lower_full_name"
    t.index ["blacklisted"], name: "index_aim_contacts_on_blacklisted"
    t.index ["contactable_type", "contactable_id"], name: "index_aim_contacts_on_contactable_type_and_contactable_id"
    t.index ["deleted_at"], name: "index_aim_contacts_on_deleted_at"
    t.index ["identification"], name: "index_aim_contacts_on_identification"
    t.index ["involved_interface_id"], name: "index_aim_contacts_on_involved_interface_id"
    t.index ["last_names"], name: "index_aim_contacts_on_last_names"
  end

  create_table "aim_contacts_workerables", id: :serial, force: :cascade do |t|
    t.integer "workerable_id"
    t.string "workerable_type"
    t.integer "contact_id"
    t.string "role"
    t.boolean "chief", default: false
    t.datetime "deleted_at", precision: nil
    t.index ["contact_id"], name: "acw_contact_id"
    t.index ["deleted_at", "contact_id"], name: "aimauth_worker_documentscontact_id"
    t.index ["deleted_at"], name: "index_aim_contacts_workerables_on_deleted_at"
    t.index ["workerable_type", "workerable_id"], name: "acw_workerable_id"
  end

  create_table "aim_correlative_numbers", id: :serial, force: :cascade do |t|
    t.integer "correlatiable_id"
    t.string "correlatiable_type"
    t.string "correlative"
    t.integer "correlative_id"
    t.integer "correlative_map_id"
    t.index ["correlatiable_id", "correlatiable_type"], name: "aim_correlative_numbers_poly"
    t.index ["correlatiable_id"], name: "aim_correlative_numbers_correlatiable_id"
    t.index ["correlatiable_type", "correlatiable_id"], name: "aim_correlative_numbers_poly_inv"
    t.index ["correlatiable_type", "correlative"], name: "num_correlative_type"
    t.index ["correlative"], name: "index_aim_correlative_numbers_on_correlative"
    t.index ["correlative_id"], name: "index_aim_correlative_numbers_on_correlative_id"
    t.index ["correlative_map_id"], name: "index_aim_correlative_numbers_on_correlative_map_id"
  end

  create_table "aim_cost_interfaces", id: :serial, force: :cascade do |t|
    t.text "description"
    t.float "default_cost"
    t.integer "currency_id"
    t.integer "config_costable_id"
    t.string "config_costable_type"
    t.index ["config_costable_type", "config_costable_id"], name: "cost_interfaces_config_costable"
    t.index ["currency_id"], name: "index_aim_cost_interfaces_on_currency_id"
  end

  create_table "aim_costs", id: :serial, force: :cascade do |t|
    t.float "value"
    t.integer "cost_interface_id"
    t.integer "costable_id"
    t.string "costable_type"
    t.integer "currency_id"
    t.index ["cost_interface_id"], name: "index_aim_costs_on_cost_interface_id"
    t.index ["costable_type", "costable_id"], name: "costs_costable"
    t.index ["currency_id"], name: "index_aim_costs_on_currency_id"
  end

  create_table "aim_credentials", id: :serial, force: :cascade do |t|
    t.string "credential_number"
    t.string "type"
    t.integer "contact_id"
    t.index ["contact_id"], name: "index_aim_credentials_on_contact_id"
  end

  create_table "aim_currencies", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "precision"
    t.string "unit"
    t.string "separator"
    t.string "delimiter"
    t.string "format"
    t.string "negative_format"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_custom_field_configs", id: :serial, force: :cascade do |t|
    t.integer "fieldable_id"
    t.string "fieldable_type"
    t.string "description"
    t.index ["fieldable_type", "fieldable_id"], name: "index_aim_custom_field_configs_fieldable"
  end

  create_table "aim_custom_field_data", id: :serial, force: :cascade do |t|
    t.integer "custom_valuable_id"
    t.string "custom_valuable_type"
    t.index ["custom_valuable_id", "custom_valuable_id"], name: "aim_custom_field_data_poly"
    t.index ["custom_valuable_type", "custom_valuable_id"], name: "index_aim_custom_field_datas_fieldable_custom_valuable"
  end

  create_table "aim_custom_field_types", id: :serial, force: :cascade do |t|
    t.integer "custom_field_config_id"
    t.string "field_name"
    t.integer "field_type"
    t.integer "required", default: 0
    t.hstore "data"
    t.string "field_ref"
    t.integer "priority", default: 1
    t.index ["custom_field_config_id"], name: "index_aim_custom_field_types_on_custom_field_config_id"
  end

  create_table "aim_custom_field_values", id: :serial, force: :cascade do |t|
    t.integer "custom_field_data_id"
    t.integer "custom_field_type_id"
    t.string "value"
    t.index ["custom_field_data_id", "custom_field_type_id"], name: "aim_custom_field_values_type"
    t.index ["custom_field_data_id"], name: "aim_custom_field_values_data_id"
  end

  create_table "aim_custom_keyboards", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "digits"
    t.string "mask"
    t.index ["name"], name: "index_aim_custom_keyboards_on_name"
  end

  create_table "aim_custom_report_categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "color"
  end

  create_table "aim_custom_reports", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "users_group", default: 0
    t.integer "range_date", default: 0
    t.integer "filter_type", default: 0
    t.string "primary_color"
    t.string "secondary_color"
    t.boolean "show_total_map", default: false
    t.boolean "show_total_section", default: false
    t.boolean "show_detail", default: false
    t.boolean "show_detail_time", default: false
    t.boolean "show_general", default: false
    t.boolean "show_by_format", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.integer "start_date_type", default: 0
    t.integer "end_date_type", default: 0
    t.boolean "show_general_grouped", default: false
    t.integer "graph_detail_time", default: 0
    t.integer "goal_detail_time"
    t.integer "detail_widget_type", default: 0
    t.boolean "show_tag_report", default: false
    t.boolean "is_from_tableau", default: false
    t.text "tableau_text"
    t.integer "category_id"
  end

  create_table "aim_custom_reports_groups", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "group_id"
  end

  create_table "aim_custom_reports_map_classifications", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "map_classification_id"
  end

  create_table "aim_custom_reports_map_districts", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "map_district_id"
  end

  create_table "aim_custom_reports_maps", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "map_id"
  end

  create_table "aim_custom_reports_ranking_groups", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "ranking_group_id"
  end

  create_table "aim_custom_reports_ranking_maps", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "ranking_map_id"
  end

  create_table "aim_custom_reports_users", id: :serial, force: :cascade do |t|
    t.integer "custom_report_id"
    t.integer "user_id"
  end

  create_table "aim_date_restrictions", id: :serial, force: :cascade do |t|
    t.integer "restrictable_id"
    t.string "restrictable_type"
    t.boolean "active"
    t.boolean "week_days", default: [true, true, true, true, true, true, true], array: true
    t.time "from_time"
    t.time "until_time"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "map_id"
    t.index ["map_id"], name: "index_aim_date_restrictions_on_map_id"
    t.index ["restrictable_type", "restrictable_id"], name: "restrictable_index"
  end

  create_table "aim_declaration_templates", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.text "template"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["owner_type", "owner_id"], name: "index_aim_declaration_templates_on_owner_type_and_owner_id"
  end

  create_table "aim_declarations", id: :serial, force: :cascade do |t|
    t.integer "request_id"
    t.text "declaration"
    t.integer "declaration_template_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["declaration_template_id"], name: "index_aim_declarations_on_declaration_template_id"
    t.index ["request_id"], name: "index_aim_declarations_on_request_id"
  end

  create_table "aim_delegations", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.integer "delegated_id"
  end

  create_table "aim_devices", id: :serial, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "token"
    t.boolean "enabled"
    t.string "platform", default: "Android"
    t.string "push_type"
  end

  create_table "aim_document_config_duration_ranges", id: :serial, force: :cascade do |t|
    t.integer "expired_document_config_id"
    t.integer "duration_range_id"
    t.index ["duration_range_id"], name: "doc_config_expired_duration_rng_idx"
    t.index ["expired_document_config_id"], name: "doc_config_expired_doc_config_idx"
  end

  create_table "aim_document_config_groups", id: :serial, force: :cascade do |t|
    t.integer "expired_document_config_id"
    t.integer "group_id"
    t.index ["expired_document_config_id"], name: "aim_document_config_expired_document_config_idx"
    t.index ["group_id"], name: "aim_document_config_groups_idx"
  end

  create_table "aim_document_states", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "state", default: 0
    t.text "comments"
    t.datetime "change_state_at", precision: nil
    t.index ["user_id"], name: "index_aim_document_states_on_user_id"
  end

  create_table "aim_document_type_document_states", id: :serial, force: :cascade do |t|
    t.integer "document_type_document_id"
    t.integer "document_state_id"
    t.index ["document_state_id"], name: "doc_type_document_state_states"
    t.index ["document_type_document_id"], name: "doc_type_document_type_state"
  end

  create_table "aim_document_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "aim_document_types_rules", id: :serial, force: :cascade do |t|
    t.integer "rule_id"
    t.integer "document_type_id"
    t.index ["document_type_id"], name: "index_aim_document_types_rules_on_document_type_id"
    t.index ["rule_id"], name: "index_aim_document_types_rules_on_rule_id"
  end

  create_table "aim_document_types_store_rules", id: :serial, force: :cascade do |t|
    t.integer "store_rule_id"
    t.integer "document_type_id"
    t.index ["document_type_id"], name: "index_aim_document_types_store_rules_on_document_type_id"
    t.index ["store_rule_id"], name: "index_aim_document_types_store_rules_on_store_rule_id"
  end

  create_table "aim_documents", id: :serial, force: :cascade do |t|
    t.integer "attachable_id"
    t.string "attachable_type"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.integer "user_id"
    t.string "file_fingerprint"
    t.string "usage"
    t.string "slug"
    t.string "full_url"
    t.index ["attachable_type", "attachable_id"], name: "index_aim_documents_on_attachable_type_and_attachable_id"
    t.index ["user_id"], name: "index_aim_documents_on_user_id"
  end

  create_table "aim_duration_ranges", id: :serial, force: :cascade do |t|
    t.integer "range"
    t.integer "time_unity"
  end

  create_table "aim_edges", id: :serial, force: :cascade do |t|
    t.integer "node_a_id"
    t.integer "node_b_id"
    t.string "direction", default: "both"
    t.float "weight", default: 1.0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "floor_connector"
  end

  create_table "aim_evaluations", id: :serial, force: :cascade do |t|
    t.float "global_grade"
    t.integer "checklist_id", null: false
    t.integer "concept_id", null: false
    t.index ["checklist_id", "concept_id"], name: "index_aim_evaluations_checklist_concept_index", unique: true
    t.index ["checklist_id"], name: "index_aim_evaluations_on_checklist_id"
    t.index ["concept_id"], name: "index_aim_evaluations_on_concept_id"
  end

  create_table "aim_expired_document_configs", id: :serial, force: :cascade do |t|
    t.integer "requests_global_config_id"
    t.boolean "active"
    t.index ["requests_global_config_id"], name: "expired_docs_request_global_config_idx"
  end

  create_table "aim_external_users", id: :serial, force: :cascade do |t|
    t.string "rut"
    t.string "fullname"
    t.string "company_name"
    t.integer "interest_point_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["interest_point_id"], name: "index_aim_external_users_on_interest_point_id"
  end

  create_table "aim_factions", id: :serial, force: :cascade do |t|
    t.string "label"
    t.integer "surveillance_zone_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["deleted_at"], name: "index_aim_factions_on_deleted_at"
    t.index ["surveillance_zone_id"], name: "index_aim_factions_on_surveillance_zone_id"
  end

  create_table "aim_fusion_table_layers", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "external_id"
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["external_id"], name: "index_aim_fusion_table_layers_on_external_id"
    t.index ["map_id"], name: "index_aim_fusion_table_layers_on_map_id"
    t.index ["name"], name: "index_aim_fusion_table_layers_on_name"
  end

  create_table "aim_global_assist_control_configs", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
  end

  create_table "aim_global_configs", id: :serial, force: :cascade do |t|
    t.text "terms_of_service"
    t.integer "compress_type", default: 0
  end

  create_table "aim_groupings", id: :serial, force: :cascade do |t|
    t.float "grade"
    t.integer "taggeable_id"
    t.string "taggeable_type"
    t.integer "evaluation_id", null: false
    t.integer "rank"
    t.index ["evaluation_id"], name: "index_aim_groupings_on_evaluation_id"
    t.index ["taggeable_type", "taggeable_id"], name: "index_aim_groupings_on_taggeable_type_and_taggeable_id"
  end

  create_table "aim_groups_profiles", id: :serial, force: :cascade do |t|
    t.integer "group_id"
    t.integer "profile_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["group_id"], name: "index_aim_groups_profiles_on_group_id"
    t.index ["profile_id"], name: "index_aim_groups_profiles_on_profile_id"
  end

  create_table "aim_guest_access_controls", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "contact_id"
    t.datetime "access_at", precision: nil
    t.string "comments"
    t.string "reason"
    t.string "contact_info"
    t.datetime "exited_at", precision: nil
    t.string "name"
    t.index ["contact_id"], name: "index_aim_guest_access_controls_on_contact_id"
    t.index ["map_id"], name: "index_aim_guest_access_controls_on_map_id"
  end

  create_table "aim_historical_records", id: :serial, force: :cascade do |t|
    t.string "status"
    t.string "title"
    t.integer "user_id"
    t.string "message"
    t.integer "owner_id"
    t.string "owner_type"
    t.string "controller_action"
    t.string "controller_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.hstore "data"
    t.string "virtual_user_id"
    t.index ["controller_action"], name: "aim_historical_records_controller_action"
    t.index ["controller_name"], name: "index_aim_historical_records_on_controller_name"
    t.index ["owner_id", "owner_type"], name: "index_aim_historical_records_on_owner_id_and_owner_type"
    t.index ["user_id"], name: "index_aim_historical_records_on_user_id"
  end

  create_table "aim_images", id: :serial, force: :cascade do |t|
    t.integer "imageable_id"
    t.string "imageable_type"
    t.string "usage"
    t.integer "sequence"
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at", precision: nil
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "hexa_format"
    t.string "uuid"
    t.string "old_url"
    t.string "old_path"
  end

  create_table "aim_incident_categories", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "external_id"
    t.index ["map_id"], name: "index_aim_incident_categories_on_map_id"
    t.index ["name"], name: "index_aim_incident_categories_on_name"
  end

  create_table "aim_incident_category_groups", id: :serial, force: :cascade do |t|
    t.integer "incident_category_id"
    t.integer "group_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "relation_kind", default: "both"
    t.index ["incident_category_id", "group_id"], name: "aim_incident_category_groups_index"
  end

  create_table "aim_incident_incident_priorities", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_incident_interface_reclassifications", id: :serial, force: :cascade do |t|
    t.integer "incident_interface_id"
    t.integer "incident_interface_classification_id"
    t.boolean "current"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["incident_interface_id", "incident_interface_classification_id"], name: "reclasf_idx"
  end

  create_table "aim_incident_interfaces", id: :serial, force: :cascade do |t|
    t.integer "incident_name"
    t.integer "position"
    t.boolean "documents"
    t.boolean "pictures"
    t.integer "description"
    t.boolean "comments"
    t.integer "map_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "occurrence_date"
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.integer "show_from_zoom"
    t.integer "show_until_zoom"
    t.integer "store"
    t.integer "incident_category_id"
    t.float "alert_time"
    t.text "user_description"
    t.boolean "send_to_reporter"
    t.integer "infrastructure"
    t.integer "supplier"
    t.datetime "deleted_at", precision: nil
    t.integer "cost", default: 0
    t.string "pdf_template"
    t.string "state_pdf_template"
    t.integer "service", default: 0
    t.index ["deleted_at"], name: "index_aim_incident_interfaces_on_deleted_at"
    t.index ["map_id"], name: "index_aim_incident_interfaces_on_map_id"
    t.index ["store"], name: "index_aim_incident_interfaces_on_store"
  end

  create_table "aim_incident_interfaces_supplier_service_types", id: false, force: :cascade do |t|
    t.integer "incident_interface_id"
    t.integer "supplier_service_type_id"
  end

  create_table "aim_incident_priorities", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "map_id"
    t.string "color"
    t.datetime "deleted_at", precision: nil
    t.index ["color"], name: "index_aim_incident_priorities_on_color"
    t.index ["deleted_at"], name: "index_aim_incident_priorities_on_deleted_at"
    t.index ["level"], name: "index_aim_incident_priorities_on_level"
    t.index ["map_id"], name: "index_aim_incident_priorities_on_map_id"
    t.index ["name"], name: "index_aim_incident_priorities_on_name"
  end

  create_table "aim_incident_state_qrs", id: :serial, force: :cascade do |t|
    t.integer "incident_state_id"
    t.string "qr_code"
    t.index ["incident_state_id"], name: "index_aim_incident_state_qrs_on_incident_state_id"
  end

  create_table "aim_incident_states", id: :serial, force: :cascade do |t|
    t.integer "incident_id"
    t.integer "state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
    t.integer "supplier_id"
    t.index ["incident_id"], name: "index_aim_incident_states_on_incident_id"
    t.index ["state_interface_id"], name: "index_aim_incident_states_on_state_interface_id"
    t.index ["supplier_id"], name: "index_aim_incident_states_on_supplier_id"
    t.index ["user_id"], name: "index_aim_incident_states_on_user_id"
  end

  create_table "aim_incidents", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "x"
    t.float "y"
    t.integer "layer_id"
    t.datetime "occurrence_date", precision: nil
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "state"
    t.integer "map_id"
    t.integer "user_id"
    t.float "lat"
    t.float "lng"
    t.string "address"
    t.string "region"
    t.string "municipality"
    t.string "external_id"
    t.integer "incident_priority_id"
    t.string "incident_priority_name"
    t.string "slug"
    t.integer "interest_point_id"
    t.string "interest_point_type"
    t.integer "current_state_id"
    t.integer "current_state_interface_id"
    t.integer "tag_id"
    t.integer "affected_item_id"
    t.string "affected_item_type"
    t.integer "finished_by_user"
    t.datetime "finished_at", precision: nil
    t.datetime "expires_at", precision: nil
    t.integer "infrastructure_id"
    t.integer "supplier_id"
    t.hstore "extra_data"
    t.boolean "from_checklist", default: false
    t.integer "checklist_step_interface_id"
    t.integer "checklist_id"
    t.string "checklist_slug"
    t.string "checklist_step_slug"
    t.boolean "sent_to_santafe", default: false
    t.float "near_distance_gis_layer_m"
    t.datetime "deleted_at", precision: nil
    t.string "cost_center"
    t.integer "parent_state_id"
    t.integer "service_id"
    t.index ["address"], name: "index_aim_incidents_on_address"
    t.index ["affected_item_type", "affected_item_id"], name: "index_aim_incidents_on_affected_item_type_and_affected_item_id"
    t.index ["checklist_id"], name: "index_aim_incidents_on_checklist_id"
    t.index ["current_state_id"], name: "index_aim_incidents_on_current_state_id"
    t.index ["current_state_interface_id"], name: "index_aim_incidents_on_current_state_interface_id"
    t.index ["deleted_at"], name: "index_aim_incidents_on_deleted_at"
    t.index ["expires_at"], name: "index_aim_incidents_on_expires_at"
    t.index ["external_id"], name: "index_aim_incidents_on_external_id"
    t.index ["finished_at"], name: "index_aim_incidents_on_finished_at"
    t.index ["finished_by_user"], name: "index_aim_incidents_on_finished_by_user"
    t.index ["from_checklist"], name: "index_aim_incidents_on_from_checklist"
    t.index ["incident_interface_id"], name: "index_aim_incidents_on_incident_interface_id"
    t.index ["incident_priority_id"], name: "index_aim_incidents_on_incident_priority_id"
    t.index ["infrastructure_id"], name: "index_aim_incidents_on_infrastructure_id"
    t.index ["interest_point_id", "interest_point_type"], name: "incident_interest_point_index"
    t.index ["layer_id"], name: "index_aim_incidents_on_layer_id"
    t.index ["map_id"], name: "index_aim_incidents_on_map_id"
    t.index ["municipality"], name: "index_aim_incidents_on_municipality"
    t.index ["occurrence_date"], name: "index_aim_incidents_on_occurrence_date"
    t.index ["parent_state_id"], name: "index_aim_incidents_on_parent_state_id"
    t.index ["region"], name: "index_aim_incidents_on_region"
    t.index ["service_id"], name: "index_aim_incidents_on_service_id"
    t.index ["slug", "checklist_step_interface_id"], name: "index_aim_incidents_on_slug_and_checklist_step_interface_id"
    t.index ["slug"], name: "index_aim_incidents_on_slug", unique: true
    t.index ["supplier_id"], name: "index_aim_incidents_on_supplier_id"
    t.index ["user_id"], name: "index_aim_incidents_on_user_id"
  end

  create_table "aim_infrastructure_configs", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
    t.boolean "require_maintenance_supplier", default: true
    t.boolean "require_maintenance_document", default: false
    t.index ["global_config_id"], name: "index_aim_infrastructure_configs_on_global_config_id"
  end

  create_table "aim_infrastructure_incidents", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_id"
    t.integer "maintainer_id"
    t.string "event"
    t.text "comments"
    t.integer "solver_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "state"
    t.integer "state_number"
    t.index ["maintainer_id"], name: "index_aim_infrastructure_incidents_on_maintainer_id"
    t.index ["solver_id"], name: "index_aim_infrastructure_incidents_on_solver_id"
  end

  create_table "aim_infrastructures", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.hstore "properties"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["properties"], name: "aim_infrastructures_properties_index", using: :gin
  end

  create_table "aim_instalations", id: :serial, force: :cascade do |t|
    t.string "os"
    t.string "device_id"
    t.datetime "instalation_date", precision: nil
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["map_id"], name: "index_aim_instalations_on_map_id"
  end

  create_table "aim_interest_point_metadata", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "message"
    t.integer "stock"
    t.datetime "init_date", precision: nil
    t.datetime "end_date", precision: nil
    t.string "access_level"
    t.string "category"
    t.string "code"
    t.integer "category_id"
    t.string "still_valid"
    t.integer "interest_point_id"
    t.text "legal"
    t.integer "proximity_trigger_range"
    t.integer "map_id"
    t.string "use_instructions"
    t.string "type"
    t.boolean "claimable"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "video_file_name"
    t.string "video_content_type"
    t.integer "video_file_size"
    t.datetime "video_updated_at", precision: nil
    t.index ["map_id"], name: "index_aim_interest_point_metadata_on_map_id"
  end

  create_table "aim_interest_point_metadata_bindings", id: :serial, force: :cascade do |t|
    t.integer "interest_point_id"
    t.integer "interest_point_metadata_id"
    t.string "interest_point_type"
    t.string "interest_point_metadata_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_interest_point_states", id: :serial, force: :cascade do |t|
    t.string "comment"
    t.datetime "modified_at", precision: nil
    t.integer "interest_point_id"
    t.integer "state_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "user_id"
    t.index ["interest_point_id"], name: "index_aim_interest_point_states_on_interest_point_id"
    t.index ["state_id"], name: "index_aim_interest_point_states_on_state_id"
  end

  create_table "aim_interest_point_translations", id: :serial, force: :cascade do |t|
    t.integer "aim_interest_point_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "description"
    t.string "specialty"
    t.string "average_consumption"
    t.string "schedule"
    t.string "smoker_space"
    t.index ["aim_interest_point_id"], name: "index_aim_interest_point_translations_on_aim_interest_point_id"
    t.index ["locale"], name: "index_aim_interest_point_translations_on_locale"
  end

  create_table "aim_interest_points", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "show_from_zoom"
    t.integer "radius"
    t.integer "rotation", default: 0
    t.string "font_color"
    t.string "font_size"
    t.string "text"
    t.string "type"
    t.datetime "occured_at", precision: nil, default: "2016-07-26 19:02:24"
    t.integer "map_id"
    t.integer "user_id"
    t.integer "location_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "comment"
    t.integer "sector_id"
    t.integer "z_index", default: 11
    t.datetime "deleted_at", precision: nil
    t.datetime "authorization_start_at", precision: nil
    t.datetime "authorization_ends_at", precision: nil
    t.boolean "approved"
    t.integer "authorized_by"
    t.string "token"
    t.integer "location_group_id"
    t.string "color"
    t.string "uuid"
    t.float "visibility_radius"
    t.float "angle_start"
    t.float "angle_end"
    t.integer "user_timestamp"
    t.integer "uncertainty_radius"
    t.integer "vision_angle"
    t.integer "minor"
    t.integer "mayor"
    t.boolean "has_position"
    t.string "store_type"
    t.string "map_logo_url"
    t.string "menu_logo_url"
    t.boolean "remodeling", default: false
    t.boolean "highlighted", default: false
    t.boolean "special_offers", default: false
    t.string "capability"
    t.boolean "gift_certificate", default: false
    t.hstore "properties"
    t.string "suc"
    t.string "phone"
    t.string "contact_mail"
    t.string "web_page"
    t.string "facebook_page"
    t.string "twitter_page"
    t.string "year"
    t.geometry "position", limit: {:srid=>0, :type=>"st_point"}
    t.string "encrypted_password"
    t.integer "lessee_id"
    t.string "qr_code"
    t.integer "qr_code_type", default: 0
    t.integer "public_state", default: 0
    t.boolean "inactive", default: false
    t.index ["deleted_at"], name: "index_aim_interest_points_on_deleted_at"
    t.index ["location_id"], name: "index_aim_interest_points_on_location_id"
    t.index ["map_id"], name: "index_aim_interest_points_on_map_id"
    t.index ["user_id"], name: "index_aim_interest_points_on_user_id"
    t.index ["year"], name: "index_aim_interest_points_on_year"
  end

  create_table "aim_interest_points_suppliers", id: :serial, force: :cascade do |t|
    t.integer "interest_point_id"
    t.integer "supplier_id"
    t.integer "state", default: 1
  end

  create_table "aim_involved_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "involved_name"
    t.integer "rut"
    t.integer "phone"
    t.integer "address"
    t.integer "email"
    t.integer "birthdate"
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.integer "sex"
    t.integer "age"
    t.index ["incident_interface_id"], name: "index_aim_involved_interfaces_on_incident_interface_id"
  end

  create_table "aim_ip_categories", id: :serial, force: :cascade do |t|
    t.integer "category_id"
    t.integer "interest_point_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["category_id"], name: "index_aim_ip_categories_on_category_id"
    t.index ["interest_point_id"], name: "index_aim_ip_categories_on_interest_point_id"
  end

  create_table "aim_layer_translations", id: :serial, force: :cascade do |t|
    t.integer "aim_layer_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.index ["aim_layer_id"], name: "index_aim_layer_translations_on_aim_layer_id"
    t.index ["locale"], name: "index_aim_layer_translations_on_locale"
  end

  create_table "aim_layers", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "map_id"
    t.float "z"
    t.integer "number"
    t.float "meters_per_pixel"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "sector", default: "MALL"
    t.integer "center_node_id"
    t.boolean "visible", default: true
    t.string "background_image_file_name"
    t.string "background_image_content_type"
    t.integer "background_image_file_size"
    t.datetime "background_image_updated_at", precision: nil
    t.string "dimensions"
    t.index ["map_id"], name: "index_aim_layers_on_map_id"
    t.index ["visible"], name: "index_aim_layers_on_visible"
  end

  create_table "aim_locations", id: :serial, force: :cascade do |t|
    t.float "x"
    t.float "y"
    t.integer "center"
    t.integer "layer_id"
    t.string "type"
    t.string "name"
    t.integer "shape_id"
    t.integer "location_group_id"
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.integer "user_id"
    t.integer "uncertainty_radius"
    t.integer "angle_vision"
    t.float "time_stamp"
    t.boolean "has_position"
    t.integer "seconds_on_the_day"
    t.integer "faction_id"
    t.integer "surveillance_zone_id"
    t.boolean "is_in_surveillance_zone"
    t.index ["deleted_at"], name: "index_aim_locations_on_deleted_at"
    t.index ["faction_id"], name: "index_aim_locations_on_faction_id"
    t.index ["layer_id"], name: "index_aim_locations_on_layer_id"
    t.index ["location_group_id"], name: "index_aim_locations_on_location_group_id"
    t.index ["shape_id"], name: "index_aim_locations_on_shape_id"
    t.index ["surveillance_zone_id"], name: "index_aim_locations_on_surveillance_zone_id"
  end

  create_table "aim_loggable_entities", id: :serial, force: :cascade do |t|
    t.integer "loggable_id"
    t.string "loggable_type"
    t.integer "user_id"
    t.datetime "deleted_at", precision: nil
    t.index ["loggable_type", "loggable_id"], name: "index_aim_loggable_entities_on_loggable_type_and_loggable_id"
    t.index ["user_id"], name: "index_aim_loggable_entities_on_user_id"
  end

  create_table "aim_loggable_historical_records", id: :serial, force: :cascade do |t|
    t.integer "historical_record_id"
    t.integer "loggable_id"
    t.string "loggable_type"
  end

  create_table "aim_maintainer_works", id: :serial, force: :cascade do |t|
    t.integer "maintenance_work_id"
    t.integer "maintainer_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["maintainer_id"], name: "index_aim_maintainer_works_on_maintainer_id"
    t.index ["maintenance_work_id"], name: "index_aim_maintainer_works_on_maintenance_work_id"
  end

  create_table "aim_maintenance_infrastructure_categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.integer "map_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["map_id"], name: "index_aim_maintenance_infrastructure_categories_on_map_id"
    t.index ["name"], name: "index_aim_maintenance_infrastructure_categories_on_name"
  end

  create_table "aim_maintenance_infrastructure_category_groups", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_category_id"
    t.integer "group_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "relation_kind", default: "both"
    t.index ["infrastructure_category_id"], name: "a_maint_infras_cat_group_category_id"
  end

  create_table "aim_maintenance_infrastructure_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "icon_file_name"
    t.string "icon_content_type"
    t.integer "icon_file_size"
    t.datetime "icon_updated_at", precision: nil
    t.integer "description"
    t.integer "price"
    t.integer "infrastructure_category_id"
    t.integer "maintenance_interval"
    t.integer "map_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "position"
    t.integer "geometry"
    t.integer "approaching_maintenance_days"
    t.integer "category_id"
    t.datetime "deleted_at", precision: nil
    t.boolean "m_purchase_order_required", default: false
    t.boolean "m_quote_number_required", default: false
    t.boolean "m_net_amount_required", default: false
    t.index ["category_id"], name: "index_aim_maintenance_infrastructure_interfaces_on_category_id"
    t.index ["deleted_at"], name: "index_aim_maintenance_infrastructure_interfaces_on_deleted_at"
    t.index ["map_id"], name: "index_aim_maintenance_infrastructure_interfaces_on_map_id"
  end

  create_table "aim_maintenance_infrastructure_interfaces_groups", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_interface_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_infrastructure_interfaces_groups_on_group_id"
    t.index ["infrastructure_interface_id"], name: "index_infrastructure_interfaces_groups_on_infra_interf_id"
  end

  create_table "aim_maintenance_infrastructure_interfaces_suppliers", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_interface_id"
    t.integer "supplier_id"
    t.index ["infrastructure_interface_id"], name: "index_infrastructure_interfaces_suppliers_on_infra_interf_id"
    t.index ["supplier_id"], name: "index_infrastructure_interfaces_suppliers_on_supplier_id"
  end

  create_table "aim_maintenance_infrastructure_maintenances", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_id"
    t.datetime "maintenance_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "supplier_id"
    t.string "purchase_order"
    t.string "quote_number"
    t.integer "net_amount"
    t.integer "scheduled_maintenance_id"
    t.integer "currency_id"
    t.index ["currency_id"], name: "maintenance_currency_index"
    t.index ["infrastructure_id"], name: "index_aim_maintenance_infrastructure_maintenances_on_infrast_id"
    t.index ["supplier_id"], name: "index_aim_maintenance_infra_maintenances_on_supplier_id "
  end

  create_table "aim_maintenance_infrastructure_text_field_interfaces", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_interface_id"
    t.string "name"
    t.boolean "required"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["infrastructure_interface_id"], name: "index_aim_maintenance_infr_txt_fld_interfs_on_infr_intrf_id"
  end

  create_table "aim_maintenance_infrastructure_text_fields", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_id"
    t.integer "infrastructure_text_field_interface_id"
    t.string "value"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["infrastructure_id"], name: "index_aim_maintenance_infrastructure_text_fields_on_infr_id"
    t.index ["infrastructure_text_field_interface_id"], name: "index_aim_maintenance_infr_text_flds_on_infr_text_fld_interf_id"
  end

  create_table "aim_maintenance_infrastructure_warranties", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_id"
    t.string "name"
    t.date "deadline"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["infrastructure_id"], name: "index_aim_maintenance_infras_warranties_on_infrastructure_id"
  end

  create_table "aim_maintenance_infrastructures", id: :serial, force: :cascade do |t|
    t.integer "infrastructure_interface_id"
    t.string "manufacturer"
    t.string "model"
    t.integer "price"
    t.string "qr_code"
    t.datetime "purchase_date", precision: nil
    t.datetime "next_maintenance_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "map_id"
    t.integer "qr_code_type"
    t.text "description"
    t.integer "layer_id"
    t.geometry "point", limit: {:srid=>0, :type=>"st_point"}
    t.geometry "polygons", limit: {:srid=>0, :type=>"multi_polygon"}
    t.string "external_id"
    t.string "slug"
    t.datetime "deleted_at", precision: nil
    t.index ["deleted_at"], name: "index_aim_maintenance_infrastructures_on_deleted_at"
    t.index ["infrastructure_interface_id"], name: "index_aim_maintenance_infrastructures_on_infrast_interface_id"
    t.index ["layer_id"], name: "index_aim_maintenance_infrastructures_on_layer_id"
    t.index ["map_id"], name: "index_aim_maintenance_infrastructures_on_map_id"
    t.index ["slug"], name: "index_aim_maintenance_infrastructures_on_slug"
  end

  create_table "aim_maintenance_scheduled_maintenances", id: :serial, force: :cascade do |t|
    t.text "description"
    t.integer "state", default: 0
    t.date "date"
    t.integer "infrastructure_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.date "limit_date"
    t.index ["infrastructure_id"], name: "index_scheduled_maintenance_infra"
    t.index ["state"], name: "index_scheduled_maintenance_state"
  end

  create_table "aim_maintenance_tasks", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.float "duration"
    t.integer "required_personal"
    t.hstore "properties"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["code"], name: "index_aim_maintenance_tasks_on_code"
    t.index ["name"], name: "index_aim_maintenance_tasks_on_name"
    t.index ["properties"], name: "index_aim_maintenance_tasks_on_properties", using: :gin
    t.index ["required_personal"], name: "index_aim_maintenance_tasks_on_required_personal"
  end

  create_table "aim_maintenance_tasks_tools", id: :serial, force: :cascade do |t|
    t.integer "maintenance_task_id"
    t.integer "maintenance_tool_id"
    t.integer "replacement_tool_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_maintenance_tools", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_maintenance_works", id: :serial, force: :cascade do |t|
    t.integer "maintenance_task_id"
    t.integer "reporter_id"
    t.text "description"
    t.string "section"
    t.float "duration"
    t.integer "expiration"
    t.date "scheduled_date"
    t.string "scheduled_hour"
    t.text "tools"
    t.string "state"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at", precision: nil
    t.boolean "inventored"
    t.string "finish_attachment_file_name"
    t.string "finish_attachment_content_type"
    t.integer "finish_attachment_file_size"
    t.datetime "finish_attachment_updated_at", precision: nil
    t.integer "state_number"
    t.index ["maintenance_task_id"], name: "index_aim_maintenance_works_on_maintenance_task_id"
    t.index ["reporter_id"], name: "index_aim_maintenance_works_on_reporter_id"
    t.index ["scheduled_date", "scheduled_hour"], name: "work_schedule_index"
    t.index ["state"], name: "index_aim_maintenance_works_on_state"
  end

  create_table "aim_map_classifications", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "classification_color"
    t.string "classification_text_color"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at", precision: nil
  end

  create_table "aim_map_credential_types", id: :serial, force: :cascade do |t|
    t.boolean "default_type", default: false
    t.integer "map_id"
    t.integer "credential_type"
    t.index ["map_id"], name: "index_aim_map_credential_types_on_map_id"
  end

  create_table "aim_map_custom_field_configurations", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.index ["map_id"], name: "index_aim_map_custom_field_configurations_on_map_id"
  end

  create_table "aim_map_districts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_map_for_report_users", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["map_id"], name: "index_aim_map_for_report_users_on_map_id"
    t.index ["user_id"], name: "index_aim_map_for_report_users_on_user_id"
  end

  create_table "aim_map_limited_request_types", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "limited_request_type_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["limited_request_type_id"], name: "index_aim_map_limited_request_types_on_limited_request_type_id"
    t.index ["map_id"], name: "index_aim_map_limited_request_types_on_map_id"
  end

  create_table "aim_map_schedules", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "map_id"
    t.string "days"
    t.time "open_time"
    t.time "close_time"
    t.integer "priority", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["map_id"], name: "index_aim_map_schedules_on_map_id"
  end

  create_table "aim_map_social_links", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.string "url"
    t.string "url_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["map_id"], name: "index_aim_map_social_links_on_map_id"
  end

  create_table "aim_map_users", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "user_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["map_id"], name: "index_aim_map_users_on_map_id"
    t.index ["user_id"], name: "index_aim_map_users_on_user_id"
  end

  create_table "aim_maps", id: :serial, force: :cascade do |t|
    t.string "name"
    t.float "top_left_x"
    t.float "top_left_y"
    t.integer "max_zoom"
    t.float "bottom_right_x"
    t.float "max_resolution"
    t.float "bottom_right_y"
    t.integer "stores_show_from_zoom"
    t.integer "features_radius", default: 19
    t.integer "range", default: 130
    t.string "street"
    t.integer "street_number"
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.string "kind"
    t.string "alias"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "last_update", precision: nil
    t.datetime "last_change", precision: nil
    t.hstore "zoom_matrix"
    t.hstore "adjustment_data"
    t.float "map_radius"
    t.float "map_latitude"
    t.float "map_longitude"
    t.float "time_between_notifications"
    t.integer "max_notifications_per_period"
    t.float "notifications_time_period"
    t.boolean "scaled_stores", default: false
    t.hstore "properties"
    t.integer "until_zoom"
    t.integer "real_min_zoom"
    t.integer "initial_zoom"
    t.string "authorization_user_manual_file_name"
    t.string "authorization_user_manual_content_type"
    t.integer "authorization_user_manual_file_size"
    t.datetime "authorization_user_manual_updated_at", precision: nil
    t.integer "loader_version", default: 0
    t.integer "tiles_version", default: 0
    t.string "incident_positioning_system", default: "core_incidents_pos"
    t.string "country_code"
    t.string "region_code"
    t.integer "map_classification_id"
    t.integer "map_district_id"
    t.float "map_orientation"
    t.boolean "fusion_table_on_start", default: false
    t.string "time_zone"
    t.datetime "deleted_at", precision: nil
    t.float "sales_room_m2"
    t.integer "property_type", default: 0
    t.string "cost_center"
    t.boolean "show_custom_fields", default: false
    t.integer "external_id"
    t.index ["deleted_at"], name: "index_aim_maps_on_deleted_at"
    t.index ["map_classification_id"], name: "index_aim_maps_on_map_classification_id"
    t.index ["map_district_id"], name: "index_aim_maps_on_map_district_id"
    t.index ["time_zone"], name: "index_aim_maps_on_time_zone"
  end

  create_table "aim_maps_suppliers", id: :serial, force: :cascade do |t|
    t.integer "supplier_id"
    t.integer "map_id"
    t.index ["map_id"], name: "index_aim_maps_suppliers_on_map_id"
    t.index ["supplier_id"], name: "index_aim_maps_suppliers_on_supplier_id"
  end

  create_table "aim_maps_task_responsibles", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "responsible_id"
    t.index ["map_id"], name: "index_aim_maps_task_responsibles_on_map_id"
    t.index ["responsible_id"], name: "index_aim_maps_task_responsibles_on_responsible_id"
  end

  create_table "aim_maps_tasks", id: :serial, force: :cascade do |t|
    t.integer "map_id"
    t.integer "task_id"
    t.index ["map_id"], name: "index_aim_maps_tasks_on_map_id"
    t.index ["task_id"], name: "index_aim_maps_tasks_on_task_id"
  end

  create_table "aim_model_monitors", id: :serial, force: :cascade do |t|
    t.string "owner_type"
    t.integer "owner_id"
    t.string "state", default: "created"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "map_id"
  end

  create_table "aim_module_notification_global_configs", id: :serial, force: :cascade do |t|
    t.integer "module_notification_id"
    t.integer "global_config_id"
  end

  create_table "aim_module_notifications", id: :serial, force: :cascade do |t|
    t.text "text"
    t.integer "modules", array: true
    t.datetime "from_date", precision: nil
    t.datetime "until_date", precision: nil
  end

  create_table "aim_monthly_common_expenses", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "date"
    t.decimal "amount"
    t.integer "currency_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_monthly_common_expenses_on_currency_id"
    t.index ["store_id"], name: "index_aim_monthly_common_expenses_on_store_id"
  end

  create_table "aim_monthly_promotional_funds", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "date"
    t.decimal "amount"
    t.integer "currency_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_monthly_promotional_funds_on_currency_id"
    t.index ["store_id"], name: "index_aim_monthly_promotional_funds_on_store_id"
  end

  create_table "aim_monthly_rents", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "date"
    t.decimal "amount"
    t.integer "currency_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_monthly_rents_on_currency_id"
    t.index ["store_id"], name: "index_aim_monthly_rents_on_store_id"
  end

  create_table "aim_monthly_sales", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "date"
    t.decimal "amount"
    t.integer "currency_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_monthly_sales_on_currency_id"
    t.index ["store_id"], name: "index_aim_monthly_sales_on_store_id"
  end

  create_table "aim_normative_validates", id: :serial, force: :cascade do |t|
    t.integer "normative_id"
    t.integer "owner_validable_id"
    t.string "owner_validable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["normative_id"], name: "aim_document_normative_validates_normative"
    t.index ["owner_validable_type", "owner_validable_id"], name: "aim_document_normative_validates_owner_validable"
  end

  create_table "aim_normatives", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "state"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "owner_normative_id"
    t.string "owner_normative_type"
    t.index ["owner_normative_type", "owner_normative_id"], name: "normatives_owner_normative"
  end

  create_table "aim_other_expenses", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.integer "reason"
    t.decimal "amount"
    t.integer "currency_id"
    t.decimal "percentage"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_other_expenses_on_currency_id"
    t.index ["store_id"], name: "index_aim_other_expenses_on_store_id"
  end

  create_table "aim_ownerable_users", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "ownerable_id"
    t.string "ownerable_type"
    t.index ["ownerable_type", "ownerable_id"], name: "abo_ownerable_id"
    t.index ["user_id"], name: "abo_user_id"
  end

  create_table "aim_permission_groups", id: :serial, force: :cascade do |t|
    t.integer "permissible_id"
    t.string "permissible_type"
    t.integer "group_id"
    t.integer "permission"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["permissible_type", "permissible_id"], name: "permissible_index"
  end

  create_table "aim_phones", id: :serial, force: :cascade do |t|
    t.integer "phone_owner_id"
    t.string "phone_owner_type"
    t.string "number"
    t.integer "priority", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_pictures", id: :serial, force: :cascade do |t|
    t.integer "attachable_id"
    t.string "attachable_type"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at", precision: nil
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
    t.string "file_fingerprint"
    t.string "slug"
    t.string "full_url"
    t.index ["attachable_type", "attachable_id"], name: "index_aim_pictures_on_attachable_type_and_attachable_id"
    t.index ["slug"], name: "index_aim_pictures_on_slug"
    t.index ["user_id"], name: "index_aim_pictures_on_user_id"
  end

  create_table "aim_position_workers", id: :serial, force: :cascade do |t|
    t.integer "position_id"
    t.integer "contact_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["contact_id"], name: "index_aim_position_workers_on_contact_id"
    t.index ["position_id"], name: "index_aim_position_workers_on_position_id"
  end

  create_table "aim_positions", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "position_type", default: 0
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_posts", id: :serial, force: :cascade do |t|
    t.text "body"
    t.integer "author_id"
    t.integer "map_id"
    t.string "title"
    t.boolean "published", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at", precision: nil
  end

  create_table "aim_previous_state_interfaces", id: :serial, force: :cascade do |t|
    t.integer "previous_state_interface_id"
    t.integer "state_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["previous_state_interface_id"], name: "aim_prev_state_interface_prev"
    t.index ["state_interface_id"], name: "aim_prev_state_interface_current"
  end

  create_table "aim_procedure_executions", id: :serial, force: :cascade do |t|
    t.datetime "started_at", precision: nil
    t.datetime "ended_at", precision: nil
    t.integer "user_id"
    t.integer "procedure_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["procedure_id"], name: "index_aim_procedure_executions_on_procedure_id"
    t.index ["user_id"], name: "index_aim_procedure_executions_on_user_id"
  end

  create_table "aim_procedures", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "category_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["category_id"], name: "index_aim_procedures_on_category_id"
  end

  create_table "aim_profiles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "description"
    t.string "usage", default: "base"
    t.text "initial_role_ids"
  end

  create_table "aim_profiles_roles", id: :serial, force: :cascade do |t|
    t.integer "role_id"
    t.integer "profile_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["profile_id"], name: "index_aim_profiles_roles_on_profile_id"
    t.index ["role_id"], name: "index_aim_profiles_roles_on_role_id"
  end

  create_table "aim_profiling_groups", id: :serial, force: :cascade do |t|
    t.integer "profiling_id"
    t.integer "group_id"
    t.string "relation_kind", default: "both"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["group_id"], name: "index_aim_profiling_groups_on_group_id"
    t.index ["profiling_id"], name: "index_aim_profiling_groups_on_profiling_id"
    t.index ["relation_kind"], name: "index_aim_profiling_groups_on_relation_kind"
  end

  create_table "aim_profilings", id: :serial, force: :cascade do |t|
    t.integer "profileable_id"
    t.string "profileable_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_promotional_funds", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.integer "reason"
    t.decimal "amount"
    t.integer "currency_id"
    t.decimal "percentage"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_promotional_funds_on_currency_id"
    t.index ["store_id"], name: "index_aim_promotional_funds_on_store_id"
  end

  create_table "aim_qr_config_interfaces", id: :serial, force: :cascade do |t|
    t.integer "qr_presence", default: 0
    t.integer "state_interface_id"
    t.integer "validable_kind"
    t.index ["state_interface_id"], name: "index_aim_qr_config_interfaces_on_state_interface_id"
  end

  create_table "aim_record_counters", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.integer "target_id"
    t.string "target_type"
    t.integer "total", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["owner_id", "owner_type"], name: "index_aim_record_counters_on_owner_id_and_owner_type"
  end

  create_table "aim_rents", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.integer "reason"
    t.decimal "amount"
    t.integer "currency_id"
    t.decimal "percentage"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "state"
    t.index ["currency_id"], name: "index_aim_rents_on_currency_id"
    t.index ["store_id"], name: "index_aim_rents_on_store_id"
  end

  create_table "aim_requests_global_configs", id: :serial, force: :cascade do |t|
    t.boolean "autocomplete_identifications", default: false
  end

  create_table "aim_reviews", id: :serial, force: :cascade do |t|
    t.float "grade"
    t.text "description"
    t.integer "assessable_id"
    t.string "assessable_type"
    t.integer "origin_id"
    t.string "origin_type"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["assessable_type", "assessable_id"], name: "index_aim_reviews_on_assessable_type_and_assessable_id"
    t.index ["origin_type", "origin_id"], name: "index_aim_reviews_on_origin_type_and_origin_id"
    t.index ["user_id"], name: "index_aim_reviews_on_user_id"
  end

  create_table "aim_revisions", id: :serial, force: :cascade do |t|
    t.integer "origin_id"
    t.integer "state", default: 0
    t.integer "number_version", default: 1
    t.integer "revisionable_id"
    t.string "revisionable_type"
    t.integer "user_id"
    t.datetime "approved_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "current", default: false
    t.index ["origin_id"], name: "index_aim_revisions_on_origin_id"
    t.index ["revisionable_type", "revisionable_id"], name: "aim_active_revision_revisionable"
    t.index ["revisionable_type"], name: "index_aim_revisions_on_revisionable_type"
    t.index ["user_id"], name: "index_aim_revisions_on_user_id"
  end

  create_table "aim_rule_validates", id: :serial, force: :cascade do |t|
    t.integer "normative_validate_id"
    t.integer "owner_validable_id"
    t.string "owner_validable_type"
    t.integer "rule_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["normative_validate_id"], name: "index_aim_rule_validates_on_normative_validate_id"
    t.index ["owner_validable_type", "owner_validable_id"], name: "aim_document_rule_validates_owner_validable"
    t.index ["rule_id"], name: "index_aim_rule_validates_on_rule_id"
  end

  create_table "aim_rules", id: :serial, force: :cascade do |t|
    t.integer "normative_id"
    t.integer "validation_type", default: 0
    t.boolean "default", default: false
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "rule_id"
    t.index ["normative_id"], name: "index_aim_rules_on_normative_id"
    t.index ["rule_id"], name: "index_aim_rules_on_rule_id"
  end

  create_table "aim_schedulers", id: :serial, force: :cascade do |t|
    t.integer "schedulable_id"
    t.string "schedulable_type"
    t.integer "recurrence_type"
    t.integer "montly_day"
    t.string "job_id"
    t.datetime "time_at", precision: nil
    t.boolean "sunday", default: false
    t.boolean "monday", default: false
    t.boolean "tuesday", default: false
    t.boolean "wednesday", default: false
    t.boolean "thursday", default: false
    t.boolean "friday", default: false
    t.boolean "saturday", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["schedulable_type", "schedulable_id"], name: "index_aim_schedulers_on_schedulable_type_and_schedulable_id"
  end

  create_table "aim_security_configs", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
    t.string "blacklist_message"
    t.index ["global_config_id"], name: "index_aim_security_configs_on_global_config_id"
  end

  create_table "aim_state_interface_modifiable_by_groups", id: :serial, force: :cascade do |t|
    t.integer "state_interface_id"
    t.integer "group_id"
    t.index ["group_id"], name: "aim_si_modifiable_by_groups_group_id"
    t.index ["state_interface_id"], name: "aim_si_modifiable_by_groups_si_id"
  end

  create_table "aim_state_interface_notify_to_groups", id: :serial, force: :cascade do |t|
    t.integer "state_interface_id"
    t.integer "group_id"
    t.index ["group_id"], name: "aim_si_notify_to_groups_group_id"
    t.index ["state_interface_id"], name: "aim_si_notify_to_groups_si_id"
  end

  create_table "aim_state_interfaces", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.boolean "comments"
    t.boolean "pictures"
    t.boolean "documents"
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "icon_name"
    t.boolean "send_email", default: false
    t.boolean "initial", default: false
    t.boolean "final", default: false
    t.datetime "deleted_at", precision: nil
    t.boolean "single", default: false
    t.boolean "has_review", default: false
    t.integer "review_type_id"
    t.boolean "has_supplier", default: false
    t.integer "aim_state_interfaces_id"
    t.integer "min_review"
    t.integer "max_review"
    t.boolean "enable_cost"
    t.integer "comments_presence", default: 0
    t.integer "pictures_presence", default: 0
    t.integer "documents_presence", default: 0
    t.boolean "qrs", default: false
    t.index ["final"], name: "index_aim_state_interfaces_on_final"
    t.index ["incident_interface_id"], name: "index_aim_state_interfaces_on_incident_interface_id"
    t.index ["initial"], name: "index_aim_state_interfaces_on_initial"
    t.index ["send_email"], name: "index_aim_state_interfaces_on_send_email"
    t.index ["single"], name: "index_aim_state_interfaces_on_single"
  end

  create_table "aim_state_interfaces_supplier_service_types", id: false, force: :cascade do |t|
    t.integer "state_interface_id", null: false
    t.integer "supplier_service_type_id", null: false
  end

  create_table "aim_states", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["deleted_at"], name: "index_aim_states_on_deleted_at"
  end

  create_table "aim_store_contacts", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.string "name"
    t.string "job"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_id"], name: "index_aim_store_contacts_on_store_id"
  end

  create_table "aim_store_details", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.string "location_description"
    t.string "contract_number"
    t.string "contract_designation"
    t.string "business_type"
    t.string "chain"
    t.string "fantasy_name"
    t.string "location_number"
    t.decimal "location_area"
    t.string "location_enclosure_code"
    t.boolean "in_trial"
    t.string "prefered_ci"
    t.date "contract_start_date"
    t.date "contract_end_date"
    t.date "contract_end_notification_date"
    t.integer "contract_end_notification_days"
    t.date "contract_first_signature_date"
    t.date "contract_next_renovation_date"
    t.boolean "contract_early_ending"
    t.boolean "contract_automatic_renewal"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "initial_fp_fee"
    t.integer "initial_fp_fee_currency_id"
    t.decimal "architecture_fee"
    t.integer "architecture_fee_currency_id"
    t.string "contract_identification"
    t.string "contract_business_name"
    t.string "location_rol"
    t.integer "offer_number"
    t.index ["architecture_fee_currency_id"], name: "index_aim_store_details_on_architecture_fee_currency_id"
    t.index ["initial_fp_fee_currency_id"], name: "index_aim_store_details_on_initial_fp_fee_currency_id"
    t.index ["store_id"], name: "index_aim_store_details_on_store_id"
  end

  create_table "aim_store_document_requests", id: :serial, force: :cascade do |t|
    t.integer "state", default: 0
    t.text "comments"
    t.datetime "expiration_date", precision: nil
    t.integer "store_document_type_id"
    t.integer "store_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_document_type_id"], name: "index_aim_store_document_requests_on_store_document_type_id"
    t.index ["store_id"], name: "index_aim_store_document_requests_on_store_id"
  end

  create_table "aim_store_document_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "aim_store_normative_validates", id: :serial, force: :cascade do |t|
    t.integer "store_normative_id"
    t.integer "owner_validable_id"
    t.string "owner_validable_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["owner_validable_type", "owner_validable_id"], name: "aim_store_document_normative_validates_owner_validable"
    t.index ["store_normative_id"], name: "aim_store_document_normative_validates_normative"
  end

  create_table "aim_store_normatives", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "state"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "owner_store_normative_id"
    t.string "owner_store_normative_type"
    t.index ["owner_store_normative_type", "owner_store_normative_id"], name: "normatives_owner_store_normative"
  end

  create_table "aim_store_notification_configs", id: :serial, force: :cascade do |t|
    t.integer "store_detail_id"
    t.boolean "active", default: false
    t.text "message"
    t.integer "incident_interface_id"
    t.index ["active"], name: "index_aim_store_notification_configs_on_active"
    t.index ["incident_interface_id"], name: "index_aim_store_notification_configs_on_incident_interface_id"
    t.index ["store_detail_id"], name: "index_aim_store_notification_configs_on_store_detail_id"
  end

  create_table "aim_store_notification_configs_groups", id: false, force: :cascade do |t|
    t.integer "aim_store_notification_config_id"
    t.integer "group_id"
    t.index ["aim_store_notification_config_id"], name: "index_notification_config"
    t.index ["group_id"], name: "index_aim_store_notification_configs_groups_on_group_id"
  end

  create_table "aim_store_rule_validates", id: :serial, force: :cascade do |t|
    t.integer "store_normative_validate_id"
    t.integer "owner_validable_id"
    t.string "owner_validable_type"
    t.integer "store_rule_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["owner_validable_type", "owner_validable_id"], name: "aim_store_document_rule_validates_owner_validable"
    t.index ["store_normative_validate_id"], name: "index_aim_store_rule_validates_on_store_normative_validate_id"
    t.index ["store_rule_id"], name: "index_aim_store_rule_validates_on_store_rule_id"
  end

  create_table "aim_store_rules", id: :serial, force: :cascade do |t|
    t.integer "store_normative_id"
    t.integer "validation_type", default: 0
    t.boolean "default", default: false
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["store_normative_id"], name: "index_aim_store_rules_on_store_normative_id"
  end

  create_table "aim_supplier_contracts", id: :serial, force: :cascade do |t|
    t.integer "supplier_id"
    t.integer "map_id"
    t.integer "supplier_service_type_id"
    t.datetime "contract_from", precision: nil
    t.datetime "contract_to", precision: nil
    t.string "preventive_contract_cost"
    t.integer "payment_frecuency"
    t.integer "service_frecuency"
    t.string "emergency_call_cost"
    t.string "emergency_response_time"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_email"
  end

  create_table "aim_supplier_service_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_supplier_service_types_suppliers", id: false, force: :cascade do |t|
    t.integer "supplier_id"
    t.integer "supplier_service_type_id"
  end

  create_table "aim_suppliers", id: :serial, force: :cascade do |t|
    t.string "rut"
    t.string "address"
    t.string "phone"
    t.string "activities"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "email"
    t.string "business_name"
    t.integer "business_activity"
    t.datetime "deleted_at", precision: nil
    t.index ["business_activity"], name: "index_aim_suppliers_on_business_activity"
    t.index ["business_name"], name: "index_aim_suppliers_on_business_name"
    t.index ["deleted_at"], name: "index_aim_suppliers_on_deleted_at"
    t.index ["email"], name: "index_aim_suppliers_on_email"
  end

  create_table "aim_tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "incident_interface_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.float "alert_time"
    t.boolean "enable_alert_time", default: false
    t.index ["incident_interface_id"], name: "index_aim_tags_on_incident_interface_id"
  end

  create_table "aim_task_checklist_interfaces", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.integer "checklist_interface_id"
  end

  create_table "aim_task_event_days", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_aim_task_event_days_on_event_id"
    t.index ["task_id"], name: "index_aim_task_event_days_on_task_id"
  end

  create_table "aim_task_event_user_items", id: :serial, force: :cascade do |t|
    t.integer "event_user_id"
    t.integer "verifiable_id"
    t.string "verifiable_type"
    t.integer "status", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_task_event_users", id: :serial, force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.integer "status", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_task_events", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.integer "status", default: 0
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "event_day_id"
    t.index ["end_time"], name: "index_aim_task_events_on_end_time"
    t.index ["event_day_id"], name: "index_aim_task_events_on_event_day_id"
    t.index ["map_id"], name: "index_aim_task_events_on_map_id"
    t.index ["start_time"], name: "index_aim_task_events_on_start_time"
    t.index ["task_id"], name: "index_aim_task_events_on_task_id"
  end

  create_table "aim_task_external_links", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.string "name"
    t.string "url"
    t.index ["task_id"], name: "index_aim_task_external_links_on_task_id"
  end

  create_table "aim_task_notifications", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.integer "anticipation_time_value", default: 0
    t.integer "anticipation_time_type", default: 0
    t.integer "notification_type", default: 0
    t.integer "trigger_id"
    t.integer "anticipation_sign_type", default: 0
    t.integer "anticipation_condition_type", default: 0
    t.index ["task_id"], name: "index_aim_task_notifications_on_task_id"
  end

  create_table "aim_task_recurrents", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.integer "recurrence_type"
    t.date "start_date"
    t.integer "time_repeat"
    t.date "end_date"
    t.integer "finish_type"
    t.boolean "all_day"
    t.integer "current_repeats"
    t.boolean "sunday"
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["task_id"], name: "index_aim_task_recurrents_on_task_id"
  end

  create_table "aim_task_responsibles", id: :serial, force: :cascade do |t|
    t.integer "task_id"
    t.integer "completion_type", default: 0
    t.integer "responsible_type", default: 0
    t.integer "supervisable_id"
    t.string "supervisable_type"
    t.datetime "updated_at", precision: nil
    t.index ["supervisable_type", "supervisable_id"], name: "aim_task_responsible_supervisable"
    t.index ["task_id"], name: "index_aim_task_responsibles_on_task_id"
  end

  create_table "aim_task_responsibles_groups", id: :serial, force: :cascade do |t|
    t.integer "group_id"
    t.integer "responsible_id"
    t.index ["group_id"], name: "index_aim_task_responsibles_groups_on_group_id"
    t.index ["responsible_id"], name: "index_aim_task_responsibles_groups_on_responsible_id"
  end

  create_table "aim_task_responsibles_users", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "responsible_id"
    t.index ["responsible_id"], name: "index_aim_task_responsibles_users_on_responsible_id"
    t.index ["user_id"], name: "index_aim_task_responsibles_users_on_user_id"
  end

  create_table "aim_tasks", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.text "description"
    t.string "color"
    t.string "time_zone", limit: 255, default: "UTC"
    t.integer "photo_type", default: 0
    t.integer "attachment_type", default: 0
    t.integer "comment_type", default: 0
    t.integer "status", default: 0
    t.boolean "is_all_day", default: false
    t.boolean "is_recurrent", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "execute_future_event", default: false
    t.index ["is_recurrent"], name: "index_aim_tasks_on_is_recurrent"
    t.index ["start_time"], name: "index_aim_tasks_on_start_time"
  end

  create_table "aim_template_storages", id: :serial, force: :cascade do |t|
    t.integer "config_id"
    t.string "config_type"
    t.text "body"
    t.string "path"
    t.string "locale"
    t.string "handler", default: "slim"
    t.boolean "partial", default: false
    t.string "format", default: "html"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "trigger_template_related"
    t.string "trigger_template_title"
  end

  create_table "aim_trigger_conditions", id: :serial, force: :cascade do |t|
    t.integer "trigger_id"
    t.string "condition_name"
    t.hstore "condition_params"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["condition_name"], name: "index_aim_trigger_conditions_on_condition_name"
    t.index ["trigger_id"], name: "index_aim_trigger_conditions_on_trigger_id"
  end

  create_table "aim_trigger_notify_to_groups", id: :serial, force: :cascade do |t|
    t.integer "trigger_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_aim_trigger_notify_to_groups_on_group_id"
    t.index ["trigger_id"], name: "index_aim_trigger_notify_to_groups_on_trigger_id"
  end

  create_table "aim_trigger_notify_to_users", id: :serial, force: :cascade do |t|
    t.integer "trigger_id"
    t.integer "user_id"
    t.index ["trigger_id"], name: "index_aim_trigger_notify_to_users_on_trigger_id"
    t.index ["user_id"], name: "index_aim_trigger_notify_to_users_on_user_id"
  end

  create_table "aim_trigger_records", id: :serial, force: :cascade do |t|
    t.integer "trigger_id"
    t.integer "triggerable_id"
    t.string "triggerable_type"
    t.boolean "success"
    t.text "message"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["trigger_id"], name: "index_aim_trigger_records_on_trigger_id"
    t.index ["triggerable_type", "triggerable_id", "trigger_id"], name: "trigerables"
    t.index ["triggerable_type", "triggerable_id"], name: "index_aim_trigger_records_on_triggerable_type__triggerable_id"
  end

  create_table "aim_triggers", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.string "action_name"
    t.hstore "action_params"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.boolean "must_satisfy_all_conditions"
    t.string "triggerable_type"
    t.datetime "deleted_at", precision: nil
    t.boolean "map_only_notification", default: true
    t.string "notify_others"
    t.boolean "send_email_recipients", default: false
    t.index ["name"], name: "index_aim_triggers_on_name"
    t.index ["owner_id", "owner_type"], name: "index_aim_triggers_on_owner_id_and_owner_type"
    t.index ["owner_type"], name: "index_aim_triggers_on_owner_type"
    t.index ["triggerable_type"], name: "index_aim_triggers_on_triggerable_type"
  end

  create_table "aim_turns", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "map_id"
    t.time "from_time"
    t.time "until_time"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_tutorial_configs", id: :serial, force: :cascade do |t|
    t.string "url"
  end

  create_table "aim_user_alert_states", id: :serial, force: :cascade do |t|
    t.string "state"
    t.integer "user_id"
    t.integer "user_alert_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "type"
    t.integer "location_id"
    t.index ["user_alert_id"], name: "index_aim_user_alert_states_on_user_alert_id"
    t.index ["user_id"], name: "index_aim_user_alert_states_on_user_id"
  end

  create_table "aim_user_alerts", id: :serial, force: :cascade do |t|
    t.string "message"
    t.integer "created_by"
    t.integer "sent_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "map_id"
    t.float "x"
    t.float "y"
    t.integer "layer_id"
    t.index ["map_id"], name: "index_aim_user_alerts_on_map_id"
  end

  create_table "aim_user_authorization_categories", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["category_id"], name: "index_aim_user_authorization_categories_on_category_id"
    t.index ["user_id"], name: "index_aim_user_authorization_categories_on_user_id"
  end

  create_table "aim_user_devices", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "device_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["device_id"], name: "index_aim_user_devices_on_device_id"
    t.index ["user_id"], name: "index_aim_user_devices_on_user_id"
  end

  create_table "aim_user_map_classifications", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "map_classification_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["map_classification_id"], name: "index_aim_user_map_classifications_on_map_classification_id"
    t.index ["user_id"], name: "index_aim_user_map_classifications_on_user_id"
  end

  create_table "aim_user_map_districts", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "map_district_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["map_district_id"], name: "index_aim_user_map_districts_on_map_district_id"
    t.index ["user_id"], name: "index_aim_user_map_districts_on_user_id"
  end

  create_table "aim_user_map_venues", id: :serial, force: :cascade do |t|
    t.integer "user_venue_id"
    t.integer "user_id"
    t.integer "map_id"
  end

  create_table "aim_user_module_notifications", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "module_notification_id"
    t.boolean "hide_notification", default: false
  end

  create_table "aim_user_options", id: :serial, force: :cascade do |t|
    t.boolean "daily_report"
    t.boolean "weekly_report"
    t.integer "user_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_user_password_configs", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
    t.boolean "active", default: false
    t.integer "expire_after"
    t.integer "expire_after_unit"
  end

  create_table "aim_user_procedures", id: :serial, force: :cascade do |t|
    t.integer "procedure_id"
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["procedure_id"], name: "index_aim_user_procedures_on_procedure_id"
    t.index ["user_id"], name: "index_aim_user_procedures_on_user_id"
  end

  create_table "aim_user_state_updates", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "state"
    t.text "message"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "previous_state"
    t.datetime "previous_state_updated_at", precision: nil
    t.index ["state"], name: "index_aim_user_state_updates_on_state"
    t.index ["user_id"], name: "index_aim_user_state_updates_on_user_id"
  end

  create_table "aim_user_task_turns", id: :serial, force: :cascade do |t|
    t.integer "user_task_id"
    t.integer "turn_id"
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_user_task_users", id: :serial, force: :cascade do |t|
    t.integer "user_task_id"
    t.integer "user_id"
    t.string "user_type"
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "state"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at", precision: nil
  end

  create_table "aim_user_task_zones", id: :serial, force: :cascade do |t|
    t.integer "user_task_id"
    t.integer "zone_id"
    t.string "zone_type"
    t.integer "map_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_user_tasks", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "from_date"
    t.date "until_date"
    t.string "day_of_week"
    t.integer "map_id"
    t.integer "task_id"
    t.string "state"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "still_valid"
    t.float "x"
    t.float "y"
    t.integer "layer_id"
  end

  create_table "aim_user_turns", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "turn_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_user_venues", id: :serial, force: :cascade do |t|
    t.string "title"
  end

  create_table "aim_users", id: :serial, force: :cascade do |t|
    t.float "serial_number"
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "role"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "token"
    t.datetime "deleted_at", precision: nil
    t.integer "map_id"
    t.string "type"
    t.string "rut"
    t.string "turn"
    t.string "address"
    t.string "gender"
    t.string "last_names"
    t.string "imei"
    t.string "username"
    t.geometry "position", limit: {:srid=>0, :type=>"st_point"}
    t.integer "zone_id"
    t.string "state"
    t.datetime "state_updated_at", precision: nil
    t.string "phone_number"
    t.string "external_id"
    t.datetime "password_changed_at", precision: nil
    t.datetime "last_activity_at", precision: nil
    t.datetime "expired_at", precision: nil
    t.datetime "locked_at", precision: nil
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.string "provider"
    t.string "initials"
    t.datetime "tracking_report", precision: nil
    t.string "slug"
    t.integer "current_loggable_type", default: 0
    t.boolean "deactivate"
    t.date "deactivation_date"
    t.integer "duration_range_id"
    t.boolean "temporary_password", default: false
    t.string "unique_session_id"
    t.string "encrypted_otp_secret"
    t.string "encrypted_otp_secret_iv"
    t.string "encrypted_otp_secret_salt"
    t.integer "consumed_timestep"
    t.boolean "otp_required_for_login"
    t.index ["confirmation_sent_at"], name: "index_aim_users_on_confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_aim_users_on_confirmation_token", unique: true
    t.index ["confirmed_at"], name: "index_aim_users_on_confirmed_at"
    t.index ["deleted_at"], name: "index_aim_users_on_deleted_at"
    t.index ["email"], name: "index_aim_users_on_email", unique: true
    t.index ["expired_at"], name: "index_aim_users_on_expired_at"
    t.index ["last_activity_at"], name: "index_aim_users_on_last_activity_at"
    t.index ["locked_at"], name: "index_aim_users_on_locked_at"
    t.index ["password_changed_at"], name: "index_aim_users_on_password_changed_at"
    t.index ["reset_password_token"], name: "index_aim_users_on_reset_password_token", unique: true
    t.index ["tracking_report"], name: "index_aim_users_on_tracking_report"
    t.index ["unlock_token"], name: "index_aim_users_on_unlock_token", unique: true
    t.index ["zone_id"], name: "index_aim_users_on_zone_id"
  end

  create_table "aim_users_locations", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.string "purpose"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "aim_validate_documents", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "document_type_id"
    t.integer "owner_validable_id"
    t.string "owner_validable_type"
    t.integer "state", default: 0
    t.string "name"
    t.datetime "expiration_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "authorization_date", precision: nil
    t.index ["document_type_id"], name: "aim_document_validate_documents_document_type"
    t.index ["owner_validable_type", "owner_validable_id"], name: "aim_document_validate_documents_owner_validable"
    t.index ["user_id"], name: "index_aim_validate_documents_on_user_id"
  end

  create_table "aim_vehicle_suppliers", id: :serial, force: :cascade do |t|
    t.integer "supplier_id"
    t.integer "vehicle_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["supplier_id"], name: "index_aim_vehicle_suppliers_on_supplier_id"
    t.index ["vehicle_id"], name: "index_aim_vehicle_suppliers_on_vehicle_id"
  end

  create_table "aim_vehicles", id: :serial, force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "patent"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "aim_warranties", id: :serial, force: :cascade do |t|
    t.integer "store_id"
    t.date "start_date"
    t.date "deadline"
    t.integer "kind"
    t.decimal "amount"
    t.integer "currency_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["currency_id"], name: "index_aim_warranties_on_currency_id"
    t.index ["store_id"], name: "index_aim_warranties_on_store_id"
  end

  create_table "aim_white_domains", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
    t.string "white_domain_name"
    t.string "white_domain_string"
  end

  create_table "aim_work_hours", id: :serial, force: :cascade do |t|
    t.integer "day"
    t.time "from_time"
    t.time "until_time"
    t.integer "schedulable_id"
    t.string "schedulable_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["schedulable_type", "schedulable_id"], name: "schedulable_index"
  end

  create_table "aim_worker_configs", id: :serial, force: :cascade do |t|
    t.integer "global_config_id"
  end

  create_table "aim_worker_document_versions", id: :serial, force: :cascade do |t|
    t.integer "worker_document_id"
    t.index ["worker_document_id"], name: "index_aim_worker_document_versions_on_worker_document_id"
  end

  create_table "aim_yearly_zones", id: :serial, force: :cascade do |t|
    t.integer "zone_id"
    t.string "year"
    t.integer "owner_id"
    t.string "owner_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["zone_id", "year", "owner_id", "owner_type"], name: "yearly_zone_owner_index"
  end

  create_table "aim_zipped_contents", id: :serial, force: :cascade do |t|
    t.integer "attachable_id"
    t.string "attachable_type"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "file_fingerprint"
    t.index ["attachable_id", "attachable_type"], name: "index_aim_zipped_contents_on_attachable_id_and_attachable_type"
  end

  create_table "aim_zone_hierarchies", id: :serial, force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "incident_type_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["incident_type_id"], name: "index_categories_on_incident_type_id"
  end

  create_table "clients", id: :serial, force: :cascade do |t|
    t.string "client_id"
    t.string "name"
    t.string "account_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "contract_clients", id: :serial, force: :cascade do |t|
    t.integer "contract_id"
    t.string "client_id"
    t.string "client_name"
    t.datetime "started_at", precision: nil
    t.datetime "ended_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["contract_id"], name: "index_contract_clients_on_contract_id"
  end

  create_table "contract_locals", id: :serial, force: :cascade do |t|
    t.integer "contract_id"
    t.string "local_id"
    t.datetime "added_at", precision: nil
    t.datetime "ended_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["contract_id"], name: "index_contract_locals_on_contract_id"
  end

  create_table "contracts", id: :serial, force: :cascade do |t|
    t.string "venue_id"
    t.string "contract_type"
    t.string "store_name"
    t.string "start_date"
    t.string "end_date"
    t.string "end_notification_date"
    t.string "first_signature_date"
    t.string "economic_unit"
    t.string "floor"
    t.datetime "created_at", precision: nil, null: false
    t.string "account_name"
    t.datetime "updated_at", precision: nil, null: false
    t.string "society_id"
    t.string "contract_number"
    t.string "economic_unit_id"
    t.string "venue_name"
    t.string "contract_id"
  end

  create_table "data_migrations", id: false, force: :cascade do |t|
    t.string "version", null: false
    t.index ["version"], name: "unique_data_migrations", unique: true
  end

  create_table "group_tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "group_tags_groups", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "group_tag_id"
    t.index ["group_id", "group_tag_id"], name: "group_id_group_tag_id", unique: true
    t.index ["group_id"], name: "index_group_tags_groups_on_group_id"
    t.index ["group_tag_id"], name: "index_group_tags_groups_on_group_tag_id"
  end

  create_table "groups", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "kind"
  end

  create_table "histories", id: :serial, force: :cascade do |t|
    t.string "update_at"
    t.string "status"
    t.string "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "incident_instances", id: :serial, force: :cascade do |t|
    t.string "comments"
    t.string "category_name"
    t.string "incident_type_name"
    t.string "tag_name"
    t.string "mall_name"
    t.string "store_name"
    t.string "store_contract_number"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "sender_email"
    t.string "state_name"
    t.string "responsable_group"
    t.string "responsable_user"
  end

  create_table "incident_types", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "incident_views", id: :serial, force: :cascade do |t|
    t.string "subject"
    t.string "comments"
    t.string "category_name"
    t.string "incident_type_name"
    t.string "tag_name"
    t.string "mall_name"
    t.string "store_name"
    t.string "store_contract_number"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "sender_email"
    t.string "state_name"
    t.string "responsable_group"
    t.string "responsable_user"
  end

  create_table "location_areas", id: :serial, force: :cascade do |t|
    t.integer "contract_id"
    t.string "area"
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["contract_id"], name: "index_location_areas_on_contract_id"
  end

  create_table "malls", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "country"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "alias"
  end

  create_table "offer_locals", id: :serial, force: :cascade do |t|
    t.integer "offer_id"
    t.string "local_id"
    t.datetime "added_at", precision: nil
    t.datetime "ended_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["offer_id"], name: "index_offer_locals_on_offer_id"
  end

  create_table "offers", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "locale"
    t.string "venue_external_id"
    t.string "map_economic_unit"
    t.string "contract_number"
    t.string "location_area"
    t.string "store_category_name"
    t.string "floor"
    t.string "dates"
    t.string "account_name"
    t.string "contract_start_date"
    t.string "contract_end_date"
    t.string "inflj_end_date"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "offer_id"
    t.string "society_id"
    t.string "economic_unit_id"
    t.string "venue_name"
    t.string "client_id"
    t.string "client_name"
    t.string "financial_flow_start_date"
    t.datetime "first_contract_end_date", precision: nil
  end

  create_table "old_passwords", id: :serial, force: :cascade do |t|
    t.string "encrypted_password", null: false
    t.string "password_archivable_type", null: false
    t.integer "password_archivable_id", null: false
    t.datetime "created_at", precision: nil
    t.index ["password_archivable_type", "password_archivable_id"], name: "index_password_archivable"
  end

  create_table "role_groups", id: :serial, force: :cascade do |t|
    t.integer "role_id"
    t.integer "group_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["group_id"], name: "index_role_groups_on_group_id"
    t.index ["role_id"], name: "index_role_groups_on_role_id"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "usage", default: "base"
  end

  create_table "sessions", id: :serial, force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "societies", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "country_code"
    t.string "start_at"
    t.string "end_at"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "society_id"
  end

  create_table "success_uploads", id: :serial, force: :cascade do |t|
    t.string "filename"
    t.datetime "created_at", precision: nil
  end

  create_table "territory_cities", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "territory_state_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["territory_state_id"], name: "index_territory_cities_on_territory_state_id"
  end

  create_table "territory_countries", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "territory_states", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "territory_country_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["territory_country_id"], name: "index_territory_states_on_territory_country_id"
  end

  create_table "test_articles", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.boolean "option"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_posts", force: :cascade do |t|
    t.text "content"
    t.bigint "test_article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_article_id"], name: "index_test_posts_on_test_article_id"
  end

  create_table "test_tag_articles", force: :cascade do |t|
    t.bigint "test_tag_id", null: false
    t.bigint "test_article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_article_id"], name: "index_test_tag_articles_on_test_article_id"
    t.index ["test_tag_id"], name: "index_test_tag_articles_on_test_tag_id"
  end

  create_table "test_tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", id: :serial, force: :cascade do |t|
    t.string "society_id"
    t.string "economic_unit_id"
    t.string "name"
    t.string "account_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "versions", id: :serial, force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at", precision: nil
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "aim_active_tracking_agent_zones", "aim_active_tracking_zones", column: "zone_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_agent_zones", "aim_users", column: "agent_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_line_items", "aim_active_tracking_orders", column: "order_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_agents", "aim_active_tracking_orders", column: "order_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_agents", "aim_users", column: "agent_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_interface_zones", "aim_active_tracking_order_interfaces", column: "order_interface_id"
  add_foreign_key "aim_active_tracking_order_interface_zones", "aim_active_tracking_zones", column: "zone_id"
  add_foreign_key "aim_active_tracking_order_rejected_agents", "aim_active_tracking_orders", column: "order_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_rejected_agents", "aim_users", column: "agent_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_state_interfaces", "aim_active_tracking_order_interfaces", column: "order_interface_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_states", "aim_active_tracking_order_state_interfaces", column: "order_state_interface_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_states", "aim_active_tracking_orders", column: "order_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_order_states", "aim_users", column: "user_id", on_delete: :nullify
  add_foreign_key "aim_active_tracking_orders", "aim_active_tracking_order_interfaces", column: "order_interface_id"
  add_foreign_key "aim_active_tracking_orders", "aim_active_tracking_order_states", column: "current_order_state_id", on_delete: :nullify
  add_foreign_key "aim_active_tracking_orders", "aim_active_tracking_zones", column: "zone_id"
  add_foreign_key "aim_active_tracking_previous_order_state_interfaces", "aim_active_tracking_order_state_interfaces", column: "order_state_interface_id"
  add_foreign_key "aim_active_tracking_previous_order_state_interfaces", "aim_active_tracking_order_state_interfaces", column: "previous_order_state_interface_id"
  add_foreign_key "aim_active_tracking_service_items", "aim_active_tracking_orders", column: "order_id", on_delete: :cascade
  add_foreign_key "aim_active_tracking_service_items", "aim_active_tracking_service_state_interfaces", column: "service_state_interface_id"
  add_foreign_key "aim_active_tracking_service_state_interfaces", "aim_active_tracking_order_interfaces", column: "order_interface_id", on_delete: :cascade
  add_foreign_key "aim_authorization_authorized_maps", "aim_authorization_requests", column: "request_id", on_delete: :cascade
  add_foreign_key "aim_authorization_authorized_maps", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_authorization_map_group_requests", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_authorization_map_group_requests", "aim_users", column: "authorizer_id", on_delete: :nullify
  add_foreign_key "aim_authorization_map_group_requests", "groups", on_delete: :cascade
  add_foreign_key "aim_authorization_provision_request_types", "aim_authorization_provisions", column: "provision_id", on_delete: :cascade
  add_foreign_key "aim_authorization_provision_request_types", "aim_authorization_request_types", column: "request_type_id", on_delete: :cascade
  add_foreign_key "aim_authorization_provision_suppliers", "aim_authorization_provisions", column: "provision_id", on_delete: :cascade
  add_foreign_key "aim_authorization_provision_suppliers", "aim_suppliers", column: "supplier_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_deceaseds", "aim_cemetery_graves", column: "grave_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_deceaseds", "aim_cemetery_submodules", column: "submodule_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_deceaseds", "aim_layers", column: "layer_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_deceaseds", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_grave_interfaces", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_graves", "aim_cemetery_grave_interfaces", column: "grave_interface_id", on_delete: :nullify
  add_foreign_key "aim_cemetery_graves", "aim_interest_points", column: "zone_id", on_delete: :nullify
  add_foreign_key "aim_cemetery_graves", "aim_layers", column: "layer_id", on_delete: :nullify
  add_foreign_key "aim_cemetery_graves", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_obituaries", "aim_interest_points", column: "zone_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_obituaries", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_previous_submodule_state_interfaces", "aim_cemetery_submodule_state_interfaces", column: "previous_state_interface_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_previous_submodule_state_interfaces", "aim_cemetery_submodule_state_interfaces", column: "state_interface_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodule_state_interfaces", "aim_cemetery_grave_interfaces", column: "grave_interface_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodule_states", "aim_cemetery_graves", column: "grave_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodule_states", "aim_cemetery_submodule_state_interfaces", column: "state_interface_id", name: "aim_cemetery_sub_state_sub_state_interface", on_delete: :nullify
  add_foreign_key "aim_cemetery_submodule_states", "aim_cemetery_submodules", column: "submodule_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodules", "aim_cemetery_graves", column: "grave_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodules", "aim_cemetery_submodule_states", column: "current_state_id", on_delete: :cascade
  add_foreign_key "aim_cemetery_submodules", "aim_contacts", column: "contact_id", on_delete: :nullify
  add_foreign_key "aim_checklist_categories", "aim_maps", column: "map_id", on_delete: :nullify
  add_foreign_key "aim_checklist_category_groups", "aim_checklist_categories", column: "checklist_category_id", on_delete: :cascade
  add_foreign_key "aim_checklist_category_groups", "groups", on_delete: :cascade
  add_foreign_key "aim_checklist_grade_options", "aim_checklist_step_interfaces", column: "checklist_step_interface_id"
  add_foreign_key "aim_checklist_grade_options", "aim_incident_interfaces", column: "incident_interface_id"
  add_foreign_key "aim_checklist_interfaces", "aim_checklist_categories", column: "checklist_category_id", on_delete: :nullify
  add_foreign_key "aim_checklist_interfaces", "aim_concepts"
  add_foreign_key "aim_checklist_interfaces_groups", "aim_checklist_interfaces", column: "checklist_interface_id"
  add_foreign_key "aim_checklist_interfaces_groups", "groups"
  add_foreign_key "aim_checklist_interfaces_maps", "aim_checklist_interfaces", column: "checklist_interface_id"
  add_foreign_key "aim_checklist_interfaces_maps", "aim_maps", column: "map_id"
  add_foreign_key "aim_checklist_section_interfaces", "aim_checklist_interfaces", column: "checklist_interface_id"
  add_foreign_key "aim_checklist_section_interfaces_groups", "aim_checklist_section_interfaces", column: "checklist_section_interface_id"
  add_foreign_key "aim_checklist_section_interfaces_groups", "groups"
  add_foreign_key "aim_checklist_sections", "aim_checklist_section_interfaces", column: "checklist_section_interface_id"
  add_foreign_key "aim_checklist_sections", "aim_checklists", column: "checklist_id"
  add_foreign_key "aim_checklist_step_checklist_tags", "aim_checklist_steps", column: "checklist_step_id"
  add_foreign_key "aim_checklist_step_checklist_tags", "aim_checklist_tags", column: "checklist_tag_id"
  add_foreign_key "aim_checklist_step_interface_checklist_tags", "aim_checklist_step_interfaces", column: "checklist_step_interface_id"
  add_foreign_key "aim_checklist_step_interface_checklist_tags", "aim_checklist_tags", column: "checklist_tag_id"
  add_foreign_key "aim_checklist_step_interface_infrastructure_interfaces", "aim_checklist_step_interfaces", column: "checklist_step_interface_id", on_delete: :cascade
  add_foreign_key "aim_checklist_step_interface_infrastructure_interfaces", "aim_maintenance_infrastructure_interfaces", column: "infrastructure_interface_id", on_delete: :cascade
  add_foreign_key "aim_checklist_step_interfaces", "aim_checklist_grade_options", column: "default_checklist_grade_option_id"
  add_foreign_key "aim_checklist_step_interfaces", "aim_checklist_grade_options", column: "parent_checklist_grade_option_id"
  add_foreign_key "aim_checklist_step_interfaces", "aim_checklist_section_interfaces", column: "checklist_section_interface_id"
  add_foreign_key "aim_checklist_step_interfaces", "aim_checklist_step_interfaces", column: "parent_checklist_step_interface_id"
  add_foreign_key "aim_checklist_step_interfaces", "aim_incident_interfaces", column: "incident_interface_id"
  add_foreign_key "aim_checklist_steps", "aim_checklist_grade_options", column: "checklist_grade_option_id"
  add_foreign_key "aim_checklist_steps", "aim_checklist_step_interfaces", column: "checklist_step_interface_id"
  add_foreign_key "aim_checklist_steps", "aim_checklists", column: "checklist_id"
  add_foreign_key "aim_checklist_steps", "aim_maintenance_infrastructures", column: "infrastructure_id"
  add_foreign_key "aim_checklist_tags", "aim_checklist_interfaces", column: "checklist_interface_id", on_delete: :cascade
  add_foreign_key "aim_checklist_tags", "aim_checklist_tags", column: "override_checklist_tag_id"
  add_foreign_key "aim_checklist_tags", "aim_concepts"
  add_foreign_key "aim_checklists", "aim_checklist_interfaces", column: "checklist_interface_id"
  add_foreign_key "aim_checklists", "aim_interest_points", column: "service_id", on_delete: :nullify
  add_foreign_key "aim_checklists", "aim_interest_points", column: "store_id", on_delete: :cascade
  add_foreign_key "aim_checklists", "aim_maintenance_infrastructures", column: "infrastructure_id", on_delete: :cascade
  add_foreign_key "aim_checklists", "aim_maps", column: "map_id"
  add_foreign_key "aim_checklists", "aim_users", column: "user_id"
  add_foreign_key "aim_contacts", "aim_involved_interfaces", column: "involved_interface_id", on_delete: :nullify
  add_foreign_key "aim_delegations", "aim_users", column: "delegated_id"
  add_foreign_key "aim_delegations", "aim_users", column: "owner_id"
  add_foreign_key "aim_evaluations", "aim_checklists", column: "checklist_id"
  add_foreign_key "aim_evaluations", "aim_concepts", column: "concept_id"
  add_foreign_key "aim_fusion_table_layers", "aim_maps", column: "map_id", on_delete: :cascade
  add_foreign_key "aim_groupings", "aim_evaluations", column: "evaluation_id"
  add_foreign_key "aim_groups_profiles", "aim_profiles", column: "profile_id", on_delete: :nullify
  add_foreign_key "aim_groups_profiles", "groups", on_delete: :nullify
  add_foreign_key "aim_incident_interfaces", "aim_incident_categories", column: "incident_category_id", on_delete: :nullify
  add_foreign_key "aim_incident_states", "aim_users", column: "user_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_checklist_step_interfaces", column: "checklist_step_interface_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_checklists", column: "checklist_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_incident_interfaces", column: "incident_interface_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_incident_priorities", column: "incident_priority_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_layers", column: "layer_id", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_users", column: "finished_by_user", on_delete: :nullify
  add_foreign_key "aim_incidents", "aim_users", column: "user_id", on_delete: :nullify
  add_foreign_key "aim_involved_interfaces", "aim_incident_interfaces", column: "incident_interface_id", on_delete: :nullify
  add_foreign_key "aim_maintenance_infrastructure_categories", "aim_maps", column: "map_id", on_delete: :nullify
  add_foreign_key "aim_maintenance_infrastructure_category_groups", "aim_maintenance_infrastructure_categories", column: "infrastructure_category_id", on_delete: :cascade
  add_foreign_key "aim_maintenance_infrastructure_category_groups", "groups", on_delete: :cascade
  add_foreign_key "aim_maintenance_infrastructure_interfaces", "aim_maintenance_infrastructure_categories", column: "category_id", on_delete: :nullify
  add_foreign_key "aim_maps_task_responsibles", "aim_maps", column: "map_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_maps_task_responsibles", "aim_task_responsibles", column: "responsible_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_previous_state_interfaces", "aim_state_interfaces", column: "previous_state_interface_id", on_delete: :nullify
  add_foreign_key "aim_previous_state_interfaces", "aim_state_interfaces", column: "state_interface_id", on_delete: :nullify
  add_foreign_key "aim_profiles_roles", "aim_profiles", column: "profile_id", on_delete: :nullify
  add_foreign_key "aim_profiles_roles", "roles", on_delete: :nullify
  add_foreign_key "aim_state_interface_modifiable_by_groups", "aim_state_interfaces", column: "state_interface_id", on_delete: :nullify
  add_foreign_key "aim_state_interface_modifiable_by_groups", "groups", on_delete: :nullify
  add_foreign_key "aim_state_interface_notify_to_groups", "aim_state_interfaces", column: "state_interface_id"
  add_foreign_key "aim_state_interface_notify_to_groups", "groups"
  add_foreign_key "aim_state_interfaces", "aim_incident_interfaces", column: "incident_interface_id", on_delete: :nullify
  add_foreign_key "aim_task_responsibles", "aim_tasks", column: "task_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_task_responsibles_groups", "aim_task_responsibles", column: "responsible_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_task_responsibles_groups", "groups", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_task_responsibles_users", "aim_task_responsibles", column: "responsible_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_task_responsibles_users", "aim_users", column: "user_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "aim_trigger_conditions", "aim_triggers", column: "trigger_id", on_delete: :nullify
  add_foreign_key "aim_trigger_notify_to_groups", "aim_triggers", column: "trigger_id", on_delete: :nullify
  add_foreign_key "aim_trigger_notify_to_groups", "groups", on_delete: :nullify
  add_foreign_key "aim_trigger_notify_to_users", "aim_triggers", column: "trigger_id", on_delete: :nullify
  add_foreign_key "aim_trigger_notify_to_users", "aim_users", column: "user_id", on_delete: :nullify
  add_foreign_key "aim_trigger_records", "aim_triggers", column: "trigger_id", on_delete: :cascade
  add_foreign_key "aim_user_map_classifications", "aim_map_classifications", column: "map_classification_id", on_delete: :cascade
  add_foreign_key "aim_user_map_classifications", "aim_users", column: "user_id", on_delete: :cascade
  add_foreign_key "aim_user_map_districts", "aim_map_districts", column: "map_district_id", on_delete: :cascade
  add_foreign_key "aim_user_map_districts", "aim_users", column: "user_id", on_delete: :cascade
  add_foreign_key "aim_users", "aim_active_tracking_zones", column: "zone_id"
  add_foreign_key "categories", "incident_types"
  add_foreign_key "contract_clients", "contracts"
  add_foreign_key "contract_locals", "contracts"
  add_foreign_key "location_areas", "contracts"
  add_foreign_key "offer_locals", "offers"
  add_foreign_key "territory_cities", "territory_states"
  add_foreign_key "territory_states", "territory_countries"
  add_foreign_key "test_tag_articles", "test_tags"
end
