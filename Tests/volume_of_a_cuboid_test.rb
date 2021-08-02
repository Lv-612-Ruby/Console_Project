
require 'rspec/autorun'
class Volume
 def get_volume_of_cuboid(length, width, height)
    return length * width * height;
 end
end

describe Volume do
  volume = Volume.new

     it "right numbers" do
       expect(volume.get_volume_of_cuboid(10,5,4)).to eq(200)
     end

     it "big numbers" do
       expect(volume.get_volume_of_cuboid(100,54,43)).to eq(232200)
     end

     it " 0 " do
       expect(volume.get_volume_of_cuboid(0,5.4,4)).to eq(0)
     end
end
