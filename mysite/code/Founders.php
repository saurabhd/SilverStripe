<?php
namespace PaduaHome\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;

class Founders extends Page
{	
	private static $db = ['designation' => 'Text'];
    private static $table_name = 'founders';
    private static $can_be_root = false;

    private static $has_one = [
  		'Photo' => Image::class
  	];	
    //...
    private static $owns = [
        'Photo'
    ];
    public function getCMSFields() 
	{
	    $fields = parent::getCMSFields();
      	$fields->addFieldToTab('Root.Main', TextField::create('designation','Designation'));
      	$fields->addFieldToTab('Root.Attachments', UploadField::create('Photo'));
	    return $fields;
	}
}