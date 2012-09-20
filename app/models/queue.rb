module Play
  class Queue
    # Add a song to the end of the Queue.
    #
    # song - The Song instance to add to the Queue.
    #
    # Returns the Queue.
    def self.add(song)
      client.add(song.path)
      songs
    end

    # List all of the songs in the Queue.
    #
    # Returns an Array of Songs.
    def self.songs
      results = Play.client.playlist
      results.map do |path|
        Song.new(path)
      end
    end
  end
end