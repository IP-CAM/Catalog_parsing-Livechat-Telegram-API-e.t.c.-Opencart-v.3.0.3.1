<?php
class ModelExtensionModuleTelegramAlert extends Model {
	
	function sendMessage($messaggio, $username="unknown", $surnname = "unknown", $phone = "unknown", $chatID1="-1001382634985", $token1 = "716618423:AAESLgfaO4NcdsW3FcKFCbYMlk5bwrgmKu8") {
		//echo "sending message to " . $chatID . "\n";
		$data1 = [
				'text'=>urldecode("user with \n name:$username \n surnname:$surnname \n phone:$phone \n send a message: \n $messaggio")
				];
		$url = "https://api.telegram.org/bot$token1/sendMessage?chat_id=$chatID1&" . http_build_query($data1);
		file_get_contents($url);
		//return $result;
	}
}