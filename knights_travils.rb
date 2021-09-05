require_relative "./PolyTreeNode/PolyTreeNode.rb"
#KFS => Knight Path Finder
class KFS
    attr_reader :chess_board

    def initialize
        @chess_board = Array.new(8){ Array.new(8, "[ ]")}
    end

    def print_chess_board
        print "  "
        (0..7).each {|col_idx| print " #{col_idx} "}
        puts

        row_idx = 0
        self.chess_board.each do |row|
            print "#{row_idx} "
            row_idx += 1
            row.each { |position| print position }
            puts
        end
        
        return
    end


end
