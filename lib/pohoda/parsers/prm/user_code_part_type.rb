module Pohoda
  module Parsers
    module Prm
      class UserCodePartType
        include ParserCore::BaseParser

        def part0
          at 'prm:part0'
        end

        def part0_attributes
          attributes_at 'prm:part0'
        end

        def part1
          at 'prm:part1'
        end

        def part1_attributes
          attributes_at 'prm:part1'
        end

        def part2
          at 'prm:part2'
        end

        def part2_attributes
          attributes_at 'prm:part2'
        end

        def part3
          at 'prm:part3'
        end

        def part3_attributes
          attributes_at 'prm:part3'
        end

        def part4
          at 'prm:part4'
        end

        def part4_attributes
          attributes_at 'prm:part4'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:part0] = part0 if has? 'prm:part0'
          hash[:part0_attributes] = part0_attributes if has? 'prm:part0'
          hash[:part1] = part1 if has? 'prm:part1'
          hash[:part1_attributes] = part1_attributes if has? 'prm:part1'
          hash[:part2] = part2 if has? 'prm:part2'
          hash[:part2_attributes] = part2_attributes if has? 'prm:part2'
          hash[:part3] = part3 if has? 'prm:part3'
          hash[:part3_attributes] = part3_attributes if has? 'prm:part3'
          hash[:part4] = part4 if has? 'prm:part4'
          hash[:part4_attributes] = part4_attributes if has? 'prm:part4'

          hash
        end
      end
    end
  end
end