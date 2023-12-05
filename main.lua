-- https://www.love2d.org
--
-- love pseudocode:
--
-- function main()
--     love.load()
--
--     while true do
--         love.update()
--         love.draw()
--     end
-- end

require("lib.inputs")
require("lib.sound")

function quit()
    os.exit(0)
end

function love.load()
    -- I'm called once at the beginning of the game.
    love.window.setTitle("REWIRE")

    math.randomseed(os.time())

    bgm("menu")
    sfx("alien-talk-" .. math.random(1, 3))
    
    tsukiji = love.graphics.newFont("assets/GL-Tsukiji-2go/GL-Tsukiji-2go.ttf")
end

function love.update(dt)
    -- I'm called in a loop before love.draw()

    onChords({{"escape"}, {"lctrl", "c"}, {"rctrl", "c"}, {"ralt", "f4"}, {"lalt", "f4"}}, quit)

    onChords({{"a"}}, function() bgm("battle") end)
    onChords({{"s"}}, function() bgm("in-the-wreckage") end)
    onChords({{"d"}}, function() bgm("loading") end)
    onChords({{"f"}}, function() bgm("meet-the-princess") end)
    onChords({{"g"}}, function() bgm("menu") end)
    onChords({{"h"}}, function() bgm("slow-travel") end)

    onChords({{"q"}}, function() sfx("alien-talk-1") end)
    onChords({{"w"}}, function() sfx("alien-talk-2") end)
    onChords({{"e"}}, function() sfx("alien-talk-3") end)
    onChords({{"r"}}, function() sfx("scream") end)
    onChords({{"t"}}, function() sfx("start-level") end)

end

function love.draw()
    -- I'm called in a loop after love.update()
    love.graphics.print("At long last", tsukiji, 100, 100)
    love.graphics.print("You arrive", tsukiji, 150, 150)
end
