class Question
    attr_accessor :title, :question
    @answer
    @choices

    def initialize(question, choices, answer)
        @question = question
        @answer = answer
        @choices = choices
    end

    def checkAnswer(answer)
        return @answer == answer.upcase
    end

    def showQuestion()
        puts question

        @choices.each_with_index do |choice, index|
            puts "#{(65+index).chr}) #{choice.title}"
        end
    end
end

class Choice
    attr_reader :title

    def initialize(title)
        @title = title
    end
end

questions = [
    Question.new(
        "Singkatan dari Object Oriented Programming adalah", 
        [
            Choice.new("OOP"),
            Choice.new("PBO"),
            Choice.new("CI/CD"),
        ],
        "A"
    ),
    Question.new(
        "Salah satu framework dari Ruby adalah", 
        [
            Choice.new("Laravel"),
            Choice.new("Express.JS"),
            Choice.new("Ruby On Rails"),
        ],
        "C"
    ),
    Question.new(
        "Ruby adalah salah satu", 
        [
            Choice.new("Framework"),
            Choice.new("Programming Language"),
            Choice.new("Design Pattern"),
        ],
        "B"
    ),
]

correctAnswer = 0
questions.each do |question|
    question.showQuestion
    
    print "Jawaban : "
    answer = gets.chomp

    if question.checkAnswer answer
        correctAnswer += 1
    end
end

puts "Score : #{correctAnswer} / #{questions.length}"