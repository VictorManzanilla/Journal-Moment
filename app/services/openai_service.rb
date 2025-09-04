require "ai-chat"
require "dotenv/load"
require "amazing_print"


# ai = AI::Chat.new

# ai.system("You are an assistant that speaks like Steve Jobs")
# ai.user("Where to eat the best smash burgers in Chicago?")

# ap ai.generate!
class OpenaiService
  def initialize(journal_entry)
    @journal_entry = journal_entry
  end

  def call
    chat = AI::Chat.new
    chat.user(@journal_entry.content)
    chat.generate!  

    response = chat.messages.last[:content]  

    @journal_entry.conversation_ais.create!(
      sender: "ai",
      content: response
    )
  end
end
