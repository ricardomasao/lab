module.exports = class Particle

  obj:null
  interval:null
  _x:0
  _y:0
  _z:0
  counter:0

  constructor:(@obj, @interval)->
    @_x = @obj.x
    @_y = @obj.y
    @_z = @obj.z

  set_x:(value)->
    @obj.x = value

  get_x:()->
    return @obj.x

  set_y:(value)->
    @obj.y = value

  get_y:()->
    return @obj.y

  set_z:(value)->
    return if value < @obj.z
    @obj.z = value

  get_z:()->
    return @obj.z

  move_z:(value)->
    @obj.z = value
