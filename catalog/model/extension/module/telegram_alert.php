<?php
class ModelExtensionModuleTelegramAlert extends Model {
	
	function sendMessage($parse_mode,$messaggio, $username="unknown", $surnname = "unknown", $phone = "unknown", $chatID1="-1001382634985", $token1 = "716618423:AAESLgfaO4NcdsW3FcKFCbYMlk5bwrgmKu8") {
		//echo "sending message to " . $chatID . "\n";
		$data1 = [
				'chat_id'=>$chatID1,
				'text'=>urldecode("...:::Информация:::... \n имя: $username \n фамилия: $surnname \n телефон: $phone \n сообщение: \n".$messaggio),
				'parse_mode'=> $parse_mode
				];
		$url = "https://api.telegram.org/bot$token1/sendMessage?" . http_build_query($data1);
		file_get_contents($url);
		//return $result;
	}
}