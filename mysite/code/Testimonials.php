<?php
namespace PaduaHome\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Testimonials extends Page
{
    private static $db = [];
    private static $table_name = 'testimonials';
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
      $fields->addFieldToTab('Root.Attachments', UploadField::create('Photo'));
	    return $fields;
	  }
}