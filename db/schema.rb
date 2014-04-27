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

ActiveRecord::Schema.define(version: 20140427155702) do

  create_table "amiantes", force: true do |t|
    t.string   "identifiant"
    t.string   "composant"
    t.string   "partie_a_sonder"
    t.string   "description"
    t.string   "conclusion"
    t.string   "commentaires"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "batiments", force: true do |t|
    t.string   "adresse"
    t.string   "designation"
    t.string   "code_postal"
    t.string   "commune"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostic_amiantes", force: true do |t|
    t.text     "docs"
    t.string   "accompagnateur"
    t.text     "commentaires"
    t.text     "conclusions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostiqueurs", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "raison_sociale"
    t.string   "num_certif"
    t.date     "validite_certif"
    t.date     "obtention_certif"
    t.string   "adresse"
    t.string   "code_postal"
    t.string   "tel"
    t.string   "email"
    t.string   "num_tva"
    t.string   "siret"
    t.string   "nom_assureur"
    t.text     "coordonnees_assureur"
    t.string   "num_assurance"
    t.date     "validite_assurance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elements", force: true do |t|
    t.string   "nom"
    t.integer  "piece_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elements", ["piece_id"], name: "index_elements_on_piece_id"

  create_table "missions", force: true do |t|
    t.integer  "num_dossier"
    t.date     "date_reperage"
    t.time     "heure_reperage"
    t.time     "duree_reperage"
    t.boolean  "top_amiante"
    t.text     "perimetre_reperage"
    t.datetime "dateheure_visite"
    t.date     "deadline_rapport"
    t.date     "date_emission_rapport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", force: true do |t|
    t.string   "nom"
    t.integer  "numero"
    t.integer  "batiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pieces", ["batiment_id"], name: "index_pieces_on_batiment_id"

end
