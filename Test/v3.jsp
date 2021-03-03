<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Web AR Learning</title>
		<!-- AFrame -->
		<script src="https://aframe.io/releases/0.7.1/aframe.min.js"></script>
		<script src="https://rawgit.com/chenzlabs/aframe-ar/827e9db/dist/aframe-ar.min.js"></script>
		<!-- CesiumMan Walk Script -->
		<script src="http	s://cdn.rawgit.com/donmccurdy/aframe-extras/cfe5f316/dist/aframe-extras.js"></script>
		<!-- three.ar.js -->
		<script src="https://google-ar.github.io/three.ar.js/dist/three.ar.js"></script>
		
		<!-- custom.js -->
		<script type="text/javascript">
			function onSceneLoaded() {
				const raycaster = document.querySelector('[ar-raycaster]');
				const cursor = document.querySelector('#cursor');
				//raycast event
				raycaster.addEventListener('raycaster-intersection', (event) => {
					//update cursor position
					cursor.setAttribute('position', event.detail.intersections[0].point);
				});
			}
			
			const scene = document.querySelector('a-scene');
			scene.addEventListener('loaded', onSceneLoaded);
			
			/*///first walker test
			const walker = document.querySelector('#walker');
			raycaster.addEventListener('click', () => {
			  walker.setAttribute('position', raycaster.components.cursor.intersection.point);
			});
			*/
			
			const walker = document.querySelector('#walker');
			const { stringify } = AFRAME.utils.coordinates;
		
			let firstTime = true;
			//touch event
			raycaster.addEventListener('click', () => {
				const target = raycaster.components.cursor.intersection.point;
				
				if (firstTime) {
					//walker's first position set
					walker.setAttribute('position', target);
					firstTime = false;
				} else {
					//update walker's other times position
					const animation = document.createElement('a-animation');
					//position attribute setting
					animation.setAttribute('attribute', 'position');
					//stringify is 'json to string function', why? 'a-animation' only accepts string
					animation.setAttribute('to', stringify(target));
					/*
					//how long time = always 5s
					animation.setAttribute('dur', 5000);
					*/
					const currentPosition = walker.object3D.position;
					//calculate distance currentPosition and target
					const distance = currentPosition.distanceTo(target);
					animation.setAttribute('dur', distance * 7000);
					
					//route is linear
					animation.setAttribute('easing', 'linear');
					walker.appendChild(animation);
				}
			});
			
			//Adjust opacity of plane for shadows
			AFRAME.registerComponent('shadow-material', {
				 init() {
					this.material = new THREE.ShadowMaterial();
					this.el.getOrCreateObject3D('mesh').material = this.material;
					this.material.opacity = 0.3;
				 }
			});
		</script>
	</head>
		
	<!-- body -->
	<body> 
		<a-scene ar>
			<!-- First test -->
			<!-- object & detail -->
			
			<a-box width="0.25" height="0.25" depth="0.25" position="-0.25 0.125 -0.75" rotation="0 45 0" color="#4CC3D9"></a-box>
			<a-sphere position="0 0.3125 -1.25" radius="0.3125" color="#EF2D5E"></a-sphere>
			<a-cylinder position="0.25 0.1875 -0.75" radius="0.125" height="0.375" color="#FFC65D"></a-cylinder>
			<a-plane position="0 0 -1" rotation="-90 0 0" width="1" height="1" color="#7BC8A4" shadow></a-plane>
			
		</a-scene>
	</body>
</html>