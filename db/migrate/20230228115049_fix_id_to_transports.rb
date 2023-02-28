class FixIdToTransports < ActiveRecord::Migration[7.0]
  def change
    rename_column :transports, :user_id, :user_transport_id
  end
end
