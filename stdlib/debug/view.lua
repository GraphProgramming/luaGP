local myNode = {}
function myNode.init(node)
  node.tick = function(value)
    result = {}
    result.result = value.val
    print("Debug View: Not implemented yet.")
    return result
  end
end

function myNode.spec(node)
  node.name = "View"
  node.inputs.val = "Object"
  node.outputs.result = "Object"
  node.args.width = 0
  node.args.height = 0
  node.desc = "Views and passes the object."
end

return myNode
