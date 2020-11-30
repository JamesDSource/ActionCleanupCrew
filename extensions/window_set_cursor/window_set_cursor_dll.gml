#define window_set_cursor_init_dll
var _inf = os_get_info();
window_set_cursor_init_dll_raw(window_handle(), ds_map_exists(_inf, "video_d3d11_device"));
ds_map_destroy(_inf);
global._g_window_set_cursor_buf = -1;

#define window_set_cursor_impl_1
// window_set_cursor_impl_1(src:any, ctx:any, l:int, t:int, w:int, h:int)->PixelData
var _src = argument0, _ctx = argument1, _left = argument2, _top = argument3, _width = argument4, _height = argument5;
return _src;

#define window_set_cursor_impl
// window_set_cursor_impl(hwnd:any, d:PixelData, dw:int, l:int, t:int, w:int, h:int, cx:int, cy:int)
var _hwnd = argument0, _rgba = argument1, _dw = argument2, _l = argument3, _t = argument4, _w = argument5, _h = argument6, _cx = argument7, _cy = argument8;
var _b = global._g_window_set_cursor_buf;
if (_b == -1) {
	_b = buffer_create(128, buffer_fixed, 1);
	global._g_window_set_cursor_buf = _b;
}
buffer_seek(_b, buffer_seek_start, 0);
buffer_write(_b, buffer_s32, _dw);
buffer_write(_b, buffer_s32, _l);
buffer_write(_b, buffer_s32, _t);
buffer_write(_b, buffer_s32, _w);
buffer_write(_b, buffer_s32, _h);
buffer_write(_b, buffer_s32, _cx);
buffer_write(_b, buffer_s32, _cy);
return window_set_cursor_surface_raw(buffer_get_address(_rgba), buffer_get_address(_b));
