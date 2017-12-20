<?php

require '../vendor/autoload.php';

$client = new Predis\Client('tcp://levi_cache:6379');

echo '<h1>' . gethostname() . '</h1>';

if($client->get('test')) {
    echo '<p>cache status: hit</p>';
} else {
    $client->set('test', 'hi');
    $client->expire('test', 10);
}
