<div class="site-footer">
    <div class="inner dark">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 mb-3 mb-md-0 mx-auto">
                    <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ -->Distributed By <a href="https://themewagon.com" target="_blank" >ThemeWagon</a>
                    </p>
                </div>
                
            </div>
        </div>
    </div>
</div>

<div id="overlayer"></div>
<div class="loader">
    <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/owl.carousel.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/jquery.animateNumber.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/jquery.waypoints.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/jquery.fancybox.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/aos.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/daterangepicker.js"></script>

<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/typed.js"></script>
<script>
    $(function() {
        var slides = $('.slides'),
        images = slides.find('img');

        images.each(function(i) {
            $(this).attr('data-id', i + 1);
        })

        var typed = new Typed('.typed-words', {
            strings: ["San Francisco."," Paris."," New Zealand.", " Maui.", " London."],
            typeSpeed: 80,
            backSpeed: 80,
            backDelay: 4000,
            startDelay: 1000,
            loop: true,
            showCursor: true,
            preStringTyped: (arrayPos, self) => {
                arrayPos++;
                console.log(arrayPos);
                $('.slides img').removeClass('active');
                $('.slides img[data-id="'+arrayPos+'"]').addClass('active');
            }

        });
    })
</script>

<script src="https://cdn.jsdelivr.net/gh/RdjcMada/GessWhoStatic@main/bootstrap/js/custom.js"></script>

</body>

</html>
