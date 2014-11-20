<?php

/**
 * This is the model class for table "payment_info".
 *
 * The followings are the available columns in table 'payment_info':
 * @property integer $id
 * @property integer $user_id
 * @property integer $identity_card
 * @property string $type
 * @property string $number
 * @property string $owner
 * @property string $branch
 * @property string $update_code
 * @property integer $as_default
 */
class PaymentInfo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'payment_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
		//	array('identity_card,type, number,owner', 'required','message'=>"Vui lòng nhập '{attribute}'"),
			array('user_id, identity_card, as_default', 'numerical', 'integerOnly'=>true),
			array('type, number, owner, branch, update_code', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, user_id, identity_card, type, number, owner, branch, update_code, as_default', 'safe', 'on'=>'search'),
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
			'identity_card' => 'Identity Card',
			'type' => 'Type',
			'number' => 'Number',
			'owner' => 'Owner',
			'branch' => 'Branch',
			'update_code' => 'Update Code',
			'as_default' => 'As Default',
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
		$criteria->compare('identity_card',$this->identity_card);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('number',$this->number,true);
		$criteria->compare('owner',$this->owner,true);
		$criteria->compare('branch',$this->branch,true);
		$criteria->compare('update_code',$this->update_code,true);
		$criteria->compare('as_default',$this->as_default);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return PaymentInfo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
