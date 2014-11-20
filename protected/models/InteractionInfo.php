<?php

/**
 * This is the model class for table "interaction_info".
 *
 * The followings are the available columns in table 'interaction_info':
 * @property integer $id
 * @property integer $interaction_id
 * @property integer $status
 * @property string $ref_code
 * @property string $imei
 * @property string $time
 * @property string $os
 * @property string $ip
 * @property string $phone_number
 * @property string $telco
 * @property string $hash_code
 */
class InteractionInfo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'interaction_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('interaction_id, hash_code', 'required'),
			array('interaction_id, status', 'numerical', 'integerOnly'=>true),
			array('ref_code, imei, os, ip, phone_number, telco, hash_code', 'length', 'max'=>255),
			array('time', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, interaction_id, status, ref_code, imei, time, os, ip, phone_number, telco, hash_code', 'safe', 'on'=>'search'),
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
			'interaction_id' => 'Interaction',
			'status' => 'Status',
			'ref_code' => 'Ref Code',
			'imei' => 'Imei',
			'time' => 'Time',
			'os' => 'Os',
			'ip' => 'Ip',
			'phone_number' => 'Phone Number',
			'telco' => 'Telco',
			'hash_code' => 'Hash Code',
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
		$criteria->compare('interaction_id',$this->interaction_id);
		$criteria->compare('status',$this->status);
		$criteria->compare('ref_code',$this->ref_code,true);
		$criteria->compare('imei',$this->imei,true);
		$criteria->compare('time',$this->time,true);
		$criteria->compare('os',$this->os,true);
		$criteria->compare('ip',$this->ip,true);
		$criteria->compare('phone_number',$this->phone_number,true);
		$criteria->compare('telco',$this->telco,true);
		$criteria->compare('hash_code',$this->hash_code,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return InteractionInfo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
