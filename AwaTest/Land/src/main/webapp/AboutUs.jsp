<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <!-- Internal CSS -->
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            background: #eaeaea;
            overflow: hidden;
            font-family: 'Roboto', sans-serif; /* Apply Google font to body */
        }

        .container{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 1000px;
            height: 600px;
            background: #f5f5f5;
            box-shadow: 0 30px 50px #dbdbdb;
        }

        .container .slide .item{
            width: 200px;
            height: 300px;
            position: absolute;
            top: 50%;
            transform: translate(0, -50%);
            border-radius: 20px;
            box-shadow: 0 30px 50px #505050;
            background-position: 50% 50%;
            background-size: cover;
            display: inline-block;
            transition: 0.5s;
        }

        .slide .item:nth-child(1),
        .slide .item:nth-child(2){
            top: 0;
            left: 0;
            transform: translate(0, 0);
            border-radius: 0;
            width: 100%;
            height: 100%;
        }

        .slide .item:nth-child(3){
            left: 50%;
        }

        .slide .item:nth-child(4){
            left: calc(50% + 220px);
        }

        .slide .item:nth-child(5){
            left: calc(50% + 440px);
        }

        /* Hidden items */
        .slide .item:nth-child(n + 6){
            left: calc(50% + 660px);
            opacity: 0;
        }

        .item .content{
            position: absolute;
            top: 50%;
            left: 100px;
            width: 300px;
            text-align: left;
            color: #eee;
            transform: translate(0, -50%);
            font-family: 'Roboto', sans-serif; /* Apply Google font to content */
            display: none;
        }

        .slide .item:nth-child(2) .content{
            display: block;
        }

        .content .name{
            font-size: 40px;
            text-transform: uppercase;
            font-weight: bold;
            font-family: 'Montserrat', sans-serif; /* Apply Google font to name */
            opacity: 0;
            animation: animate 1s ease-in-out 1 forwards;
            color: white;
        }

        .content .des{
            margin-top: 10px;
            margin-bottom: 20px;
            opacity: 0;
            animation: animate 1s ease-in-out 0.3s 1 forwards;
            color: #eafaf1;
            outline-color: black; 
        }

        .content button{
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            opacity: 0;
            animation: animate 1s ease-in-out 0.6s 1 forwards;
        }

        @keyframes animate {
            from{
                opacity: 0;
                transform: translate(0, 100px);
                filter: blur(33px);
            }
            to{
                opacity: 1;
                transform: translate(0);
                filter: blur(0);
            }
        }

        .button{
            width: 100%;
            text-align: center;
            position: absolute;
            bottom: 20px;
        }

        .button button{
            width: 41px;
            height: 36px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            margin: 0 5px;
            border: 1px solid #000;
            transition: 0.3s;
            color: green;
        }

        .button button:hover{
            background: #ababab;
            color: #fff;
        }
        
        
    </style>
</head>
<body>

<div class="container">

    <div class="slide">

        <div class="item" style="background-image: url(https://images.pexels.com/photos/1573885/pexels-photo-1573885.jpeg);">
            <div class="content">
                <div class="name">Board of Directors</div>
                <div class="des">
                    <ul>
                        <li><strong>Mr. Asoka Pathirage</strong> - Mr. Asoka Pathirage</li>
                        <li><strong>Mr. Malik Fernando</strong> - Director</li>
                        <li><strong>Dr. Hansa Wijayasuriya</strong> - Director</li>
                        <li><strong>Mr. Ananda Wijetilaka Atukorala</strong> - Director</li>
                        <li><strong>Mr. Shiran Dammage</strong> - Director</li>
                        <li><strong>Mr. A.M.A.A.L Ratnayake</strong> - Director</li>
                    </ul>
                </div>
                <button>See More</button>
            </div>
        </div>

        <div class="item" style="background-image: url(https://images.pexels.com/photos/235925/pexels-photo-235925.jpeg);">
            <div class="content">
                <div class="name">About Us</div>
                
                <div class="des">Welcome to IsLand your trusted partner in modern land management. Our Online Land Management System simplifies property transactions, providing buyers, sellers, and managers with a seamless, secure platform. We offer tools to make land buying, selling, and management easy and efficient.
                </div>
                <button>See More</button>
            </div>
        </div>

        <div class="item" style="background-image: url(https://images.pexels.com/photos/28938202/pexels-photo-28938202.jpeg);">
            <div class="content">
                <div class="name">Our Vision</div>
                <div class="des">Our Vision: To lead in digital property management by empowering individuals and businesses with innovative technology that simplifies and streamlines real estate transactions.</div>
                <button>See More</button>
            </div>
        </div>

        <!-- Contact Us Section -->
        <div class="item" style="background-image: url(https://images.pexels.com/photos/18041018/pexels-photo-18041018.jpeg);">
            <div class="content">
                <div class="name">Contact Us</div>
                <div class="des">
                    <ul>
                        <li><strong>Email:</strong> info@island.com</li>
                        <li><strong>Phone:</strong> +123-456-7890</li>
                        <li><strong>Address:</strong> 123 Baker Street, Negombo, Sri Lanka</li>
                    </ul>
                </div>
                <button>Get in Touch</button>
            </div>
        </div>

    </div>

    <div class="button">
        <button class="prev"><i class="fa-solid fa-arrow-left-long"></i></button>
        <button class="next"><i class="fa-solid fa-arrow-right"></i></button>
    </div>

</div>

<!-- Internal JavaScript -->
<script>
    let next = document.querySelector('.next')
    let prev = document.querySelector('.prev')

    next.addEventListener('click', function(){
        let items = document.querySelectorAll('.item')
        document.querySelector('.slide').appendChild(items[0])
    })

    prev.addEventListener('click', function(){
        let items = document.querySelectorAll('.item')
        document.querySelector('.slide').prepend(items[items.length - 1])
    })
</script>

</body>
</html>
