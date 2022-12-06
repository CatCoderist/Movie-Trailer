<!DOCTYPE html>
<html lang="en">
<?php
$id = $_GET['id'];
//conditions
if ((!$_GET['id'])) {
    echo "<script>alert('You are Not Suppose to come Here Directly');window.location.href='index.php';</script>";
}
include "connection.php";
$movieQuery = "SELECT * FROM movieTable WHERE movieID = $id";
$movieImageById = mysqli_query($con, $movieQuery);
$row = mysqli_fetch_array($movieImageById);
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style/styles2.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <title>Book <?php echo $row['movieTitle']; ?> Now</title>
    <link rel="icon" type="image/png" href="img/logo.png">
    <script src="_.js "></script>
</head>

<body style="background-color:#6e5a11;">
    <div class="booking-panel">
        <div class="booking-panel-section booking-panel-section1">
            <h1>RESERVE YOUR TICKET</h1>
        </div>
        <div class="booking-panel-section booking-panel-section2" onclick="window.history.go(-1); return false;">
            <i class="fas fa-2x fa-times"></i>
        </div>
        <div class="booking-panel-section booking-panel-section3">
            <div class="movie-box">
                <?php
                echo '<img src="' . $row['movieImg'] . '" alt="">';
                ?>
            </div>
        </div>
        <div class="booking-panel-section booking-panel-section4">
            <div class="title"><?php echo $row['movieTitle']; ?></div>
            <div class="movie-information">
                <table>
                    <tr>
                        <td>GENGRE</td>
                        <td><?php echo $row['movieGenre']; ?></td>
                    </tr>
                    <tr>
                        <td>DURATION</td>
                        <td><?php echo $row['movieDuration']; ?></td>
                    </tr>
                    <tr>
                        <td>RELEASE DATE</td>
                        <td><?php echo $row['movieRelDate']; ?></td>
                    </tr>
                    <tr>
                        <td>DIRECTOR</td>
                        <td><?php echo $row['movieDirector']; ?></td>
                    </tr>
                    <tr>
                        <td>ACTORS</td>
                        <td><?php echo $row['movieActors']; ?></td>
                    </tr>
                </table>
            </div>
            <div class="booking-form-container">
                <form action="verify.php" method="POST">


                    <select name="theatre" required>
                        <option value="" disabled selected>THEATRE</option>
                        <option value="main-hall">Main Hall</option>
                        <option value="vip-hall">VIP Hall</option>
                        <option value="private-hall">Private Hall</option>
                    </select>

                    <select name="type" required>
                        <option value="" disabled selected>TYPE</option>
                        <option value="3d">3D</option>
                        <option value="2d">2D</option>
                        <option value="imax">IMAX</option>
                        <option value="7d">7D</option>
                    </select>

                    <select name="date" required>
                        <option value="" disabled selected>DATE</option>
                        <option value="12-3">October 1,2022</option>
                        <option value="12-3">October 2,2022</option>
                        <option value="12-3">October 3,2022</option>
                        <option value="12-3">October 4,2022</option>
                        <option value="12-3">October 5,2022</option>
                        <option value="12-3">October 6,2022</option>
                        <option value="12-3">October 7,2022</option>
                        <option value="12-3">October 8,2022</option>
                        <option value="12-3">October 9,2022</option>
                        <option value="12-3">October 10,2022</option>
                        <option value="12-3">October 11,2022</option>
                        <option value="12-3">October 12,2022</option>
                        <option value="12-3">October 13,2022</option>
                        <option value="12-3">October 14,2022</option>
                        <option value="12-3">October 15,2022</option>
                        <option value="12-3">October 16,2022</option>
                        <option value="12-3">October 17,2022</option>
                        <option value="12-3">October 18,2022</option>
                        <option value="12-3">October 19,2022</option>
                        <option value="12-3">October 20,2022</option>
                        <option value="12-3">October 21,2022</option>
                        <option value="12-3">October 22,2022</option>
                        <option value="12-3">October 23,2022</option>
                        <option value="12-3">October 24,2022</option>
                        <option value="12-3">October 25,2022</option>
                        <option value="12-3">October 26,2022</option>
                        <option value="12-3">October 27,2022</option>
                        <option value="12-3">October 28,2022</option>
                        <option value="12-3">October 29,2022</option>
                        <option value="12-3">October 30,2022</option>
                        <option value="12-3">October 31,2022</option>
                        <option value="12-3">November 1,2022</option>
                        <option value="13-3">November 2,2022</option>
                        <option value="14-3">November 3,2022</option>
                        <option value="15-3">November 4,2022</option>
                        <option value="12-3">November 5,2022</option>
                        <option value="13-3">November 6,2022</option>
                        <option value="14-3">November 7,2022</option>
                        <option value="15-3">November 8,2022</option>
                        <option value="12-3">November 9,2022</option>
                        <option value="13-3">November 10,2022</option>
                        <option value="14-3">November 11,2022</option>
                        <option value="15-3">November 12,2022</option>
                        <option value="12-3">November 13,2022</option>
                        <option value="13-3">November 14,2022</option>
                        <option value="14-3">November 152022</option>
                        <option value="15-3">November 16,2022</option>
                        <option value="12-3">November 17,2022</option>
                        <option value="13-3">November 18,2022</option>
                        <option value="14-3">November 19,2022</option>
                        <option value="15-3">November 20,2022</option>
                        <option value="12-3">November 212022</option>
                        <option value="13-3">November 22,2022</option>
                        <option value="14-3">November 23,2022</option>
                        <option value="15-3">November 24,2022</option>
                        <option value="12-3">November 25,2022</option>
                        <option value="13-3">November 26,2022</option>
                        <option value="14-3">November 27,2022</option>
                        <option value="15-3">November 28,2022</option>
                        <option value="12-3">November 29,2022</option>
                        <option value="13-3">November 30,2022</option>

                    </select>

                    <select name="hour" required>
                        <option value="" disabled selected>TIME</option>
                        <option value="09-00">09:00 AM</option>
                        <option value="12-00">12:00 AM</option>
                        <option value="15-00">03:00 PM</option>
                        <option value="18-00">06:00 PM</option>
                        <option value="21-00">09:00 PM</option>
                        <option value="24-00">12:00 PM</option>
                    </select>

                    <input placeholder="First Name" type="text" name="fName" required>

                    <input placeholder="Last Name" type="text" name="lName">

                    <input placeholder="Phone Number" type="text" name="pNumber" required>
                    <input placeholder="email" type="email" name="email" required>
                    <input type="hidden" name="movie_id" value="<?php echo $id; ?>">



                    <button type="submit" value="save" name="submit" class="form-btn">Book a seat</button>

                </form>
            </div>
        </div>
    </div>

    <script src="scripts/jquery-3.3.1.min.js "></script>
    <script src="scripts/script.js "></script>
</body>

</html>