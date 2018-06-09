<?php
namespace PaduaHome\Component;

use Page;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;

class Table extends Page
{
    private static $db = [
        'table_content' => 'HTMLText',
        'button1_url' => 'Text',
        'button1_title' => 'Text',
        'button2_url' => 'Text',
        'button2_title' => 'Text',
    ];
    private static $table_name = 'tabular_content';
    private static $can_be_root = false;

    public function getCMSFields() 
	  {
	    $fields = parent::getCMSFields();
      $fields->addFieldToTab("Root.Main", HTMLEditorField::create("table_content", "Table Content")->setRows(6));

      $fields->addFieldToTab('Root.Main', TextField::create('button1_title','Button Title 1'));
      $fields->addFieldToTab('Root.Main', TextField::create('button1_url','Button URL 1'));
      $fields->addFieldToTab('Root.Main', TextField::create('button2_title','Button Title 2'));
      $fields->addFieldToTab('Root.Main', TextField::create('button2_url','Button URL 2'));
	    return $fields;
	  }
}