<?php
/*
 * Bryce Stansberry
 * dvddetail
 *
 */

class DvdDetail extends DvdIndexView {

    public function display($dvd, $confirm = "") {
        //display page header
        parent::displayHeader("Display DVD Details");

        //retrieve movie details by calling get methods
        $id = $dvd->getId();
        $title = $dvd->getTitle();
        $rating = $dvd->getRating();
        $release_date = new \DateTime($dvd->getRelease_date());
        $image = $dvd->getImage();
        $description = $dvd->getDescription();


        if (strpos($image, "http://") === false AND strpos($image, "https://") === false) {
            $image = BASE_URL . '/' . DVD_IMG . $image;
        }
        ?>

        <div id="main-header">DVD Details</div>
        <hr>
        <!-- display movie details in a table -->
        <table id="detail">
            <tr>
                <td style="width: 150px;">
                    <img src="<?= $image ?>" alt="<?= $title ?>" />
                </td>
                <td style="width: 130px;">
                    <p><strong>Title:</strong></p>
                    <p><strong>Rating:</strong></p>
                    <p><strong>Release Date:</strong></p>

                    <p><strong>Description:</strong></p>
                    <div id="button-group">
                        <input type="button" id="edit-button" value="   Edit   "
                               onclick="window.location.href = '<?= BASE_URL ?>/dvd/edit/<?= $id ?>'">&nbsp;
                    </div>
                </td>
                <td>
                    <p><?= $title ?></p>
                    <p><?= $rating ?></p>
                    <p><?= $release_date->format('m-d-Y') ?></p>
                    <p class="media-description"><?= $description ?></p>
                    <div id="confirm-message"><?= $confirm ?></div>
                </td>
            </tr>
        </table>
        <a href="<?= BASE_URL ?>/dvd/index">Go to dvd list</a>

        <?php
        //display page footer
        parent::displayFooter();
    }

//end of display method
}