function onChords(chords, action)
    for _, chord in ipairs(chords) do
        match = true
        for i = 1, #chord do
            match = match and love.keyboard.isDown(chord[i])
        end
        if match then
            return action()
        end
    end
end
