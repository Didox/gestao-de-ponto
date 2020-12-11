# This file is auto-generated from the current state of the database. Instead
# of Editando this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_11_004241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "remuneracoes", force: :cascade do |t|
    t.bigint "funcionario_id", null: false
    t.float "salario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_remuneracoes_on_funcionario_id"
  end

  create_table "turnos", force: :cascade do |t|
    t.bigint "funcionario_id", null: false
    t.datetime "entrada"
    t.datetime "saida"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_turnos_on_funcionario_id"
  end

  add_foreign_key "remuneracoes", "funcionarios"
  add_foreign_key "turnos", "funcionarios"
end
