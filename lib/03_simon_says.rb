def echo(word)
	"#{word}"
end

def shout(word)
	"#{word}".upcase
end

def repeat(word, n=2)
	## n=2 default parameter if value isnt set
	# "#{word}" * n doesnt allow for spaces.

	a = [ ]

n.times { a << word }

	a.join(" ")
end

def start_of_word(word, n)
	#first character if n=1 (need to do range) "#{word}"[n]

	"#{word}"[0..(n-1)]

end

def first_word(string)
	"#{string}".split.first
end

def


    def titleize(words)
    ignore  = ["and", "the", "if", "or"]

    new_title = words.split(" ").map {|word| 
                if ignore.include?(word)
                    word
                else
                    word.capitalize
                end
            }.join(" ")

    new_title
        "#{words}".split.map(&:capitalize).join(" ")

end


def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end