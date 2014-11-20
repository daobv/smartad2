<?php

/**
 * This is the model class for table "user_info".
 *
 * The followings are the available columns in table 'user_info':
 * @property integer $id
 * @property integer $user_id
 * @property string $full_name
 * @property string $job
 * @property string $company
 * @property string $address
 * @property string $city
 * @property string $country
 * @property string $phone_number
 * @property integer $user_type
 * @property string $store_channel
 * @property string $reference
 */
class UserInfo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('user_id, full_name, address, city, country, phone_number, user_type', 'required'),
			array('user_id, user_type', 'numerical', 'integerOnly'=>true),
			array('full_name, job, company, address, city, country, phone_number, store_channel, reference', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, user_id, full_name, job, company, address, city, country, phone_number, user_type, store_channel, reference', 'safe', 'on'=>'search'),
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
			'user_id' => 'User',
			'full_name' => 'Full Name',
			'job' => 'Job',
			'company' => 'Company',
			'address' => 'Address',
			'city' => 'City',
			'country' => 'Country',
			'phone_number' => 'Phone Number',
			'user_type' => 'User Type',
			'store_channel' => 'Store Channel',
			'reference' => 'Reference',
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
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('full_name',$this->full_name,true);
		$criteria->compare('job',$this->job,true);
		$criteria->compare('company',$this->company,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('country',$this->country,true);
		$criteria->compare('phone_number',$this->phone_number,true);
		$criteria->compare('user_type',$this->user_type);
		$criteria->compare('store_channel',$this->store_channel,true);
		$criteria->compare('reference',$this->reference,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return UserInfo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    public function getUserType(){
        return array('1'=>'Mới bắt đầu','2'=>'Wap master','3'=>'Developer','4'=>'Marketer');
    }
    public function getUserTypeText($typeId){
       $userTypeList = $this->getUserType();
        if(isset($userTypeList[$typeId]))
            return $userTypeList[$typeId];
        return "Undefined";
    }
}
