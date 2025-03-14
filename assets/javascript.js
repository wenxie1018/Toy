          var slideIndex = 1;
          showSlides(slideIndex);

          
          function plusSlides(n) {
            showSlides(slideIndex += n);
          }

          
          function currentSlide(n) {
            showSlides(slideIndex = n);
          }

          function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {slideIndex = 1}
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";
            dots[slideIndex-1].className += " active";
          }

                // Get the modal
            var modal = document.getElementById('id01');
            
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            function openNav() {
                document.getElementById("myNav").style.height = "100%";
                document.getElementById("main").style.marginLeft = "250px";
                document.getElementById("main").style.backgroundColor = "rgba(0, 0, 0, 0.726);";
              }
          
          /* Close */
              function closeNav() {
                document.getElementById("myNav").style.height = "0%";
                document.getElementById("main").style.marginLeft = "0";
                document.getElementById("main").style.backgroundColor = "none";
              }

              window.onscroll = function() {scrollFunction()};
          
              function scrollFunction() {
                if (document.body.scrollTop>200 || document.documentElement.scrollTop>200) {
                  document.getElementById("navbar").style.top = "-100px";
                } else {
                  document.getElementById("navbar").style.top = "0";
                }
              }