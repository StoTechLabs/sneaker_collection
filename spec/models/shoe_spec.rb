require 'rails_helper'

describe Shoe do
 it {should validate_presence_of :style}
 it {should validate_presence_of :color}
 it {should belong_to :brand}
end