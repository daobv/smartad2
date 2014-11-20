<?php

/**
 * This is the model class for table "interaction".
 *
 * The followings are the available columns in table 'interaction':
 * @property integer $id
 * @property integer $app_id
 * @property integer $user_id
 * @property integer $day_click
 * @property integer $success
 * @property double $revenue
 * @property integer $date
 */
class Interaction extends Model
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'interaction';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('app_id, user_id', 'required'),
			array('app_id, user_id, day_click, success, date', 'numerical', 'integerOnly'=>true),
			array('revenue', 'numerical'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, app_id, user_id, day_click, success, revenue, date', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'app_id' => 'App',
			'user_id' => 'User',
			'day_click' => 'Day Click',
			'success' => 'Success',
			'revenue' => 'Revenue',
			'date' => 'Date',
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
		$criteria->compare('app_id',$this->app_id);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('day_click',$this->day_click);
		$criteria->compare('success',$this->success);
		$criteria->compare('revenue',$this->revenue);
		$criteria->compare('date',$this->date);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Interaction the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    public function getInteractionByUser($user_id,$from,$to){
        $interaction = Interaction::model()->findAllBySql("SELECT app_id, SUM(day_click) as day_click,
      SUM(success) as success, SUM(revenue) as revenue FROM ".$this->tableName()." WHERE user_id = ".$user_id. " AND date <= ".$to. " && date >= ".$from." GROUP BY app_id");
        return $interaction;
    }
    public function getTodayRevenue(){
        $userId=  Yii::app()->user->id;
        $interactions = $this->getInteractionByUser($userId,date('ymd',time()),date('ymd',time()));
        $sum = 0;
        if(count($interactions) > 0)
            foreach($interactions as $interaction){
                $sum += $interaction->revenue;
            }
        return $sum;
    }
    public function getInteractionByDate($user_id,$from,$to){
        $interaction = Interaction::model()->findBySql("SELECT SUM(day_click) as day_click,
        SUM(success) as success, SUM(revenue) as revenue , date FROM ".$this->tableName()." WHERE user_id = ".$user_id. " AND date <= ".$to. " && date >= ".$from." GROUP BY date");
        return $interaction;
    }
    public function percentActionPerClick($user_id,$from,$to){
        $interaction = Interaction::model()->findBySql("SELECT SUM(day_click) as day_click,
        SUM(success) as success, SUM(revenue) as revenue , date FROM ".$this->tableName()." WHERE user_id = ".$user_id. " AND date <= ".$to. " && date >= ".$from." GROUP BY date");
        return $interaction;
    }
    public function getMonthRevenue($user_id){
        $startMonth = "1".date('ymd',time());
        $endMonth = "31".date('ymd',time());
        $interaction = Interaction::model()->findBySql("SELECT SUM(revenue) as revenue  FROM ".$this->tableName()." WHERE user_id = ".$user_id. " AND date <= ".$endMonth. " && date >= ".$startMonth);
        if($interaction->revenue){
            return $interaction->revenue;
        }
        return 0;
    }
    public function getWeekRevenue($user_id){
        $today = date('ymd',time());
        $date = date("Y-m-d H:i:s");
        $startWeek = date("ymd",strtotime( '-1 week' , strtotime($date)));
        $interaction = Interaction::model()->findBySql("SELECT SUM(revenue) as revenue  FROM ".$this->tableName()." WHERE user_id = ".$user_id. " AND date <= ".$today. " && date >= ".$startWeek);
        if($interaction->revenue){
            return $interaction->revenue;
        }
        return 0;
    }
    public function getMerchantInteraction($app_id,$from,$to){
        $interaction = Interaction::model()->findBySql("SELECT SUM(day_click) as day_click,
        SUM(success) as success, SUM(revenue) as revenue , date FROM ".$this->tableName()." WHERE app_id = ".$app_id. " AND date <= ".$to. " && date >= ".$from." GROUP BY date");
        return $interaction;
    }

}
