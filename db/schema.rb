# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160529111932) do

  create_table "claimpayments", force: :cascade do |t|
    t.integer  "paymentschedule_id"
    t.date     "cpdate"
    t.decimal  "cpamount",           precision: 18, scale: 2
    t.text     "cpdesc",                                      default: "Payment made by transfer."
    t.datetime "created_at",                                                                        null: false
    t.datetime "updated_at",                                                                        null: false
  end

  add_index "claimpayments", ["paymentschedule_id"], name: "index_claimpayments_on_paymentschedule_id"

  create_table "claims", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "claimreference"
    t.date     "claimdate"
    t.decimal  "claimamountex",   precision: 18, scale: 2
    t.string   "claimwfmporef"
    t.boolean  "claimcomplete"
    t.text     "claimnotes"
    t.binary   "claimlink"
    t.string   "claimcreatedby"
    t.string   "claimmodifiedby"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "claims", ["claimreference"], name: "index_claims_on_claimreference"
  add_index "claims", ["contract_id"], name: "index_claims_on_contract_id"

  create_table "claimtrans", force: :cascade do |t|
    t.integer  "claim_id"
    t.integer  "claimlineno"
    t.string   "claimreference"
    t.text     "claimlinedesc"
    t.decimal  "claimlineamountex",        precision: 18, scale: 2
    t.decimal  "claimlinetotalapprovedex", precision: 18, scale: 2
    t.decimal  "claimlinetotalamountex",   precision: 18, scale: 2
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "contactname"
    t.string   "contactref"
    t.string   "contactemail"
    t.string   "contactperson"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "contacts", ["contract_id"], name: "index_contacts_on_contract_id"

  create_table "contracts", force: :cascade do |t|
    t.date     "contractdate"
    t.string   "contractreference"
    t.decimal  "contractprice",           precision: 18, scale: 2
    t.string   "contractdesc"
    t.integer  "contractlastpsno"
    t.decimal  "contractmaxretention",    precision: 18, scale: 2
    t.decimal  "contractretentiontodate", precision: 18, scale: 2
    t.string   "contractcreatedby"
    t.string   "contractmodifiedby"
    t.integer  "contractretentionrate"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "djrmasters", force: :cascade do |t|
    t.date     "subdate"
    t.integer  "subnum"
    t.string   "subform"
    t.integer  "subformver"
    t.string   "sectname"
    t.string   "projname"
    t.date     "djrdate"
    t.string   "weather"
    t.string   "foreman"
    t.string   "jobphase"
    t.string   "worktoday"
    t.string   "accdelay"
    t.string   "workschednextday"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "paymentschedules", force: :cascade do |t|
    t.integer  "claim_id"
    t.date     "psdate"
    t.decimal  "psapprovedamountex",  precision: 18, scale: 2
    t.decimal  "psretentionamountex", precision: 18, scale: 2
    t.boolean  "psapproved"
    t.string   "psapprovedby"
    t.date     "psapproveddate"
    t.text     "psnotes"
    t.boolean  "pscomplete"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "paymentschtrans", force: :cascade do |t|
    t.integer  "paymentschedule_id"
    t.decimal  "pstapprovedamountex"
    t.boolean  "pstapproved"
    t.text     "pstclaimdiffreason"
    t.string   "pstapprovedby"
    t.date     "pstapprovedate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "paymentschtrans", ["paymentschedule_id"], name: "index_paymentschtrans_on_paymentschedule_id"

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
