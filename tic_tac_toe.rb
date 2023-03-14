class Player
    attr_accessor :name, :mark
    def initialize(name, mark)
        @name = name
        @mark = mark
        puts "#{@name} your mark is #{@mark}"
    end

end

class Game
   WIN = [[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7],[1,4,7],[2,5,8],[3,6,9]]
   attr_accessor :name, :mark

    def initialize()
        puts "Player One name: "
        @playerX = Player.new(gets.chomp, 'X')
        puts "Player Two name: "
        @playerY = Player.new(gets.chomp, 'O')
        @current_player = @playerX
        @board = ['1','2','3','4','5','6','7','8','9']
        @available_position = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    end

    def play
        puts "\nNew game"
        loop do
            draw_board
            puts "\n#{@current_player.name} choose a number from the available positions"
            choosen_position = select_position
            available_position_update(choosen_position)
            @board[choosen_position-1] = @current_player.mark
            if winer?(@current_player)
                draw_board
                puts ("#{@current_player.name} win!")
                return    
            elsif draw?
                draw_board
                puts "It's draw"
                return
            end
            switch_player
        end

    end


    def draw_board()
        divider = '--|---|--'
        puts "\n#{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts divider
        puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts divider
        puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    end

    def winer?(player)
        WIN.any? do |element|
            element.all? { |position| @board[position-1] == @current_player.mark}
        end
    end

    def available_position_update(position)
        @available_position.delete(position)
    end

    def draw?
        @available_position.empty?
    end

    def select_position
        loop do
            position = gets.chomp.to_i
            return position if @available_position.include?(position)
            puts "#{position} is not available"
        end
    end


    def switch_player
        if @current_player == @playerX
           @current_player = @playerY
        else
            @current_player = @playerX
        end
    end

end


game = Game.new()
game.play
