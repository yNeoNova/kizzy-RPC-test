package states;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import android.kizzy.KizzyClient;

class PlayState extends FlxState
{
	var bg:FlxSprite;
	var kizzyClient:KizzyClient;

	override public function create():Void
	{
		super.create();

		// Load image
		bg = new FlxSprite(0, 0, "assets/images/gaememe/luigi.png");
		add(bg);

		// Setup Kizzy RPC
		kizzyClient = new KizzyClient(); // No token used
		kizzyClient.setApplicationID("1395194459557466225");
		kizzyClient.setName("Kizzy RPC Client Android");
		kizzyClient.setDetails("When RPC is sus");
		kizzyClient.setState("When RPC is sus");
		kizzyClient.setLargeImage("attachments/1009061802593763398/1395195938519384064/temp_file.png?ex=687990f9&is=68783f79&hm=c082e23e437e22d3e7fdc105e6454fd24e9c252e8247a2ee9256ff7c8c40913d&");
		kizzyClient.setLargeText("When RPC is sus");
		kizzyClient.setSmallImage("Non");
		kizzyClient.setSmallText("When RPC is sus");
		kizzyClient.setStartTimeStamps(0, true);
		kizzyClient.setButton1("Test The Game! (Android only)", "https://github.com/yNeoNova/kizzy-RPC-test/tree/main");
		kizzyClient.setType(0); // Playing
		kizzyClient.setStatus("idle");
		kizzyClient.closeOnDestroy(true);
		kizzyClient.rebuildClient();
	}

	override public function destroy():Void
	{
		super.destroy();
		if (kizzyClient != null)
		{
			kizzyClient.destroy();
		}
	}
}
