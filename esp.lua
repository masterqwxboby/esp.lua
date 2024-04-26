while true do
  wait(1)
  local seeker = script.Parent.Parent -- Replace with your seeker's character object
  local transparency = 0.5 -- Adjust for desired highlight visibility

  for _, player in pairs(workspace.Players:GetPlayers()) do
    local character = player.Character
    if character then
      local raycastOrigin = seeker.Head:GetWorldPosition() -- Adjust origin if needed
      local raycastDir = (character.Torso.Position - raycastOrigin).Unit
      local raycastResult = workspace:Raycast(raycastOrigin, raycastDir, math.huge)

      if raycastResult and raycastResult.Hit.Parent == character then
        character.Transparency = transparency
      end
    end
  end
end

-- Bind the function to a button click or desired activation event

