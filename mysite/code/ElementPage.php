<?php
use SilverStripe\CMS\Model\SiteTree;
use PaduaHome\Component\Banners;
use PaduaHome\Component\Services;
use PaduaHome\Component\Testimonials; 
use PaduaHome\Component\HomePageBoxes; 
use Axllent\Weblog\Model\Blog;
use SilverStripe\ORM\PaginatedList;

class ElementPage extends SiteTree
{
    private static $db = [];

    private static $has_one = [];

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