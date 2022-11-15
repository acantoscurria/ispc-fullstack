const usuarioregistro = document.getElementById("usuarioregistro")
const contraseñaregistro = document.getElementById("contraseñaregistro")
const nombre = document.getElementById("nombre")
const dni = document.getElementById("dni")
const domicilio = document.getElementById("domicilio")
const email = document.getElementById("email")
const tel = document.getElementById("tel")
const form = document.getElementById("form")
const parrafo = document.getElementById("warnings")

if(form){
form.addEventListener("submit", e => {
  e.preventDefault()
  if (usuarioregistro.value.length < 1){
    alert("El nombre de usuario no es válido")
  }
  if (contraseñaregistro.value.length < 8){
    alert("La contrasea es muy corta")
  }
  if (nombre.value.length < 3){
    alert("Ingrese un nobre válido")
  }
  if (dni.value.length < 1000000 || dni.value.length > 99999999){
    alert("Ingrese un numero de dni válido")
  }
  if (email.value.search("@")){
    alert("El email no posee el formato correcto")
  }
})
}

particlesJS(
  {
  "particles": {
    "number": {
      "value": 250,
      "density": {
        "enable": true,
        "value_area": 800
      }
    },
    "color": {
      "value": "#ffffff"
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0.5,
        "color": "#707070"
      },
      "polygon": {
        "nb_sides": 5
      },
      "image": {
        "src": "img/github.svg",
        "width": 100,
        "height": 100
      }
    },
    "opacity": {
      "value": 0.5,
      "random": false,
      "anim": {
        "enable": false,
        "speed": 1,
        "opacity_min": 0.1,
        "sync": false
      }
    },
    "size": {
      "value": 4,
      "random": true,
      "anim": {
        "enable": true,
        "speed": 5,
        "size_min": 0.1,
        "sync": false
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 35,
      "color": "#ffffff",
      "opacity": 0.5,
      "width": 1.2
    },
    "move": {
      "enable": true,
      "speed": 5,
      "direction": "none",
      "random": true,
      "straight": false,
      "out_mode": "bounce",
      "bounce": false,
      "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 1200
      }
    }
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": true,
        "mode": "repulse"
      },
      "onclick": {
        "enable": true,
        "mode": "bubble"
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 400,
        "line_linked": {
          "opacity": 1
        }
      },
      "bubble": {
        "distance": 250,
        "size": 10,
        "duration": 1,
        "opacity": 8,
        "speed": 3
      },
      "repulse": {
        "distance": 100,
        "duration": 0.4
      },
      "push": {
        "particles_nb": 4
      },
      "remove": {
        "particles_nb": 2
      }
    }
  },
  "retina_detect": true
}
);