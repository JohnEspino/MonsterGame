
/*
 * Hunter
 * Created by Eqela Studio 2.0b7.4
 */

public class Hunter: SEEntity
{
	SESprite Hunt;
	int h;
	int w;
	int mx;
	int my;
	int speed;	

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("myHunter","hunter",w*0.05,h*0.1);
		Hunt = add_sprite_for_image(SEImage.for_resource("myHunter"));
		Hunt.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(1,80)*10;
		}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		Hunt.move(Hunt.get_x()+(MainScene.x-Hunt.get_x())/speed,Hunt.get_y()+(MainScene.y-Hunt.get_y())/speed );
		if((Hunt.get_x()+0.15*get_scene_width()>=MainScene.x && Hunt.get_x() <= MainScene.x) && (Hunt.get_y()+0.15*get_scene_height() >= MainScene.y && Hunt.get_y()<=MainScene.y))
		{   
		AudioClipManager.prepare("Slip");
			MainScene.crash=true;
		AudioClipManager.play("Slip");	
		}

		}
}
