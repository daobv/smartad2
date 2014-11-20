<?php if ($warnings): ?>
    <div class="col-md-12">
        <div class="grid simple ">
            <div class="grid-body no-border">
                <div class="row-fluid">
                    <?php foreach($warnings as $warning):?>
                     <?php if(isset($_SESSION['wning_'.$warning->id]) && $_SESSION['wning_'.$warning->id] == 1):?>

                    <?php else: ?>
                    <div class="message ms_warning" id="wning_<?php echo $warning->id?>">
                        <div style="margin-right: 15px;"><i class="fa fa-warning"></i> <?php echo $warning->message;?></div>
                        <div class="mss_clostbtn wningclosebtn" data-id="wning_<?php echo $warning->id; ?>"></div>
                    </div>
                     <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('.wningclosebtn').click(function () {
            var id = $(this).attr('data-id');
            $('#' + id).hide();
           $.get('<?php echo Yii::app()->createUrl("user/closewarning");?>', {act: "closewarning", id: id}, function (re) {});
        })
    </script>
<?php endif; ?>