class Student < ApplicationRecord

  # VALIDASI
  
  validates :name, :address, :dob, :semester, presence: true # presence: true itu adalah validasi untuk wajib diisi

  validates :semester, numericality: true # numericality: true itu adalah validasi untuk wajib angka
end
