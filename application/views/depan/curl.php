<?php

function get_CURL($url) {

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
$result = curl_exec($curl);
curl_close($curl);

return json_decode($result, true);

}

$result = get_CURL('https://www.googleapis.com/youtube/v3/channels?part=snippet,statistics&id=UCq-VDezP1Vj4pEOYiPn3Qxw&key=AIzaSyC-SUf4mVhO919AqstIF4q_wKxBw7Z7lrA');

$youtubeProfile = $result['items'][0]['snippet']['thumbnails']['medium']['url'];
$channel = $result['items'][0]['snippet']['title'];
$subs = $result['items'][0]['statistics']['subscriberCount'];

// Latest Video
$latestVideo = 'https://www.googleapis.com/youtube/v3/search?key=AIzaSyC-SUf4mVhO919AqstIF4q_wKxBw7Z7lrA&channelId=UCq-VDezP1Vj4pEOYiPn3Qxw&maxResults=1&order=date&part=snippet';

$result = get_CURL($latestVideo);
$latestVideoId = $result['items'][0]['id']['videoId'];

// Instagram API
$clientId = 'a2cf5a2a9fea4a5593449f8d3a169e44';
$accessToken = '6910595221.a2cf5a2.da9e70bfa7ed443e8279c9e657fc98d9';

$result = get_CURL('https://api.instagram.com/v1/users/self/?access_token=6910595221.a2cf5a2.da9e70bfa7ed443e8279c9e657fc98d9');

$usernameIG = $result['data']['username'];
$profileIG = $result['data']['profile_picture'];
$followersIG = $result['data']['counts']['followed_by'];

// Latest IG POST
$result = get_CURL('https://api.instagram.com/v1/users/self/media/recent/?access_token=6910595221.a2cf5a2.da9e70bfa7ed443e8279c9e657fc98d9&count=8');
$photos = [];

foreach ($result['data'] as $photo) {
		 $photos[] = $photo['images']['thumbnail']['url'];
}

?>