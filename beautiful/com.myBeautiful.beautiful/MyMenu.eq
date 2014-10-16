
/*
 * MyMenu
 * Created by Eqela Studio 2.0b7.4
 */

public class MyMenu: SEScene 
{
		SESprite color1;
		SESprite ct1;
		String display;

		public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		color1 = add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
		rsc.prepare_font("Start","Segoe UI color=#ecf0f1 outline-color=#34495e", 100);
		display= "Press anywhere to Start !";
		ct1 = add_sprite_for_text(display, "Start");
		ct1.move(get_scene_width()*0.10, get_scene_height()*0.40);
		}

		public void on_pointer_press(SEPointerInfo pi) {
				
		base.on_pointer_press(pi);		
				if(pi.is_inside(0,0, get_scene_width(), get_scene_height())) {
				switch_scene(new MainScene());			
				}
			}
}

