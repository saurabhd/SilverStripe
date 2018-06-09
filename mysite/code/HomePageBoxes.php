<?php
namespace PaduaHome\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;

class HomePageBoxes extends Page
{
    private static $db = ['read_more_title' => 'Text',
                          'read_more' => 'Text',
                          'read_more_title_2' => 'Text',
                          'read_more_2' => 'Text',
                          'css_class' => 'Text',];
    private static $table_name = 'homepageboxes';
    private static $can_be_root = false;

    private static $has_one = [
  		'Photo' => Image::class,
  	];	
    //...
    private static $owns = [
        'Photo'
    ];
    public function getCMSFields() 
	  {
	    $fields = parent::getCMSFields();
      $fields->addFieldToTab('Root.Attachments', UploadField::create('Photo'));
      $fields->addFieldToTab('Root.Main', TextField::create('read_more_title','Button Title 1'));
      $fields->addFieldToTab('Root.Main', TextField::create('read_more','Button URL 1'));
      $fields->addFieldToTab('Root.Main', TextField::create('read_more_title_2','Button Title 2'));
      $fields->addFieldToTab('Root.Main', TextField::create('read_more_2','Button URL 2'));
      $fields->addFieldToTab('Root.Main', TextField::create('css_class','CSS Class'));

	    return $fields;
	  }
}