require_relative "./PolyTreeNode/PolyTreeNode.rb"
#KFS => Knight Path Finder
class KFS
    attr_reader :chess_board, :starting_position, :ending_position, :root_node, :ending_node

    def initialize(starting_position, ending_position)
        @chess_board = Array.new(8){ Array.new(8, "[ ]")}
        @starting_position = starting_position
        @ending_position = ending_position
        @root_node = PolyTreeNode.new(starting_position)
        @ending_node = PolyTreeNode.new(ending_position)
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

    #o=> represents position changing operations for the knight 
    def o1(node)
        node.value = [node.value.first - 1, node.value.last - 2]
        node
    end
    def o2(node)
        node.value = [node.value.first + 1, node.value.last + 2]
        node
    end
    def o3(node)
        node.value = [node.value.first - 1, node.value.last + 2]
        node
    end
    def o4(node)
        node.value = [node.value.first + 1, node.value.last - 2]
        node
    end
    def o5(node)
        node.value = [node.value.first - 2, node.value.last - 1]
        node
    end
    def o6(node)
        node.value = [node.value.first + 2, node.value.last + 1]
        node
    end
    def o7(node)
        node.value = [node.value.first - 2, node.value.last + 1]
        node
    end
    def o8(node)
        node.value = [node.value.first + 2, node.value.last - 1]
        node
    end
    #

end
