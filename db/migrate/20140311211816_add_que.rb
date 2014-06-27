class AddQue < ActiveRecord::Migration
  def change
    # The current version as of this migration's creation.
    create_table(:que_jobs) do |t|
      t.integer  "priority",    limit: 2, default: 100, null: false
      t.datetime "run_at",                              null: false
      t.integer  "job_id",      limit: 8,               null: false
      t.text     "job_class",                           null: false
      t.text     "args",                  default: [],  null: false
      t.integer  "error_count",           default: 0,   null: false
      t.text     "last_error"
      t.text     "queue",                 default: "",  null: false
    end
  end
end
