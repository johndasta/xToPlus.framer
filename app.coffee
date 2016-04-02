{SVGLayer} = require "SVGLayer"

bg = new BackgroundLayer
	backgroundColor: "#6C63AF"

container = new Layer
	width: 100
	height: 100	
	backgroundColor: 'none'
	
layer = new SVGLayer
  parent: container
  dashOffset: -.32
  strokeWidth: 25
  width: 134
  height: 215
  scale: .4
 
  y: -54
  x: -17
  stroke: "#fff"
  path: '<path d="M0,22.6986315 L109.5982,132.298852 C147.199897,169.901242 133.26938,204.547679 117.820915,212.271554 C97.0186366,222.673385 54.7991002,202.440713 54.7991002,155.497476 L54.7991002,0"></path>'
  
layer2 = new SVGLayer
  parent: container
  dashOffset: -.32
  stroke: "#fff"
  strokeWidth: 25
  width: 134
  height: 215
  scale: .4
  x: -10
  y: -69
  rotation:-90
  color: "Red"
  path: '<path d="M0,22.6986315 L109.5982,132.298852 C147.199897,169.901242 133.26938,204.547679 117.820915,212.271554 C97.0186366,222.673385 54.7991002,202.440713 54.7991002,155.497476 L54.7991002,0"></path>'
  
  

  
# layer.center()
# layer2.center()
container.center()

bg.on Events.Click, ->
	layer.states.next()
	layer2.states.next()
	container.states.next()

container.states.add
	second:
		scale: 1.1
container.states.animationOptions =
    curve: "spring(250, 15, 10)"
    delay: .04
    

    	
layer.states.add
	second:
		dashOffset: -1.7
		y: -52
				
layer.states.animationOptions =
	curve: "spring(100,20)"


	
layer2.states.add
	second:
		dashOffset: -1.7
						
layer2.states.animationOptions =
	curve: "spring(100,20)"
	delay: .08