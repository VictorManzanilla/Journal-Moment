require "ai-chat"
require "dotenv/load"
# require "amazing_print"


# ai = AI::Chat.new

# ai.system("You are an assistant that speaks like Steve Jobs")
# ai.user("Where to eat the best smash burgers in Chicago?")

# ap ai.generate!
class OpenaiService
  # NOTE: Good job on implementing services!
  def initialize(journal_entry)
    @journal_entry = journal_entry
  end

  def call
    chat = AI::Chat.new
  #  figure out a way to remember updated entry
    first_entry = @journal_entry.user.journal_entries.order(:created_at).first
    chat.system("You are a supportive journaling assistant. You ask reflective and gentle questions. 
    you are encouraging, empathetic, and honest. The user's first journal entry was: \"#{first_entry.content}\". Use this as backgound context.")
    
    @journal_entry.conversation_ais.each do |msg|
      if msg.sender == "user"
        chat.user(msg.content)
      else
        chat.assistant(msg.content)
      end
    end
    chat.generate!  

    response = chat.messages.last[:content]  

    @journal_entry.conversation_ais.create!(
      sender: "ai",
      content: response
    )
  end
end
