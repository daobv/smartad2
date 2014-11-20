<?php

/**
 * This is the model class for table "category".
 *
 * The followings are the available columns in table 'category':
 * @property integer $id
 * @property integer $parent_id
 * @property string $name
 * @property string $slug
 * @property integer $order
 * @property integer $active
 */
class Category extends Model
{
	/**
	 * @return string the associated database table name
	 */
    private $_items = array();
    public $maxOrder;
    public $category_top_parent_id;
	public function tableName()
	{
		return 'category';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, slug', 'required'),
			array('parent_id, order, active', 'numerical', 'integerOnly'=>true),
			array('name, slug', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, parent_id, name, slug, order, active', 'safe', 'on'=>'search'),
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
            'category' => array(self::HAS_MANY, 'Category', 'parent_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'parent_id' => 'Parent',
			'name' => 'Name',
			'slug' => 'Slug',
			'order' => 'Order',
			'active' => 'Active',
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
		$criteria->compare('parent_id',$this->parent_id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('slug',$this->slug,true);
		$criteria->compare('order',$this->order);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Category the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    public function getActive(){
        return ($this->active == 1 ? 'Active' : 'Not active');
    }
    public function getParentCategoryName(){
        $model = $this->findByPk($this->parent_id);
        if($model != null){
            return $model->name;
        } else {
            return '';
        }
    }
    public function getDropdownCategory($parent_id = 0){
        if($parent_id == 0){
            $this->_items[0] = 'Không có danh mục cha';
        }
        $this->getDropdownChildren($parent_id);
        return $this->_items;
    }
    private function getDropdownChildren($parent, $level=0) {
        $criteria = new CDbCriteria;
        $criteria->condition = 'parent_id=:id';
        $criteria->params = array(':id'=>$parent);
        $criteria->order = 'parent_id,`order` ASC';
        $model = $this->findAll($criteria);
        foreach ($model as $key) {
            $this->_items[$key->id] = str_repeat(' – ', $level) . $key->name;
            $this->getDropdownChildren($key->id, $level + 1);
        }
    }
    public function getSubLevelParentCategory(){
        $model = $this->findByPk($this->parent_id);
        if($model){
            return $model;
        } else {
            return '';
        }
    }
    public function getTopParentCategory(Category $category){
        if($category->parent_id == 0){
            return $category;
        }else{
            $subLevelParentCategory = $category->getSubLevelParentCategory();
            while($subLevelParentCategory->parent_category_id != 0){
                $subLevelParentCategory = $subLevelParentCategory->getSubLevelParentCategory();
            }
            return $subLevelParentCategory;
        }
    }

    private function getArrayChildren($parent, $level=0){
        $criteria = new CDbCriteria;
        $criteria->condition = 'parent_id=:id';
        $criteria->params = array(':id'=>$parent);
        $criteria->order = 'parent_id,`order` ASC';
        $model = $this->findAll($criteria);
        foreach ($model as $key) {
            $this->_items[$key->id] = $key->id;
            $this->getArrayChildren($key->id, $level + 1);
        }
    }
    //trả về 1 mảng bao gồm các phần tử là category_id
    public function getArrayAllCategory($category_id){
        $this->_items = null;
        $this->_items[0] = $category_id;
        $this->getArrayChildren($category_id);
        return $this->_items;
    }

    //trả về name của category theo category_id
    public function getCategoryNameById($category_id){
        $category = Category::model()->findByPk($category_id);
        if(!$category)
            return "Undefined";
        return $category->name;
    }
    /**
     * 2 hàm này trả về 1 mảng bao gồm các category_id lấy theo thứ tự từ sub-category level cuối
     * */
    private function getReverseArrayChildren($model){
        $categories = Category::model()->findAllByAttributes(array('parent_id'=>$model->id,'active'=>1));
        foreach($categories as $key => $category){
            $this->_items[$key] = $category;
        }
        return $this->_items;
    }
    public function getReverseArrayCategory($model){
        $this->_items = null;
        return $this->getReverseArrayChildren($model);
    }

}
