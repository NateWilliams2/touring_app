class StaticPagesController < ApplicationController
  def home
    quotes = [
      ["The part you don't expect when you start out is all the people who come into your life wanting a piece of you, not caring about your wellbeing. The insane schedule is very difficult. Touring looks very glamourous but it's hard and gruelling - the travelling, the meet-and-greets - it was too crazy.",
      "Cheryl James"],
      ["A lot of people can't stand touring but to me it's like breathing. I do it because I'm driven to do it",
      "Bob Dylan"],
      ["When I was a kid, I worked in the circus. It was a touring circus that was owned by a man named Terrell Jacobs. It was just one big tent, and he was a lion tamer. He didn't have any kids, but the bit was that I would dress up as his son in an identical outfit",
      "Christopher Walken"],
      ["I used to suffer from a lot of regret while touring. Regret at having to leave certain places, people and situations, or just a beautiful day.",
      "Kiri Te Kanawa"],
      ["I make my money off of touring and merchandise. And I'm lucky I have really loyal fans that understand how it works and support.",
      "Chance The Rapper"],
      ["The touring was crazy, it was a lot of work. But I enjoyed it.",
      "Adam Ant"]
    ]
    index = rand(quotes.length)
    @text = quotes[index][0]
    @author = quotes[index][1]
  end

  def finances
  end

  def calendar
  end

  def map
  end
end
