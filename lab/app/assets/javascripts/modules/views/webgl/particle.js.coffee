module.exports = class Particle

  obj:null
  interval:null
  _x:0
  _y:0
  _z:0
  counter:0

  constructor:(@obj, @interval)->

  set_z:(value)->
    @obj.z = value

  get_z:()->
    return @obj.z
