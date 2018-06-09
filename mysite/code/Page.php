<?php

use SilverStripe\CMS\Model\SiteTree;
use PaduaHome\Component\Banners;
use PaduaHome\Component\Services;
use PaduaHome\Component\Testimonials; 
use PaduaHome\Component\HomePageBoxes; 
use Axllent\Weblog\Model\Blog;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\Forms\CheckboxField;

class Page extends SiteTree
{
    private static $db = ["uppertop" => "Boolean", "quicklinks" => "Boolean"];

    private static $has_one = [];

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab("Root.Main", new CheckboxField("uppertop", "Show Upper Top "));
        $fields->addFieldToTab("Root.Main", new CheckboxField("quicklinks", "Show In Quick Links "));
        return $fields;
    }

    public function getBanners() {
        return Banners::get();
    }

    public function getServices() {
        return Services::get();
    }

    public function getTestimonials() {
        return Testimonials::get();
    }

    public function getHomepageBoxes() {
        return HomePageBoxes::get();
    }

    function getFooterBlogs() {
        $blog = new Blog();
        $id = 19;
        $all_posts = $blog->getBlogPosts($id);
        $posts = PaginatedList::create($all_posts);
        return $posts;
    }
}
