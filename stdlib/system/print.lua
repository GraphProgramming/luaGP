local myNode = {}

function myNode.init(node)
  node.tick = function(value)
    if (type(value.val) == "table") then
	outputStr = "{"
	for k, v in pairs(value.val) do
	    outputStr = outputStr .. '[' .. tostring(k) .. ']=' .. tostring(v) .. ", "
	end
	if (not (outputStr == "{")) then
		outputStr = outputStr:sub(1,-3)
	end
	outputStr = outputStr .. "}"
	print(outputStr)
    else
        print(value.val)
    end
    return {}
  end
end

function myNode.spec(node)
  node.name = "Print"
  node.inputs.val = "Object"
  node.desc = "Print on the screen."
end

return myNode
