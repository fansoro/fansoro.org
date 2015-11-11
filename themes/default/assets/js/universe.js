
"use strict";

window.requestAnimFrame = (function() {
    return  window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
        function( callback ) { window.setTimeout(callback, 1000 / 60 ); }
})();

(function() {
  var settings = {
    NUM_PARTICLES : 10,
    DISTANCE_T    : 0,
    RADIUS        : 1,
    OPACITY       : 0.5,
    SPEED_X       : 0.8,
    SPEED_Y       : 0.6,
    AMPLITUDE     : 110
  };

  var COLOURS    = ["#FFFFFF", "#FFFFFF", "#FFFFFF"],
      bounds     = {},
      particles  = [],
      random     = Math.random,
      sqrt       = Math.sqrt,
      PI         = Math.PI,
      ctx, W, H, stats;

  function Particle() {
    this.x      = random() * bounds.right;
    this.y      = random() * bounds.bottom;
    this.xspeed = random() * settings.SPEED_X;
    this.yspeed = random() * settings.SPEED_Y;
    this.radius = settings.RADIUS;
    this.colour = COLOURS[ ~~(random() * COLOURS.length)];
  }

  var bindEvents = function() {
    window.addEventListener('resize', resize, false);
  };

  var resize = function() {
    W = window.innerWidth;
    H = window.innerHeight;
    ctx.canvas.width  = W;
    ctx.canvas.height = H;
    bounds.top      = 100;
    bounds.right    = W - 100;
    bounds.bottom   = H - 200;
    bounds.left     = 100;
  };

  var draw = function() {
    render();
    requestAnimFrame(draw);
  };

  var update = function (p) {
    p.x += p.xspeed;
    p.y += p.yspeed;

    if (p.x > bounds.right) {
      p.x = bounds.right;
      p.xspeed *= -1;
    }
    if (p.x < bounds.left) {
      p.x = bounds.left;
      p.xspeed *= -1;
    }
    if (p.y > bounds.bottom) {
      p.y = bounds.bottom;
      p.yspeed *= -1;
    }
    if (p.y < bounds.top) {
      p.y = bounds.top;
      p.yspeed *= -1;
    }
  };

  var render = function() {
    ctx.beginPath();
    ctx.globalCompositeOperation = "source-over";
    ctx.rect(0, 0 , W, H);
    ctx.fillStyle = "rgba(0,0,0,.3)";

    ctx.fill();
    ctx.closePath();

    ctx.globalCompositeOperation = "lighter";

    for (var i = 0; i < particles.length; i += 1) {
      var p = particles[i];

      ctx.beginPath();
      ctx.globalAlpha = settings.OPACITY;
      ctx.fillStyle = p.colour;
      ctx.arc(p.x, p.y, p.radius, PI * 2, false);
      ctx.fill();
      ctx.closePath();

      for (var j = 0; j < particles.length; j += 1) {
        var pp = particles[j],
            yd = pp.y - p.y,
            xd = pp.x - p.x,
            d  = sqrt(xd * xd + yd * yd);

        if ( d < settings.DISTANCE_T ) {
          ctx.beginPath();
          ctx.globalAlpha = (settings.DISTANCE_T - d) / (settings.DISTANCE_T - 0);
          ctx.lineWidth = 1;
          ctx.moveTo(p.x, p.y);

          if ( settings.AMPLITUDE ) {
            ctx.bezierCurveTo(
              p.x,
              p.y - random() * settings.AMPLITUDE,
              pp.x,
              pp.y + random() * settings.AMPLITUDE,
              pp.x,
              pp.y
            );
          } else {
            ctx.lineTo(pp.x, pp.y);
          }

          ctx.strokeStyle = p.colour;
          ctx.lineCap = "round";
          ctx.stroke();
          ctx.closePath();

        }
      }

      update(p);

    }
  };

  var updateSpeed = function( x, y, attr ) {
    var speed = arguments[0] ? x : y;
    for (var i = 0; i < settings.NUM_PARTICLES; i += 1) {
      var ns = random() * speed;
      particles[i][attr] = particles[i][attr] > 0 ? ns : -ns;
    }
  };

  var updateRadius = function( value ) {
    for (var i = 0; i < settings.NUM_PARTICLES; i += 1) {
      particles[i].radius = value;
    }
  };

  var init = function() {
    ctx = document.getElementsByTagName('canvas')[0].getContext('2d');

    bindEvents();
    resize();

    for (var i = 0; i < settings.NUM_PARTICLES; i += 1) {
      particles.push( new Particle() );
    }

    draw();
  };

  window.onload = init;

  var GUI = new dat.GUI();

  GUI.add(settings, 'NUM_PARTICLES')
    .min(2)
    .max(200)
    .step(1)
    .name("# Particles")
    .onFinishChange(function( num ){
      var l = particles.length;
      if ( num < l ) {
        var diff = (l - num);
        particles.splice( 1, diff );
      }

      if ( num > l ) {
        var diff = (num - l);
        for (var i = 0; i < diff; i += 1) {
          particles.push( new Particle() );
        }
      }
    });

  GUI.add(settings, 'DISTANCE_T').min(0)
    .max(200)
    .step(10)
    .name("Distance");

  GUI.add(settings, 'RADIUS')
    .min(0)
    .max(10)
    .step(1)
    .name("Radius")
    .onFinishChange(function( value ) {
      updateRadius( value );
    });

  GUI.add(settings, 'SPEED_X')
    .min(0)
    .max(20)
    .name("X speed")
    .onFinishChange(function( value ) {
      updateSpeed( value, false, "xspeed");
    });

  GUI.add(settings, 'SPEED_Y')
    .min(0)
    .max(20)
    .name("Y speed")
    .onFinishChange(function( value ) {
      updateSpeed( false, value, "yspeed");
    });

  GUI.add(settings, 'AMPLITUDE')
    .min(0)
    .max(20)
    .step(1)
    .name("Amplitude");

  GUI.close();

})();


  		var canvas = document.getElementById("canvas"),
    ctx = canvas.getContext("2d");



var background = new Image();
background.src = "http://mytime-magazine.com/img/bg.jpg";

background.onload = function(){
    ctx.drawImage(background,0,0);
}
