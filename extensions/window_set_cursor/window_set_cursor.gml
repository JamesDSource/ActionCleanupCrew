#define window_set_cursor_init
window_set_cursor_init_raw();
global.window_set_cursor_buffer_get_surface = undefined;

#define window_set_cursor_normal
/// (): Reverts the cursor to whatever set via built-in window_set_cursor.
var r = window_set_cursor_normal_raw();
window_set_cursor(window_get_cursor());
return r;

#define window_set_cursor_surface_part
/// (surface, left, top, width, height, x, y):
var sf = argument0;
var sw = surface_get_width(sf);
var sh = surface_get_height(sf);
var l = clamp(argument1, 0, sw);
var t = clamp(argument2, 0, sh);
var w = clamp(argument3, 0, sw - l);
var h = clamp(argument4, 0, sh - t);
var cx = argument5;
var cy = argument6;
var r;
var hwnd = window_handle();
if (os_browser != browser_not_a_browser) {
	surface_getpixel_ext(sf, l + w/2, t + h/2); // flush
	var d = window_set_cursor_impl_1(surface_get_texture(sf), window_device(), l, t, w, h);
	r = window_set_cursor_impl(hwnd, d, w, 0, 0, w, h, cx - l, cy - t);
} else {
	var sw = surface_get_width(sf);
	var sh = surface_get_height(sf);
	var b = buffer_create(sw * sh * 4, buffer_fixed, 1);
	// ah, 2.3.1 compatibility
	var _bgs = global.window_set_cursor_buffer_get_surface;
	if (_bgs == undefined) {
		var _ctx = { fn: method(undefined, buffer_get_surface) };
		var _rt = GM_runtime_version;
		var _231;
		if (string_pos("2.3.0.", _rt) == 1) {
			_231 = false;
		} else if (string_pos("23.1.1.", _rt) != 1) {
			_231 = true;
		} else {
			var _buildStr = string_delete(_rt, 1, string_length("23.1.1."));
			_231 = string_digits(_buildStr) != _buildStr || real(_buildStr) >= 186;
		}
		_bgs = _231 ? method(_ctx, function(_buf, _surf, _offset) {
			self.fn(_buf, _surf, _offset);
		}) : method(_ctx, function(_buf, _surf, _offset) {
			self.fn(_buf, _surf, 0, _offset, 0);
		});
		global.window_set_cursor_buffer_get_surface = _bgs;
	}
	//
	_bgs(b, sf, 0);
	r = window_set_cursor_impl(hwnd, b, sw, l, t, w, h, cx - l, cy - t);
	buffer_delete(b);
}
return r;

#define window_set_cursor_surface
/// (surface, x, y):
var q = argument0;
return window_set_cursor_surface_part(q, 0, 0, surface_get_width(q), surface_get_height(q), argument1, argument2);

#define window_set_cursor_sprite
/// (sprite, subimg):
var q = argument0;
var sf = surface_create(sprite_get_width(q), sprite_get_height(q));
var qx = sprite_get_xoffset(q);
var qy = sprite_get_yoffset(q);
surface_set_target(sf);
draw_clear_alpha(0, 0);
gpu_set_blendmode_ext(bm_one, bm_zero);
draw_sprite(q, argument1, qx, qy);
gpu_set_blendmode(bm_normal);
surface_reset_target();
var r = window_set_cursor_surface(sf, qx, qy);
surface_free(sf);
return r;

#define window_set_cursor_sprite_ext
/// (sprite, subimg, image_xscale, image_yscale, image_blend, image_alpha):
var q = argument0;
var mx = argument2;
var my = argument3;
var rw = max(1, ceil(mx * sprite_get_width(q)));
var rh = max(1, ceil(my * sprite_get_height(q)));
var sf = surface_create(rw, rh);
var qx = sprite_get_xoffset(q) * mx;
var qy = sprite_get_yoffset(q) * my;
surface_set_target(sf);
draw_clear_alpha(0, 0);
gpu_set_blendmode_ext(bm_one, bm_zero);
draw_sprite_ext(q, argument1, qx + (mx < 0) * rw, qy + (my < 0) * rh, mx, my, 0, argument4, argument5);
gpu_set_blendmode(bm_normal);
surface_reset_target();
var r = window_set_cursor_surface(sf, qx, qy);
surface_free(sf);
return r;
