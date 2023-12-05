function bgm(name)
    if track then
        track:stop()
    end
    track = love.audio.newSource("assets/SpaceMusicPack/" .. name .. ".wav", "stream")
    track:setLooping(true)
    track:play()
end

function sfx(name)
    local sound = love.audio.newSource("assets/SpaceMusicPack/fx/" .. name .. ".wav", "static")
    sound:play()
end
