def tick args 
  defaults args
  handle_inputs args
  update args
  render args
end

def defaults args
  tutorial_setup args
end

def handle_inputs args
end

def update args
end

def render args
end














































































=begin
 *************************************************************************************************
 Below is the tutorial_setup method code 
 *************************************************************************************************
=end

def tutorial_setup args
  args.outputs.background_color = [0,0,0]
  render_states args
end


SETUP_SPRITE_DIMENSION = 32

def render_states args
  example_render_idle args
  example_render_walk args
  example_render_run args
  example_render_crouch args
  example_render_jump args
  example_render_teleport args
  example_render_death args
  example_render_attack args
end 

def animate_sprite x, y, sprite_y, number_of_sprites, ticks_to_hold, starting_tick = 0, loop_animation = true
  sprite_index =
    starting_tick.frame_index number_of_sprites,
                                ticks_to_hold,
                                loop_animation
    sprite_index = number_of_sprites - 1 if sprite_index.nil?
  {
    x: x, 
    y: y, 
    h: 100, 
    w: 100, 
    tile_x: SETUP_SPRITE_DIMENSION * sprite_index, 
    tile_y: sprite_y, 
    tile_w: SETUP_SPRITE_DIMENSION, 
    tile_h: SETUP_SPRITE_DIMENSION, 
    path: 'sprites/wizard.png' 
  }
end

def example_animate_sprite x, y, sprite_y, number_of_sprites, ticks_to_hold, starting_tick = 0, loop_animation = true
  sprite_index =
    starting_tick.frame_index number_of_sprites,
                                ticks_to_hold,
                                loop_animation || number_of_sprites - 1
 
  {
    x: x, 
    y: y, 
    h: 100, 
    w: 100, 
    tile_x: SETUP_SPRITE_DIMENSION * sprite_index, 
    tile_y: sprite_y, 
    tile_w: SETUP_SPRITE_DIMENSION, 
    tile_h: SETUP_SPRITE_DIMENSION, 
    path: 'sprites/wizard.png' 
  }
end

def example_render_idle args
  x = 200
  y = args.grid.h - 100
  tile_y = 0
  number_of_sprites = 2
  ticks_to_hold = 20
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + SETUP_SPRITE_DIMENSION, y: y, text: 'IDLE', r: 255, g: 255, b: 255 }
end

def example_render_walk args
  x = 300
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION
  number_of_sprites = 4
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + SETUP_SPRITE_DIMENSION, y: y, text: 'WALK', r: 255, g: 255, b: 255 }
end

def example_render_run args
  x = 400
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 2
  number_of_sprites = 6
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + SETUP_SPRITE_DIMENSION, y: y, text: 'RUN', r: 255, g: 255, b: 255 }
end

def example_render_crouch args
  x = 500
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 3
  number_of_sprites = 8
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + 20, y: y, text: 'CROUCH', r: 255, g: 255, b: 255 }
end

def example_render_jump args
  x = 600
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 4
  number_of_sprites = 10
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + SETUP_SPRITE_DIMENSION, y: y, text: 'JUMP', r: 255, g: 255, b: 255 }
end

def example_render_teleport args
  x = 700
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 5
  number_of_sprites = 8
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + 10, y: y, text: 'TELEPORT', r: 255, g: 255, b: 255 }
end

def example_render_death args
  x = 800
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 6
  number_of_sprites = 10
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + SETUP_SPRITE_DIMENSION, y: y, text: 'DEATH', r: 255, g: 255, b: 255 }
end

def example_render_attack args
  x = 900
  y = args.grid.h - 100
  tile_y = SETUP_SPRITE_DIMENSION * 7
  number_of_sprites = 8
  ticks_to_hold = 10
  args.outputs.sprites << example_animate_sprite(x, y, tile_y, number_of_sprites, ticks_to_hold)
  args.outputs.labels << {x: x + 20, y: y, text: 'ATTACK', r: 255, g: 255, b: 255 } 
end