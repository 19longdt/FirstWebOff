<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <style>
            body {
                font: 14px/2 "Open sans", sans-serif;
                letter-spacing: 0.05em;
            }

            .btn {
                display: inline-block;
                padding: 13px 20px;
                color: #fff;
                text-decoration: none;
                position: relative;
                background: transparent;
                border: 1px solid #e1e1e1;
                font: 12px/1.2 "Oswald", sans-serif;
                letter-spacing: 0.4em;
                text-align: center;
                text-indent: 2px;
                text-transform: uppercase;
                transition: color 0.1s linear 0.05s;
            }
            .btn::before {
                content: "";
                display: block;
                position: absolute;
                top: 50%;
                left: 0;
                width: 100%;
                height: 1px;
                background: #e1e1e1;
                z-index: 1;
                opacity: 0;
                transition: height 0.2s ease, top 0.2s ease, opacity 0s linear 0.2s;
            }
            .btn::after {
                transition: border 0.1s linear 0.05s;
            }
            .btn .btn-inner {
                position: relative;
                z-index: 2;
            }
            .btn:hover {
                color: #373737;
                transition: color 0.1s linear 0s;
            }
            .btn:hover::before {
                top: 0;
                height: 100%;
                opacity: 1;
                transition: height 0.2s ease, top 0.2s ease, opacity 0s linear 0s;
            }
            .btn:hover::after {
                border-color: #373737;
                transition: border 0.1s linear 0s;
            }

            .slideshow {
                overflow: hidden;
                position: relative;
                width: 100%;
                height: 100vh;
                z-index: 1;
            }
            .slideshow .slideshow-inner {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
            .slideshow .slides {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 1;
            }
            .slideshow .slide {
                display: none;
                overflow: hidden;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 1;
                opacity: 0;
                transition: opacity 0.3s ease;
            }
            .slideshow .slide.is-active {
                display: block;
            }
            .slideshow .slide.is-loaded {
                opacity: 1;
            }
            .slideshow .slide .caption {
                padding: 0 100px;
            }
            .slideshow .slide .image-container {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-position: center;
                z-index: 1;
                background-size: cover;
                image-rendering: optimizeQuality;
            }
            .slideshow .slide .image-container::before {
                content: "";
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5);
            }
            .slideshow .slide .image {
                width: 100%;
                width: 100%;
                object-fit: cover;
                height: 100%;
            }
            .slideshow .slide-content {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 2;
                color: #fff;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .slideshow .slide .title {
                margin: 0 auto 15px;
                max-width: 1000px;
                font: 300 50px/1.2 "Oswald", sans-serif;
                letter-spacing: 0.35em;
                text-transform: uppercase;
            }
            .slideshow .slide .text {
                margin: 0 auto;
                max-width: 1000px;
                font-size: 18px;
                line-height: 1.4;
            }
            .slideshow .slide .btn {
                margin: 15px 0 0;
                border-color: #fff;
            }
            .slideshow .slide .btn::before {
                background: #fff;
            }
            .slideshow .pagination {
                position: absolute;
                bottom: 35px;
                left: 0;
                width: 100%;
                height: 12px;
                cursor: default;
                z-index: 2;
                text-align: center;
            }
            .slideshow .pagination .item {
                display: inline-block;
                padding: 15px 5px;
                position: relative;
                width: 46px;
                height: 32px;
                cursor: pointer;
                text-indent: -999em;
                z-index: 1;
            }
            .slideshow .pagination .item + .page {
                margin-left: -2px;
            }
            .slideshow .pagination .item::before {
                content: "";
                display: block;
                position: absolute;
                top: 15px;
                left: 5px;
                width: 36px;
                height: 2px;
                background: rgba(255, 255, 255, 0.5);
                transition: background 0.2s ease;
            }
            .slideshow .pagination .item::after {
                width: 0;
                background: #fff;
                z-index: 2;
                transition: width 0.2s ease;
            }
            .slideshow .pagination .item:hover::before, .slideshow .pagination .item.is-active::before {
                background-color: #fff;
            }
            .slideshow .arrows .arrow {
                margin: -33px 0 0;
                padding: 20px;
                position: absolute;
                top: 50%;
                cursor: pointer;
                z-index: 3;
            }
            .slideshow .arrows .prev {
                left: 30px;
            }
            .slideshow .arrows .prev:hover .svg {
                left: -10px;
            }
            .slideshow .arrows .next {
                right: 30px;
            }
            .slideshow .arrows .next:hover .svg {
                left: 10px;
            }
            .slideshow .arrows .svg {
                position: relative;
                left: 0;
                width: 14px;
                height: 26px;
                fill: #fff;
                transition: left 0.2s ease;
            }
        </style>

    </head>
    <body> 
        <main class="main-content">
            <section class="slideshow">
                <div class="slideshow-inner">
                    <div class="slides">
                        <div class="slide is-active ">
                            <div class="slide-content">
                                <div class="caption">
                                    <div class="title">Slide title 1</div>
                                    <div class="text">
                                        <p>Slide description 1</p>
                                    </div> 
                                    <a href="#" class="btn">
                                        <span class="btn-inner">Learn More</span>
                                    </a>
                                </div>
                            </div>
                            <div class="image-container"> 
                                <img src="https://www.alixbdanthenay.fr/wp-content/uploads/2015/07/Indispensable-1.jpg" alt="" class="image" />
                            </div>
                        </div>
                        <div class="slide">
                            <div class="slide-content">
                                <div class="caption">
                                    <div class="title">Slide title 2</div>
                                    <div class="text">
                                        <p>Slide description 2</p>
                                    </div> 
                                    <a href="#" class="btn">
                                        <span class="btn-inner">Learn More</span>
                                    </a>
                                </div>
                            </div>
                            <div class="image-container">
                                <img src="https://www.alixbdanthenay.fr/wp-content/uploads/2015/07/Indispensable-4-1.jpg" alt="" class="image" />
                            </div>
                        </div>
                        <div class="slide">
                            <div class="slide-content">
                                <div class="caption">
                                    <div class="title">Slide title 3</div>
                                    <div class="text">
                                        <p>Slide description 3</p>
                                    </div> 
                                    <a href="#" class="btn">
                                        <span class="btn-inner">Learn More</span>
                                    </a>
                                </div>
                            </div>
                            <div class="image-container">
                                <img src="https://www.alixbdanthenay.fr/wp-content/uploads/2016/11/11.jpg" alt="" class="image" />
                            </div>
                        </div>
                        <div class="slide">
                            <div class="slide-content">
                                <div class="caption">
                                    <div class="title">Slide title 4</div>
                                    <div class="text">
                                        <p>Slide description 4</p>
                                    </div> 
                                    <a href="#" class="btn">
                                        <span class="btn-inner">Learn More</span>
                                    </a>
                                </div>
                            </div>
                            <div class="image-container"> 
                                <img src="https://www.alixbdanthenay.fr/wp-content/uploads/2016/11/20mars17-sans-typo.jpg" alt="" class="image" />
                            </div>
                        </div>
                    </div>
                    <div class="pagination">
                        <div class="item is-active"> 
                            <span class="icon">1</span>
                        </div>
                        <div class="item">
                            <span class="icon">2</span>
                        </div>
                        <div class="item">
                            <span class="icon">3</span>
                        </div>
                        <div class="item">
                            <span class="icon">4</span>
                        </div>
                    </div>
                    <div class="arrows">
                        <div class="arrow prev">
                            <span class="svg svg-arrow-left">
                                <svg version="1.1" id="svg4-Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="14px" height="26px" viewBox="0 0 14 26" enable-background="new 0 0 14 26" xml:space="preserve"> <path d="M13,26c-0.256,0-0.512-0.098-0.707-0.293l-12-12c-0.391-0.391-0.391-1.023,0-1.414l12-12c0.391-0.391,1.023-0.391,1.414,0s0.391,1.023,0,1.414L2.414,13l11.293,11.293c0.391,0.391,0.391,1.023,0,1.414C13.512,25.902,13.256,26,13,26z"/> </svg>
                                <span class="alt sr-only"></span>
                            </span>
                        </div>
                        <div class="arrow next">
                            <span class="svg svg-arrow-right">
                                <svg version="1.1" id="svg5-Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="14px" height="26px" viewBox="0 0 14 26" enable-background="new 0 0 14 26" xml:space="preserve"> <path d="M1,0c0.256,0,0.512,0.098,0.707,0.293l12,12c0.391,0.391,0.391,1.023,0,1.414l-12,12c-0.391,0.391-1.023,0.391-1.414,0s-0.391-1.023,0-1.414L11.586,13L0.293,1.707c-0.391-0.391-0.391-1.023,0-1.414C0.488,0.098,0.744,0,1,0z"/> </svg>
                                <span class="alt sr-only"></span>
                            </span>
                        </div>
                    </div>
                </div> 
            </section>
        </main>
        
    </body>
    

</html>