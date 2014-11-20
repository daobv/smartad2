<?php

/**
 * This is the model class for table "static_page".
 *
 * The followings are the available columns in table 'static_page':
 * @property integer $id
 * @property string $title
 * @property string $slug
 * @property string $description
 * @property string $content
 * @property string $date
 * @property integer $author
 * @property integer $type
 * @property integer $static_type
 * @property integer $static_category
 * @property integer $boolean
 */
class StaticPage extends Model
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'static_page';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('author, type, boolean', 'numerical', 'integerOnly'=>true),
			array('title, slug, description', 'length', 'max'=>255),
			array('content, date', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, slug, description, content, date, author, type, static_type,static_category,boolean', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
            'author_name' => array(self::BELONGS_TO,"User",'author'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'slug' => 'Slug',
			'description' => 'Description',
			'content' => 'Content',
			'date' => 'Date',
			'author' => 'Author',
			'type' => 'Type',
			'boolean' => 'Boolean',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('slug',$this->slug,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('author',$this->author);
        if($this->type == ""){
            $criteria->compare('type',"<> 1");
            $criteria->compare('type',"<> 9");
            $criteria->compare('type',"<> 0");
        }else{
            $criteria->compare('type',$this->type,true);
        }

        $criteria->compare('type',$this->type);
        $criteria->compare('static_type',$this->static_type);
        $criteria->compare('static_category',$this->static_category);
		$criteria->compare('boolean',$this->boolean);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    public function searchPost()
    {
        $criteria=new CDbCriteria;

        $criteria->compare('id',$this->id);
        $criteria->compare('title',$this->title,true);
        $criteria->compare('slug',$this->slug,true);
        $criteria->compare('description',$this->description,true);
        $criteria->compare('content',$this->content,true);
        $criteria->compare('date',$this->date,true);
        $criteria->compare('author',$this->author);
        $criteria->compare('type',0,true);
        $criteria->compare('static_type','post',true);
        $criteria->compare('static_category',$this->static_category);
        $criteria->compare('boolean',$this->boolean);

        return new CActiveDataProvider($this, array(
            'criteria'=>$criteria,
        ));
    }
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return StaticPage the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    public function getTypeDropdownList(){
        return array(
            // 1=>"Thông Báo",
            2=>"Liên Hệ",
            3=>"Điều Khoản",
            4=>"About Us",
            5=>"Footer",
            6=>"Giới Thiệu",
            7=>"Hỏi Đáp",
            8=>"Khác",
        );
    }
    public function getStatusDropdownList(){
        return array(
            false  => "Disable",
            true  => "Enable",
        );
    }

    public function getTypeText($type){
        $typeArray = $this->getTypeDropdownList();
        return $typeArray[$type];
    }

    public function getStautsText($status){
        $statusArray = $this->getStatusDropdownList();
        return $statusArray[$status];
    }

    public function regex_replace($variable){
        $value = Setting::getSetting($variable);
        return $value;
    }

    public function getPageContent($slug){
        $staticPage = $this->model()->findByAttributes(array('slug'=>$slug,'boolean'=>1));
        if($staticPage){
            $content = $staticPage->content;
            preg_match_all('#\{(.*?)\}#',$content, $match);
            $label = $match[0];
            $keywords = $match[1];
            $arrayToReplace = array();
            if(count($keywords) > 0){
                for($i = 0; $i < count($keywords); $i++){
                    $value = $this->regex_replace($keywords[$i]);
                    $arrayToReplace[$label[$i]] = $value;
                }
            }

            $content = strtr($content, $arrayToReplace);
            $content = strip_tags($content);
            $new_str = str_replace("&nbsp;", '', $content);
            return $new_str;
        }
        return "Undefined block. Please change block configuration  in the database";
    }

    public static function getEmailTemplate($slug){
        $staticPage = StaticPage::model()->findByAttributes(array('slug'=>$slug,'boolean'=>1,'type'=>9));
        if($staticPage){
            $content = str_replace('&lt;','<',$staticPage->content);
            $content = str_replace('&gt;','>',$content);
        } else {
            $content = false;
        }
        return $content;
    }
    public function getSlug(){
        $marTViet = array("à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă", "ằ", "ắ", "ặ", "ẳ", "ẵ", "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ", "ì", "í", "ị", "ỉ", "ĩ", "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ", "ờ", "ớ", "ợ", "ở", "ỡ", "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ", "ỳ", "ý", "ỵ", "ỷ", "ỹ", "đ", "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ", "Ẫ", "Ă", "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ", "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ", "Ể", "Ễ", "Ì", "Í", "Ị", "Ỉ", "Ĩ", "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ", "Ổ", "Ỗ", "Ơ", "Ờ", "Ớ", "Ợ", "Ở", "Ỡ", "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ", "Ự", "Ử", "Ữ", "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ", "Đ", " ", '"');
        $marKoDau = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "i", "i", "i", "i", "i", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "y", "y", "y", "y", "y", "d", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "I", "I", "I", "I", "I", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "Y", "Y", "Y", "Y", "Y", "D", "-", '');
        $str = strtolower(str_replace($marTViet, $marKoDau, trim($this->title)));
        $str = str_replace("–", "-", $str);
        $str = str_replace("/", "-", $str);
        $str = str_replace(":", "-", $str);
        $str = str_replace("--", "-", $str);
        $str = str_replace("--", "-", $str);
        return $str;
    }
}
