<?php

/**
 * This is the model class for table "merchant".
 *
 * The followings are the available columns in table 'merchant':
 * @property integer $id
 * @property integer $app_id
 * @property string $name
 * @property string $from
 * @property string $to
 * @property integer $action
 * @property integer $click
 * @property double $cr
 * @property double $payment
 */
class Merchant extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'merchant';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('app_id, name', 'required'),
			array('app_id, action, click', 'numerical', 'integerOnly'=>true),
			array('cr, payment', 'numerical'),
			array('name', 'length', 'max'=>255),
			array('from, to', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, app_id, name, from, to, action, click, cr, payment', 'safe', 'on'=>'search'),
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
			'name' => 'Name',
			'from' => 'From',
			'to' => 'To',
			'action' => 'Action',
			'click' => 'Click',
			'cr' => 'Cr',
			'payment' => 'Payment',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('from',$this->from,true);
		$criteria->compare('to',$this->to,true);
		$criteria->compare('action',$this->action);
		$criteria->compare('click',$this->click);
		$criteria->compare('cr',$this->cr);
		$criteria->compare('payment',$this->payment);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Merchant the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
