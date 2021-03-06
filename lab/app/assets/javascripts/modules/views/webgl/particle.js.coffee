module.exports = class Particle

  obj:null
  interval:null
  counter:0
  index:0
  attributes:null
  initial_z:0
  velocity:0

  constructor:(@obj, @interval, @attributes, @index)->
    @obj.size = 0

  show:(time,size)->
    TweenMax.to @obj, time, { size:size, delay:1+Math.random()*4, ease:Expo.easeOut, onUpdate:=>
      @set_size @obj.size
    }

  set_x:(value)->
    @obj.x = value

  get_x:()->
    return @obj.x

  random_x:(value)->
    @obj.x += value

  set_y:(value)->
    @obj.y = value

  get_y:()->
    return @obj.y

  random_y:(value)->
    @obj.y += value

  set_z:(value)->
    return if value < @obj.z
    @initial_z = @obj.z = value

  get_z:()->
    return @obj.z

  move_z:(value)->
    @obj.z = value

  set_alpha:(value)->
    @attributes.alpha.value[@index] = value

  get_alpha:()->
    return @attributes.alpha.value[@index]

  set_color:(value)->
    @attributes.alpha.value[@index] = value

  get_color:()->
    return @attributes.color.value[@index]

  set_size:(value)->
    @attributes.size.value[@index] = value

  get_size:()->
    return @attributes.size.value[@index]
