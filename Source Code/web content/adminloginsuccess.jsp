<html lang="en">
    <head >
        <title style="color: brown">Nav Bar 6</title>
        <meta name="author" content="Zaur">
        <meta descryption content="Presentation of website">
        <meta name="keywords" content="technology, cyber security, software">
        <meta http-equiv="refresh" content="30">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <link rel="stylesheet" href="navbars6.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
		<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
   <style type="text/css">
   
   *{
	
	
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
	list-style: none;

}


*,
*::before,
*::after {
    margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
	list-style: none;
}


:root {
  --step--2: clamp(0.69rem, calc(0.58rem + 0.60vw), 1.00rem);
  --step--1: clamp(0.83rem, calc(0.67rem + 0.81vw), 1.25rem);
  --step-0: clamp(1.00rem, calc(0.78rem + 1.10vw), 1.56rem);
  --step-1: clamp(1.20rem, calc(0.91rem + 1.47vw), 1.95rem);
  --step-2: clamp(1.44rem, calc(1.05rem + 1.95vw), 2.44rem);
  --step-3: clamp(1.73rem, calc(1.21rem + 2.58vw), 3.05rem);
  --step-4: clamp(2.07rem, calc(1.39rem + 3.40vw), 3.82rem);
  --step-5: clamp(2.49rem, calc(1.60rem + 4.45vw), 4.77rem);
	
	/* Font style */
	
	--ff-primary: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
	
	/* Color style */
	
	/*
	--color-primary:#c51350;
	--color-secondary:#ff9a3c;
	--color-body:#333;
	--color-bg: #006600;
	--color-primary-dark:#007f67;
	--color-error:#cc3333;
	--color-success:#4bb544;
	--color-link:#cdcdcc;
	--color-border:darkgrey;
	--bs:#ffa857;
	*/
	
	--color-primary: #0575E6;
	--color-secondary: #6dd5ed;
	--color-primary-light:#8dc6ff;
	--color-primary-dark:#021B79;
	--color-error:#cc3333;
	--color-success:#4bb544;
	--color-link:#606470;
	--color-header-dark:#393e46;
	--color-background:#f5f9ee;
	--color-border-sc:#ececec;
	--color-border-focus:#a9d7f6;
	--color-border:#eeeeee;
	--bs:#ffa857;
	--color-percentage:#5f6769;
	--color-header-light:#9ba6a5;
	--color-border-focus:#a9d7f6;
	--color-input-background:#f5f9ee;
	--gradient: linear-gradient(135deg var(--color-primary), var(--color-secondary));
	
	
}

/* Remove default margin */
body,
h1,
h2,
h3,
h4,
p,
figure,
blockquote,
dl,
dd {
  margin: 0;
}

/* Remove list styles on ul, ol elements with a list role, which suggests default styling will be removed */

ul[role='list'],
ol[role='list'] {
  list-style: none;
}

/* Set core root defaults */
html:focus-within {
  scroll-behavior: smooth;
}

/* Set core body defaults */
body {
  min-height:  100vh;
  text-rendering: optimizeSpeed;
  line-height: 1.5;
  font-family: var(--ff-primary);
}


/* A elements that don't have a class get default styles */
a:not([class]) {
 text-decoration-skip-ink: auto;
}

/* Make images easier to work with */
img,
picture {
  max-width: 100%;
  display: block;
}

/* Inherit fonts for inputs and buttons */
input,
button,
textarea,
select {
  font: inherit;
}

/* Remove all animations, transitions and smooth scroll for people that prefer not to see them */
@media (prefers-reduced-motion: reduce) {
  html:focus-within {
   scroll-behavior: auto;
  }
  
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}

html, body {
  height: 100%;
}


/* ======================================================================== */ 

 /*                      RELATED TO THE TTUTORIAL                        */

/* ======================================================================== */







.background,
.navbar,
.burger,
.menu {
	position: fixed;
}

.background {
	top: -10%;
	left: -10%;
	width: 120%;
	height: 120%;
	/*
	background-image: url(polygon-scatter-haikei.png);
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	*/
	background: #ad5389;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #3c1053, #ad5389);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #3c1053, #ad5389); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	transition: .5s;
}

body.open .background {
	filter: blur(20px);
}

.navbar {
	width: 100%;
	height: 10vh;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background-color: #19191c;
	color: #f9f9f9;
	padding: 0 72px 0 20px;
	z-index: 1;
}

.logo {
	font-size: var(--step-1);
	margin-left: 1rem;
}

.navbar_search {
	width: 14vw;
	height: 5vh;
	color: #a7a7a7;
	background: #2f3339;
	border-radius: .3rem;
	border: none;
	padding-left: 2.2rem;
}

label {
	position: relative;
}

label i {
	position: absolute;
	top: 0;
	left: 0;
	transform: translate(50%, 10px);
	color: #a7a7a7;
}

.navbar_search::placeholder {
	color: #a7a7a7;
}

.burger {
	width: 60px;
	height: 60px;
	top: 0;
	right: 0;
	margin-top: .4rem;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #a7a7a7;
	transition: .5s;
	z-index: 3;
	cursor: pointer;
}

.burger i {
	font-size: var(--step-1);
}

.menu {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	grid-gap: 3rem;
	background: rgba(0, 0, 0, .8);
	opacity: 0;
	visibility: hidden;
	transition: .5s;
	z-index: 2;
}

body.open .menu {
	opacity: 1;
	visibility: visible;
}

.menu > a {
	color: #f9f9f9;
	font-size: var(--step-1);
}

body.open .menu > a {
	animation: appear .3s both;
}

@keyframes appear {
	0% {
		opacity: 0;
		transform: translate(0, 50px);
	}
	
	100% {
		opacity: 1;
	}
}
   
   
   
   
   
   
   
   
   
   </style>
   <script type="text/javascript">
   const toggleMenu = () => {
		document.body.classList.toggle("open");
	};
	
   
   
   
   
   
   </script>
   
   
    </head>
    <body>
		<div class="background"></div>
		<nav class="navbar">
			<div class="logo">Welcome Admin</div>
			<!-- <label for="search">
				<input type="search" placeholder="Search" id="search" class="navbar_search">
				<i class="fa-solid fa-magnifying-glass"></i>
			</label> -->
		</nav>
		<div class="burger" id="burger" onclick="toggleMenu()">
			<i class="fa-solid fa-bars"></i>
		</div>
		<nav class="menu">
			<a href="Managementlist.jsp" style="animation-delay: .5s">Management Request</a>
			
			<a href="adminlogin.jsp" style="animation-delay: .4s">Logout</a>
			<!-- <a href="#" style="animation-delay: .3s">Services</a>
			<a href="#" style="animation-delay: .2s">Products</a>
			<a href="#" style="animation-delay: .1s">Contact</a> -->
		</nav>
		
		
		<script src="navbars6.js">
		
		const toggleMenu = () => {
			document.body.classList.toggle("open");
		};
		
		
		
		</script>
    </body>
</html>
