#!/bin/bash
set -e
apt-get update -y
apt-get install -y docker.io
systemctl enable docker
systemctl start docker

mkdir -p /opt/terraform-docker-app

cat > /opt/terraform-docker-app/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Venu | Terraform Docker Apache</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{
font-family:Arial,sans-serif;
min-height:100vh;
text-align:center;
color:#d9f3f8;
background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
}
nav,.box,.card{
background:rgba(255,255,255,.08);
border:1px solid rgba(255,255,255,.12);
border-radius:25px;
box-shadow:10px 10px 25px #08161b,
-8px -8px 20px rgba(255,255,255,.05);
backdrop-filter:blur(12px);
}
nav{
width:90%;
max-width:1000px;
margin:25px auto;
padding:18px 25px;
display:flex;
justify-content:space-between;
align-items:center;
}
.logo{
font-size:24px;
font-weight:bold;
}
.logo span,h1 span{
color:#6dd5ed;
}
nav ul{
display:flex;
gap:25px;
list-style:none;
color:#a9c5cc;
}
.hero{
padding:70px 20px 40px;
}
.status{
display:inline-block;
padding:10px 20px;
border-radius:30px;
font-weight:bold;
background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
border:1px solid #4b7482;
box-shadow:6px 6px 15px #08161b;
}
.name{
margin-top:25px;
font-size:21px;
font-weight:bold;
color:#6dd5ed;
}
h1{
font-size:clamp(42px,7vw,75px);
margin:20px 0;
}
h1 span{
background:linear-gradient(90deg,#66d9ef,#2c5364);
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
}
.hero p{
max-width:700px;
margin:auto;
line-height:1.7;
color:#b7cbd0;
}
.btn{
display:inline-block;
margin-top:30px;
padding:14px 28px;
border-radius:18px;
color:white;
text-decoration:none;
font-weight:bold;
background:linear-gradient(135deg,#203a43,#2c5364);
border:1px solid #4b7482;
box-shadow:8px 8px 18px #08161b,
-5px -5px 12px rgba(255,255,255,.05);
}
h2{
margin:40px 0 25px;
}
.cards{
width:90%;
max-width:1000px;
margin:auto;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(200px,1fr));
gap:20px;
}
.card{
padding:25px;
transition:.3s;
}
.card:hover{
transform:translateY(-8px);
border-color:#6dd5ed;
}
.icon{
font-size:35px;
margin-bottom:12px;
}
.card p{
color:#a9c5cc;
margin-top:8px;
line-height:1.5;
}
.box{
width:90%;
max-width:1000px;
margin:60px auto;
padding:30px;
}
.flow{
display:flex;
justify-content:center;
align-items:center;
flex-wrap:wrap;
gap:12px;
}
.item{
padding:13px 18px;
border-radius:15px;
font-weight:bold;
background:#203a43;
border:1px solid #4b7482;
box-shadow:5px 5px 12px #08161b;
}
footer{
margin:50px 20px 25px;
color:#8eabb3;
}
@media(max-width:600px){
nav ul{display:none}
}
</style>
</head>
<body>
<nav>
<div class="logo">Venu<span>DevOps</span></div>
<ul>
<li>Terraform</li>
<li>Docker</li>
<li>Apache</li>
</ul>
</nav>
<section class="hero">
<div class="status">
🟢 Infrastructure Running
</div>
<div class="name">
Venu Gopala Reddy Eppala
</div>
<h1>
Terraform <span>+</span> Docker <span>+</span> Apache
</h1>
<p>
A containerized web application deployed on AWS EC2
using Terraform, Docker and Apache HTTP Server.
</p>
<a href="#" class="btn">
🚀 Deployment Active
</a>
</section>
<h2>⚙️ Technology Stack</h2>
<div class="cards">
<div class="card">
<div class="icon">🏗️</div>
<h3>Terraform</h3>
<p>Infrastructure as Code for AWS.</p>
</div>
<div class="card">
<div class="icon">☁️</div>
<h3>AWS EC2</h3>
<p>Cloud server hosting the application.</p>
</div>
<div class="card">
<div class="icon">🐳</div>
<h3>Docker</h3>
<p>Containerized application deployment.</p>
</div>
<div class="card">
<div class="icon">🌐</div>
<h3>Apache</h3>
<p>Web server serving the HTML application.</p>
</div>
</div>
<div class="box">
<h2>🚀 Deployment Flow</h2>
<div class="flow">
<div class="item">👨‍💻 User</div> →
<div class="item">🏗️ Terraform</div> →
<div class="item">☁️ AWS EC2</div> →
<div class="item">🐳 Docker</div> →
<div class="item">🌐 Apache</div> →
<div class="item">📄 HTML</div>
</div>
</div>
<footer>
🟢 System Operational
<br><br>
Developed by
<strong>Venu Gopala Reddy Eppala</strong>
<br><br>
Terraform + AWS EC2 + Docker + Apache
</footer>
</body>
</html>
EOF

cat > /opt/terraform-docker-app/Dockerfile <<'EOF'
FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/
RUN echo "Apache Docker image created Successfully"
EXPOSE 80
CMD ["httpd-foreground"]
EOF

cd /opt/terraform-docker-app

docker build -t terraform-docker-app .

docker run -d --name terraform-docker-app -p 80:80 terraform-docker-app:latest

echo "Docker Application Deployed Successfully"