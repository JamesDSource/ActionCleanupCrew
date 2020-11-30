///
function window_set_cursor_impl_1(src,ctx,l,t,w,h){
	var r;
	if((ctx instanceof CanvasRenderingContext2D)){
		var el=null;
		var o1 = src, o2, o3;
		for (var k1 in o1) if (o1.hasOwnProperty(k1) && (o2 = o1[k1])) {
			for (var k2 in o2) if (o2.hasOwnProperty(k2) && ((o3 = o2[k2]) instanceof HTMLCanvasElement)) {
				el = o3;
				break;
			}
			if (el) break;
		};
		if(el==null)return null;
		return el.getContext("2d",null).getImageData(l,t,w,h).data;
	}else {
		var fb=null;
		var ctx1=ctx;
		var o1 = src, o2, o3;
		for (var k1 in o1) if (o1.hasOwnProperty(k1) && (o2 = o1[k1])) {
			for (var k2 in o2) if (o2.hasOwnProperty(k2) && ((o3 = o2[k2]) instanceof WebGLFramebuffer)) {
				fb = o3;
				break;
			}
			if (fb) break;
		};
		if(fb==null)return null;
		var _fb=ctx1.getParameter(36006);
		ctx1.bindFramebuffer(36160,fb);
		r=new Uint8Array(w*h*4);
		ctx1.readPixels(l,t,w,h,6408,5121,r);
		ctx1.bindFramebuffer(36160,_fb);
		return r;
	}
}
///
function window_set_cursor_impl(hwnd,d,dw,l,t,w,h,cx,cy){
	var area=w*h;
	var size=area*4+Math.ceil(area/8);
	var b_val, b_pos;
	var b_arr=new Array(size+62);
	b_pos=0;
	b_val=0;
	var bw=w;
	if(bw>255)bw=0;
	var bh=h;
	if(bh>255)bh=0;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=2;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=1;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=bw;
	b_arr[b_pos++]=bh;
	b_arr[b_pos++]=0;
	b_arr[b_pos++]=0;
	b_val=cx;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=cy;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=size+40;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=b_pos+4;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=40;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=w;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=h*2;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=1;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=32;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	b_val=0;
	b_arr[b_pos++]=b_val&255;
	b_arr[b_pos++]=b_val>>8&255;
	b_arr[b_pos++]=b_val>>16&255;
	b_arr[b_pos++]=b_val>>>24&255;
	var maskPos=b_pos+area*4;
	var maskBit=0;
	var dy=h;
	while(--dy>=0){
		var dx=0;
		for(var _g=w;dx<_g;dx++){
			var dp=(dy+t)*dw+(dx+l)<<2;
			var dr=d[dp];
			var dg=d[dp+1];
			var db=d[dp+2];
			var da=d[dp+3];
			b_arr[b_pos++]=db;
			b_arr[b_pos++]=dg;
			b_arr[b_pos++]=dr;
			b_arr[b_pos++]=da;
			var dm;
			if(da==0){
				dm=1<<7-maskBit;
			}else dm=0;
			b_arr[maskPos]|=dm;
			if(++maskBit==8){
				maskBit=0;
				++maskPos;
			}
		}
	}
	var r="";
	var bc="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	var n=b_arr.length;
	var b=b_arr;
	for(var i=0;i<n;i+=3){
		r+=bc.charAt(b[i]>>2);
		r+=bc.charAt((b[i]&3)<<4|b[i+1]>>4);
		r+=bc.charAt((b[i+1]&15)<<2|b[i+2]>>6);
		r+=bc.charAt(b[i+2]&63);
	}
	if(n%3==2){
		r=r.substring(0,r.length-1)+"=";
	}else if(n%3==1)r=r.substring(0,r.length-2)+"==";
	r="url(data:image/x-icon;base64,"+r+"), auto";
	window.document.getElementById(hwnd).style.cursor=r;
}
// Generated at 2017-02-21 01:17:06 (608ms)
