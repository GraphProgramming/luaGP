local myNode = {}
function myNode.init(node)
  node.tick = function(value)
    result = {}
    result.result = node.args.value
    return result
  end
end

function myNode.spec(node)
  node.name = "Vector"
  node.outputs.result = "Vector"
  node.args.value = {1, 0, 0}
  node.desc = "A simple vector."
end

return myNode
