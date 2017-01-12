local myNode = {}
function myNode.init(node)
  node.tick = function(value)
    result = {}
    result.result = node.args.value
    return result
  end
end

function myNode.spec(node)
  node.name = "Const"
  node.outputs.result = "Number"
  node.args.value = 0
  node.desc = "A constant number."
end

return myNode
