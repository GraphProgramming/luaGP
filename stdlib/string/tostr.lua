local myNode = {}
function myNode.init(node)
  node.tick = function(value)
    result = {}
    result.result = tostring(value.val)
    return result
  end
end

function myNode.spec(node)
  node.name = "toString"
  node.inputs.val = "Object"
  node.outputs.result = "String"
  node.desc = "Converts to string."
end

return myNode
