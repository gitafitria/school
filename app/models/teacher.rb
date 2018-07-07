class Teacher < ApplicationRecord
  validates :name, :address, :dob, presence: true  # presence: true itu adalah validasi untuk wajib diisi
end
