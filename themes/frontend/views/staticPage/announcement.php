<script
    src="<?php echo Yii::app()->theme->baseUrl ?>/js/jquery/jquery.js"></script>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-9" style="padding-left: 0px">
                <h4 class="post-title"><?php echo $model->title;?></h4>
                <div class="post-meta form-group">
                    <i class="glyphicon glyphicon-user">Posted by <a href="#" title="Posts by <?php echo $model['author_name']['username']?>" rel="author"> <?php echo $model['author_name']['username']?> </a> </i>
                    <i class="glyphicon glyphicon-time"> <?php echo date("d/m/Y",strtotime($model->date))?></i>
                </div>

                <p>
                    <?php echo $model->content; ?>
                </p>
            </div>
            <div class = "col-md-3">
                <h4 class="post-relate">Bài viết liên quan</h4>

            </div>
        </div>
    </div>
</div>