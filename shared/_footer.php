<footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <!-- Insert website logo -->
          <img src="images/company-logo.png" alt="Website Logo">
          <!-- Display visitor count -->
          <p>STUDENT MANAGEMENT SYSTEM</p>
          <!-- Display time zone -->
          <p>St#72, Toul Kork District, Phnom Penh City, Cambodia</p>
        </div>
        <div class="col-md-4">
          <p>Time Zone: <?php
                        date_default_timezone_set('Asia/Phnom_Penh');
                        $current_time = date('D M d Y H:i:s \G\M\TO (T)');
                        echo "<p>$current_time</p>";
                        ?></p>
        </div>
        <div class="col-md-4">
          <div class="footer-links">
           
          <p>Follow us on</p>
          </div>
          <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f facebook"></i></a>
            <a href="#"><i class="fa-brands fa-x-twitter twitter"></i></a>
            <a href="#"><i class="fab fa-instagram instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in linked-in"></i></a>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-md-12">
          <p>&copy; <?php echo date('Y'); ?> By <a href="/" target="_blank">ProjectsAndPrograms</a>. All rights reserved.</p>
        </div>
      </div>
    </div>
  </footer>



  <script src="https://kit.fontawesome.com/a81368914c.js"></script>
  <script src="js/bootstrap.bundle.js"></script>
  <script src="./shared/app.js"></script>
</body>

</html>
