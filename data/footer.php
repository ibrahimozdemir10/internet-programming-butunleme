<footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <div class="footer_logo">
                                <a href="<?=SITE?>">
                                    <img src="" alt="">
                                </a>
                            </div>
                            <p>
                                
                            </p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="<?=SITE?>">
                                            <i class="ti-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?=SITE?>">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?=SITE?>">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?=SITE?>">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                H??zl?? Men??
                            </h3>
                            <ul>
                                <li><a href="<?=SITE?>">Anasayfa </a></li>
                                <?php
                                                    $kurumsal=$VT->VeriGetir("kurumsal","WHERE durum=?",array(1),"ORDER BY sirano ASC",1);
                                                    if($kurumsal!=false)
                                                    {
                                                        for($i=0;$i<count($kurumsal);$i++)
                                                        {
                                                            ?>
                                                                <li><a href="<?=SITE?>kurumsal/<?=$kurumsal[$i]["seflink"]?>"><?=stripslashes($kurumsal[$i]["baslik"])?></a></li>
                                                            <?php
                                                        }
                                                    }
                                                ?>
                                <li><a href="<?=SITE?>hizmetler">Hizmetler</a></li>
                                <li><a href="<?=SITE?>projeler">Projeler</a></li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget">
                            
                            <ul>
                                <li><a href="<?=SITE?>blog">Blog</a></li>
                                <li><a href="<?=SITE?>iletisim">??leti??im</a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<?=date("Y")?> T??m Haklar?? Sakl??d??r. <i class="fa fa-heart-o" aria-hidden="true"></i>  <a href="" target="_blank"></a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>