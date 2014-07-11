class SeedStates < ActiveRecord::Migration
  def change
    # create US states
    us = Carmen::Country.named('United States')
    us.subregions.each { |r| State.create_with(name: r.name).find_or_create_by(code: r.code) }
  end
end
