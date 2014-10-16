
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite text1;


	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		rsc.prepare_font("myGO","arial bold color=red", 70);
		text1 = add_sprite_for_text("GAME OVER press anywhere to restart.","myGO");
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0,0, get_scene_width(), get_scene_height()))
		{	
			switch_scene(new MyMenu());
		}
	}
}
