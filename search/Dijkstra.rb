require_relative '../graphs/graph.rb'

def dijkstra(vertex_a, vertex_b)
	final_paths = {}
  possible_paths = { vertex_a => { cost: 0, last_edge: nil } }

  until possible_paths.empty?
    
    #select the shortest possible path
    vertex, data = possible_paths.min_by do |vertex, data| 
      data[:cost]
    end

    final_paths[vertex] = possible_paths[vertex]

    possible_paths.delete(vertex)

    #update possible paths
    current_cost = final_paths[vertex][:cost]

    vertex.edges.each do |edge|
      new_vertex = (edge.vertices[0] == vertex ? edge.vertices[1] : edge.vertices[0])

      new_cost = current_cost + edge.length
      next if final_paths[new_vertex]

      next if possible_paths[new_vertex] &&
        possible_paths[new_vertex][:cost] <= new_cost

      possible_paths[new_vertex] = { cost: new_cost, last_edge: edge }
    end
  end

  final_paths[vertex_b][:cost]
end