class ShortId < ActiveRecord::Base
  self.primary_key = "short_id"

  class << self

    def generate_unique_short_id
        unique = false
        attempt = ""
        attempts_remaining = 10
        while !unique
          attempts_remaining -= 1
          return nil if attempts_remaining == 0
          attempt = self.generate
          unique = !self.exists?(short_id: attempt)
        end

        short_id = ShortId.new
        short_id.short_id = attempt
        short_id.save
        return attempt
    end

    def generate
        return self.base_36_number(3,7)
    end

    def base_36_number(min_digits, max_digits)
        min_base10 = 36 ** min_digits
        max_base10 = 36 ** max_digits
        base10 = self.rand_between(min_base10, max_base10)
        return base10.to_s(36)
    end

    # NOTE: rand will never be 'high', but can be 'high-1'
    def rand_between(low, high)
        return low + rand(high - low)
    end

end


end
