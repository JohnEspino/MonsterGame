
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite Wrath;
	int h;
	int w;
	int wp;
	int hp;
	

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("myWrath","rath",w*0.15,h*0.15);
		Wrath = add_sprite_for_image(SEImage.for_resource("myWrath"));
		wp = Wrath.get_width();
		hp = Wrath.get_height();
		Wrath.move(0.5*w-0.5*wp, 0.5*h-0.5*hp);
		
	}
	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		Wrath.move(MainScene.x-0.5*wp, MainScene.y-0.5*hp);
	}
}
