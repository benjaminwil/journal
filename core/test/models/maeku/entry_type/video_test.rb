require 'test_helper'

module Maeku
  class EntryType::VideoTest < ActiveSupport::TestCase

    setup do
      author_id = 1
      entry_content = "I turned the TV off."
      @entry = Entry.new(author_id: author_id)
      @entry.assign_attributes(entry_content_attributes: { content: entry_content })
      @attachment = File.open(Rails.root.join('public', 'dramatic-exit.mp4'))
    end

    test "should reject an entry without an video file attachment" do
      assert_not @entry.video_files.attached?
    end

    test "should accept an entry with an video file attachment" do
      @entry.video_files.attach(io: @attachment, filename: 'dramatic-exit.mp4', content_type: 'video/mp4')
      assert @entry.video_files.attached?
    end

  end
end