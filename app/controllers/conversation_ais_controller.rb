class ConversationAisController < ApplicationController

  def create
    @journal_entry = JournalEntry.find(params[:journal_entry_id])

    #  binding.pry
    @journal_entry.conversation_ais.create!(
      sender: "user",
      content: params[:content]
    )

    OpenaiService.new(@journal_entry).call

    redirect_to @journal_entry

  end
end
