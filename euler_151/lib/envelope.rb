module Euler151
  class Envelope

    def initialize
      @a2 = 1
      @a3 = 1
      @a4 = 1
      @a5 = 2
      @papers = [:a2, :a3, :a4, :a5]
    end

    def a2
      @a2
    end

    def a2=(a2)
      @a2=a2
    end

    def a3
      @a3
    end

    def a3=(a3)
      @a3=a3
    end

    def a4
      @a4
    end

    def a4=(a4)
      @a4=a4
    end

    def a5
      @a5
    end

    def a5=(a5)
      @a5=a5
    end

    def give_me_a_random_paper
      choosen = self.all_in.to_a[rand(0..3)]
      if choosen[1] > 0
        choosen[0]
      else
        self.give_me_a_random_paper
      end
    end

    def all_in
      {a2: @a2, a3: @a3, a4: @a4, a5: @a5}
    end

  end
end