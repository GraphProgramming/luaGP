local myNode = {}
function myNode.init(node)
  node.tick = function(value)
    result = {}
    result.result = value.a * value.b
    return result
  end
end

function myNode.spec(node)
  node.name = "Mult"
  node.inputs.a = "Number"
  node.inputs.b = "Number"
  node.outputs.result = "Number"
  node.desc = "a + b"
end

return myNode
