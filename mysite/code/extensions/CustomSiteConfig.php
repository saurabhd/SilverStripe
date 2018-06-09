<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class CustomSiteConfig extends DataExtension 
{

    private static $db = [
        'address' => 'Text',
        'phone' => 'Text',
        'email' => 'Text',
        'clock' => 'Text',
        'linkedin' => 'Text',
        'facebook' => 'Text',
        'twitter' => 'Text',
        'our_blog_id' => 'Text',
        'copyright' => 'HTMLText',
    ];

    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldToTab('Root.Main', TextareaField::create('address', 'Address'));
        $fields->addFieldToTab('Root.Main', TextField::create('phone','Phone'));
        $fields->addFieldToTab('Root.Main', TextField::create('email','Email'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('clock','Hours'));
        $fields->addFieldToTab('Root.Main', TextField::create('linkedin','Linkedin'));
        $fields->addFieldToTab('Root.Main', TextField::create('facebook','Facebook'));
        $fields->addFieldToTab('Root.Main', TextField::create('twitter','Twitter'));
        $fields->addFieldToTab('Root.Main', TextField::create('our_blog_id','Our Blog ID'));
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('copyright','Copyright')->setRows(6));

    }

}