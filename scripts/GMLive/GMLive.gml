// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// Generated at 2020-09-01 06:13:53 (8835ms) for v2.3+
#region metatype
globalvar gml_std_haxe_type_markerValue; if (live_enabled) gml_std_haxe_type_markerValue = [];
globalvar mt_gml_std_Date; if (live_enabled) mt_gml_std_Date = new gml_std_haxe_class(-1, "gml_std_Date");
globalvar mt_gml_builder; if (live_enabled) mt_gml_builder = new gml_std_haxe_class(-1, "gml_builder");
globalvar mt_gml_program; if (live_enabled) mt_gml_program = new gml_std_haxe_class(-1, "gml_program");
globalvar mt_gml_enum_ctr; if (live_enabled) mt_gml_enum_ctr = new gml_std_haxe_class(-1, "gml_enum_ctr");
globalvar mt_gml_macro; if (live_enabled) mt_gml_macro = new gml_std_haxe_class(-1, "gml_macro");
globalvar mt_gml_node; if (live_enabled) mt_gml_node = new gml_std_haxe_enum(-1, "gml_node", ["undefined", "number", "cstring", "enum_ctr", "array_decl", "object_decl", "ensure_array", "ident", "self", "other", "global_ref", "script", "native_script", "const", "arg_const", "arg_index", "arg_count", "call", "call_script", "call_script_at", "call_script_id", "call_script_with_array", "call_field", "call_func", "call_func_at", "construct", "func_literal", "prefix", "postfix", "un_op", "bin_op", "set_op", "to_bool", "from_bool", "in", "local", "local_set", "local_aop", "global", "global_set", "global_aop", "field", "field_set", "field_aop", "env", "env_set", "env_aop", "env_fd", "env_fd_set", "env_fd_aop", "env1d", "env1d_set", "env1d_aop", "alarm", "alarm_set", "alarm_aop", "index", "index_set", "index_aop", "index_prefix", "index_postfix", "index2d", "index2d_set", "index2d_aop", "index2d_prefix", "index2d_postfix", "raw_id", "raw_id_set", "raw_id_aop", "raw_id_prefix", "raw_id_postfix", "raw_id2d", "raw_id2d_set", "raw_id2d_aop", "raw_id2d_prefix", "raw_id2d_postfix", "ds_list", "ds_list_set", "ds_list_aop", "ds_list_prefix", "ds_list_postfix", "ds_map", "ds_map_set", "ds_map_aop", "ds_map_prefix", "ds_map_postfix", "ds_grid", "ds_grid_set", "ds_grid_aop", "ds_grid_prefix", "ds_grid_postfix", "var_decl", "block", "if_then", "ternary", "switch", "wait", "fork", "while", "do_until", "do_while", "repeat", "for", "with", "once", "return", "exit", "break", "continue", "debugger", "try_catch", "throw", "comment_line", "comment_line_pre", "comment_line_post", "comment_line_sep", "comment_block", "comment_block_pre", "comment_block_post"]);
globalvar mt_gml_pos; if (live_enabled) mt_gml_pos = new gml_std_haxe_class(-1, "gml_pos");
globalvar mt_gml_script; if (live_enabled) mt_gml_script = new gml_std_haxe_class(-1, "gml_script");
globalvar mt_gml_source; if (live_enabled) mt_gml_source = new gml_std_haxe_class(-1, "gml_source");
globalvar mt_gml_token; if (live_enabled) mt_gml_token = new gml_std_haxe_enum(-1, "gml_token", ["header", "macro", "hash", "semico", "comma", "period", "colon", "qmark", "at_sign", "keyword", "ident", "env", "undefined", "number", "cstring", "un_op", "in", "adjfix", "bin_op", "set_op", "par_open", "par_close", "sqb_open", "sqb_close", "cub_open", "cub_close", "arg_const", "comment_post", "comment_line", "comment_block"]);
globalvar mt_gml_std_haxe_class; if (live_enabled) mt_gml_std_haxe_class = new gml_std_haxe_class(-1, "gml_std_haxe_class");
globalvar mt_gml_std_haxe_enum; if (live_enabled) mt_gml_std_haxe_enum = new gml_std_haxe_class(-1, "gml_std_haxe_enum");
globalvar mt_gml_std_haxe_Exception; if (live_enabled) mt_gml_std_haxe_Exception = new gml_std_haxe_class(-1, "gml_std_haxe_Exception");
globalvar mt_gml_std_haxe_ValueException; if (live_enabled) mt_gml_std_haxe_ValueException = new gml_std_haxe_class(-1, "gml_std_haxe_ValueException");
if (live_enabled) mt_gml_std_haxe_ValueException.h_superClass = mt_gml_std_haxe_Exception;
globalvar mt_haxe_ds_basic_map; if (live_enabled) mt_haxe_ds_basic_map = new gml_std_haxe_class(-1, "haxe_ds_basic_map");
globalvar mt_haxe_ds_string_map; if (live_enabled) mt_haxe_ds_string_map = new gml_std_haxe_class(-1, "haxe_ds_string_map");
if (live_enabled) mt_haxe_ds_string_map.h_superClass = mt_haxe_ds_basic_map;
globalvar mt_haxe_iterators_array_iterator; if (live_enabled) mt_haxe_iterators_array_iterator = new gml_std_haxe_class(-1, "haxe_iterators_array_iterator");
globalvar mt_gml_action; if (live_enabled) mt_gml_action = new gml_std_haxe_enum(-1, "gml_action", ["discard", "dup", "dup2x", "dup_in", "undefined", "number", "cstring", "array_decl", "object_decl", "const", "self", "other", "local", "local_set", "local_aop", "global", "global_set", "global_aop", "field", "field_set", "field_aop", "index", "index_set", "index_aop", "index2d", "index2d_set", "index2d_aop", "env", "env_set", "env_aop", "env1d", "env1d_set", "env1d_aop", "ds_aop", "arg_const", "arg_const_set", "arg_const_aop", "arg_index", "arg_index_set", "arg_index_aop", "arg_count", "add_int", "equ_op", "neq_op", "add_op", "concat", "bin_op", "un_op", "in", "call_script", "call_script_id", "call_script_with_array", "call_script_at", "call_func", "call_field", "construct", "func_literal", "jump", "jump_if", "jump_unless", "bool_and", "bool_or", "switch", "switch_case", "repeat_jump", "repeat_pre", "with_pre", "with_next", "with_post", "break", "continue", "return", "result", "try", "catch", "finally", "throw", "wait", "fork", "ensure_array_local", "ensure_array_global", "ensure_array_field", "alarm", "alarm_set", "alarm_aop"]);
globalvar mt_gml_thread_scope; if (live_enabled) mt_gml_thread_scope = new gml_std_haxe_class(-1, "gml_thread_scope");
globalvar mt_gml_with_scope; if (live_enabled) mt_gml_with_scope = new gml_std_haxe_class(-1, "gml_with_scope");
#endregion
if (live_enabled) function gml_std_enum_toString() {
	return gml_std_Std_stringify(self);
}
if (live_enabled) function gml_std_enum_getIndex() {
	return __enumIndex__;
}
#macro gml_class_get_field 0
#macro gml_class_set_field 1
#macro gml_class_has_field 2
#macro gml_class_add_index 3
#macro gml_class_get_length 4
#macro gml_class_typeof 5
#macro gml_class_print 6
enum gml_thread_status { none, running, waiting, done, error }

#region gml_std.Date

if (live_enabled) function gml_std_Date(l_year, l_month, l_day, l_hour, l_min1, l_sec) constructor {
	var this = self;
	static h_date = undefined;
	static h_getTime = function() {
		var this = self;
		return (self.h_date - 25569) * 86400000;
	}
	var this = self;
	self.h_date = date_create_datetime(l_year, l_month + 1, l_day, l_hour, l_min1, l_sec);
	static __class__ = mt_gml_std_Date;
}
if (live_enabled) mt_gml_std_Date.h_constructor = gml_std_Date;

if (live_enabled) function gml_std_Date_now() {
	var l_d = new gml_std_Date(2000, 0, 1, 0, 0, 0);
	l_d.h_date = date_current_datetime();
	return l_d;
}

#endregion

#region gml.builder

if (live_enabled) function gml_builder(l_pg, l_src) constructor {
	var this = self;
	static h_tokens = undefined;
	static h_source = undefined;
	static h_offset = undefined;
	static h_length = undefined;
	static h_scripts = undefined;
	static h_enums = undefined;
	static h_macro_names = undefined;
	static h_macro_nodes = undefined;
	static h_error_text = undefined;
	static h_error_pos = undefined;
	static h_error_at = function(l_text, l_pos) {
		var this = self;
		self.h_error_text = l_pos.h_to_string() + ": " + l_text;
		self.h_error_pos = l_pos;
		return true;
	}
	static h_error = function(l_text, l_tk) {
		var this = self;
		return self.h_error_at(l_text, l_tk.h_d);
	}
	static h_expect = function(l_text, l_tk) {
		var this = self;
		return self.h_error("Expected " + l_text + ", got " + gml_std_Type_enumConstructor(l_tk), l_tk);
	}
	static h_expect_node = function(l_text, l_node) {
		var this = self;
		return self.h_error_at("Expected " + l_text + ", got " + gml_std_Type_enumConstructor(l_node), gml_std_haxe_enum_tools_getParameter(l_node, 0));
	}
	static h_out_node = undefined;
	static h_current_script = undefined;
	static h_build_ops = function(l_firstPos, l_firstOp) {
		var this = self;
		self.h_offset += 1;
		var l_nodes = ds_list_create();
		ds_list_add(l_nodes, self.h_out_node);
		var l_ops = ds_list_create();
		ds_list_add(l_ops, l_firstOp);
		var l_locs = ds_list_create();
		ds_list_add(l_locs, l_firstPos);
		var l_proc = true;
		var l_i;
		while (l_proc && self.h_offset < self.h_length) {
			if (self.h_build_expr(1)) {
				ds_list_destroy(l_nodes);
				ds_list_destroy(l_ops);
				ds_list_destroy(l_locs);
				return true;
			}
			ds_list_add(l_nodes, self.h_out_node);
			if (self.h_offset < self.h_length) {
				var l__g = self.h_tokens[self.h_offset];
				switch (l__g.__enumIndex__/* gml_token */) {
					case 18/* bin_op */:
						self.h_offset += 1;
						ds_list_add(l_locs, l__g.h_d);
						ds_list_add(l_ops, l__g.h_op);
						break;
					case 19/* set_op */:
						if (l__g.h_op == -1) {
							self.h_offset += 1;
							ds_list_add(l_locs, l__g.h_d);
							ds_list_add(l_ops, 64);
						} else l_proc = false;
						break;
					default: l_proc = false;
				}
			}
		}
		var l_pmin = 7;
		var l_pmax = 0;
		var l_n = ds_list_size(l_ops);
		for (l_i = 0; l_i < l_n; l_i++) {
			var l_pcur = gml_op_get_priority(l_ops[|l_i]);
			if (l_pcur < l_pmin) l_pmin = l_pcur;
			if (l_pcur > l_pmax) l_pmax = l_pcur;
		}
		while (l_pmin <= l_pmax) {
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_op_get_priority(l_ops[|l_i]) == l_pmin) {
					l_nodes[|l_i] = gml_node_bin_op(l_locs[|l_i], l_ops[|l_i], l_nodes[|l_i], l_nodes[|l_i + 1]);
					ds_list_delete(l_nodes, l_i + 1);
					ds_list_delete(l_ops, l_i);
					ds_list_delete(l_locs, l_i);
					l_n--;
					l_i--;
				}
			}
			l_pmin++;
		}
		self.h_out_node = l_nodes[|0];
		ds_list_destroy(l_nodes);
		ds_list_destroy(l_ops);
		ds_list_destroy(l_locs);
		return false;
	}
	static h_build_args = function(l_pos, l_sqb) {
		var this = self;
		var l_args1 = [];
		var l_proc = true;
		var l_seenComma = true;
		var l_func = self.h_out_node;
		while (l_proc && self.h_offset < self.h_length) {
			var l_tk = self.h_tokens[self.h_offset];
			switch (l_tk.__enumIndex__/* gml_token */) {
				case 21/* par_close */:
					if (l_sqb) {
						return self.h_error("Unexpected `)`", l_tk);
					} else {
						l_proc = false;
						self.h_offset += 1;
					}
					break;
				case 23/* sqb_close */:
					if (l_sqb) {
						l_proc = false;
						self.h_offset += 1;
					} else return self.h_error("Unexpected `]`", l_tk);
					break;
				case 4/* comma */:
					if (l_seenComma) {
						return self.h_error("Unexpected comma", l_tk);
					} else {
						l_seenComma = true;
						self.h_offset += 1;
					}
					break;
				default:
					if (l_seenComma) {
						l_seenComma = false;
						if (self.h_build_expr(0)) return true;
						gml_std_gml_internal_ArrayImpl_push(l_args1, self.h_out_node);
					} else return self.h_expect("a comma or closing token.", l_tk);
			}
		}
		if (l_proc) return self.h_error_at("Unclosed list", l_pos);
		if (l_sqb) self.h_out_node = gml_node_array_decl(l_pos, l_args1); else self.h_out_node = gml_node_call(l_pos, l_func, l_args1);
		return false;
	}
	static h_build_expr = function(l_flags) {
		var this = self;
		if (self.h_offset >= self.h_length) return self.h_error_at("Expected an expression", self.h_source.h_get_eof());
		var l_proc, l_sep, l_i, l_n, l_s, l_tk;
		var l_tk0 = self.h_tokens[self.h_offset++];
		var l_node, l_node2, l_nodes;
		switch (l_tk0.__enumIndex__/* gml_token */) {
			case 12/* undefined */: self.h_out_node = gml_node_undefined(l_tk0.h_d); break;
			case 13/* number */: self.h_out_node = gml_node_number(l_tk0.h_d, l_tk0.h_nu, l_tk0.h_src); break;
			case 14/* cstring */: self.h_out_node = gml_node_cstring(l_tk0.h_d, l_tk0.h_st); break;
			case 22/* sqb_open */:
				l_proc = true;
				l_sep = true;
				self.h_build_args(l_tk0.h_d, true);
				break;
			case 10/* ident */:
				var l_s1 = l_tk0.h_id;
				switch (l_s1) {
					case "self": self.h_out_node = gml_node_self(l_tk0.h_d); break;
					case "other": self.h_out_node = gml_node_other(l_tk0.h_d); break;
					default:
						if (gml_asset_index.h_get(l_s1) != undefined) {
							l_i = gml_asset_index.h_get(l_s1);
							self.h_out_node = gml_node_number(l_tk0.h_d, l_i, undefined);
						} else {
							var l_m = self.h_program.h_macro_map.h_get(l_s1);
							if (l_m != undefined && l_m.h_is_expr) {
								self.h_out_node = gml_node_clone(l_m.h_node);
							} else {
								l_i = gml_std_gml_internal_ArrayImpl_indexOf(self.h_macro_names, l_s1);
								if (l_i >= 0) {
									l_m = self.h_macro_nodes[l_i];
									if (l_m.h_is_expr) self.h_out_node = gml_node_clone(l_m.h_node); else self.h_out_node = gml_node_ident(l_tk0.h_d, l_s1);
								} else self.h_out_node = gml_node_ident(l_tk0.h_d, l_s1);
							}
						}
				}
				break;
			case 26/* arg_const */: self.h_out_node = gml_node_arg_const(l_tk0.h_d, l_tk0.h_i); break;
			case 15/* un_op */:
				if (self.h_build_expr(1)) return true;
				var l__g = self.h_out_node;
				if (l__g.__enumIndex__/* gml_node */ == 1/* number */) {
					var l_f = l__g.h_value;
					switch (l_tk0.h_op) {
						case 2: l_f = ~(l_f | 0); break;
						case 0: l_f = -l_f; break;
						case 1: l_f = (l_f > 0.5 ? 0 : 1); break;
					}
					self.h_out_node = gml_node_number(l_tk0.h_d, l_f, undefined);
				} else self.h_out_node = gml_node_un_op(l_tk0.h_d, self.h_out_node, l_tk0.h_op);
				break;
			case 17/* adjfix */:
				if (self.h_build_expr(1)) return true;
				self.h_out_node = gml_node_prefix(l_tk0.h_d, self.h_out_node, l_tk0.h_inc);
				break;
			case 18/* bin_op */:
				var l__g = l_tk0.h_d;
				switch (l_tk0.h_op) {
					case 16: if (self.h_build_expr(1)) return true; break;
					case 17:
						var l_d = l__g;
						if (self.h_build_expr(1)) return true;
						var l__g = self.h_out_node;
						if (l__g.__enumIndex__/* gml_node */ == 1/* number */) self.h_out_node = gml_node_number(l_d, -l__g.h_value, undefined); else self.h_out_node = gml_node_un_op(l_d, self.h_out_node, 0);
						break;
					default: if ((l_flags & 4) != 0) return self.h_expect("a statement", l_tk0); else return self.h_expect("a value", l_tk0);
				}
				break;
			case 20/* par_open */:
				if (self.h_build_expr(0)) return true;
				if (self.h_offset >= self.h_length) return self.h_error("Unclosed parenthesis", l_tk0);
				if (self.h_offset >= self.h_length) {
					return self.h_error_at("Expected a closing parenthesis", self.h_source.h_get_eof());
				} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 21/* par_close */) {
					self.h_offset += 1;
				} else return self.h_error("Expected a closing parenthesis", self.h_tokens[self.h_offset]);
				break;
			case 24/* cub_open */:
				var l_keys = [];
				l_nodes = [];
				l_proc = true;
				var l__g = self.h_tokens[self.h_offset];
				var l_tmp;
				if (l__g.__enumIndex__/* gml_token */ == 25/* cub_close */) l_tmp = true; else l_tmp = false;
				if (l_tmp) {
					self.h_offset += 1;
				} else while (l_proc && self.h_offset < self.h_length) {
					var l__g = self.h_tokens[self.h_offset];
					switch (l__g.__enumIndex__/* gml_token */) {
						case 14/* cstring */:
							l_s = l__g.h_st;
							gml_std_gml_internal_ArrayImpl_push(l_keys, l_s);
							self.h_offset += 1;
							if (self.h_offset >= self.h_length) {
								return self.h_error_at("Expected a `:` in object declaration", self.h_source.h_get_eof());
							} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
								self.h_offset += 1;
							} else return self.h_error("Expected a `:` in object declaration", self.h_tokens[self.h_offset]);
							if (self.h_build_expr(0)) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
							switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.h_offset += 1;
									if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 25/* cub_close */) {
										self.h_offset += 1;
										l_proc = false;
									}
									break;
								case 25/* cub_close */:
									self.h_offset += 1;
									l_proc = false;
									break;
								default: return self.h_expect("a `,` or a `}` in object declaration", self.h_tokens[self.h_offset]);
							}
							break;
						case 10/* ident */:
							l_s = l__g.h_id;
							gml_std_gml_internal_ArrayImpl_push(l_keys, l_s);
							self.h_offset += 1;
							if (self.h_offset >= self.h_length) {
								return self.h_error_at("Expected a `:` in object declaration", self.h_source.h_get_eof());
							} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
								self.h_offset += 1;
							} else return self.h_error("Expected a `:` in object declaration", self.h_tokens[self.h_offset]);
							if (self.h_build_expr(0)) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
							switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.h_offset += 1;
									if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 25/* cub_close */) {
										self.h_offset += 1;
										l_proc = false;
									}
									break;
								case 25/* cub_close */:
									self.h_offset += 1;
									l_proc = false;
									break;
								default: return self.h_expect("a `,` or a `}` in object declaration", self.h_tokens[self.h_offset]);
							}
							break;
						default: return self.h_expect("a key-value pair or a `}` in object declaration", self.h_tokens[self.h_offset]);
					}
				}
				self.h_out_node = gml_node_object_decl(l_tk0.h_d, l_keys, l_nodes);
				break;
			case 28/* comment_line */:
				if (self.h_build_expr(l_flags)) return true;
				self.h_out_node = gml_node_comment_line_sep(l_tk0.h_d, l_tk0.h_s, self.h_out_node);
				break;
			case 27/* comment_post */:
				if (self.h_build_expr(l_flags)) return true;
				self.h_out_node = gml_node_comment_line_pre(l_tk0.h_d, l_tk0.h_s, self.h_out_node);
				break;
			case 29/* comment_block */:
				if (self.h_build_expr(l_flags)) return true;
				self.h_out_node = gml_node_comment_block_pre(l_tk0.h_d, l_tk0.h_s, self.h_out_node, l_tk0.h_pl);
				break;
			case 0/* header */: if ((l_flags & 4) != 0) return self.h_error("Expected a statement, got a header (did you miss a closing bracket?)", l_tk0); else return self.h_error("Expected an expression, got a header (did you miss a closing parenthesis?)", l_tk0);
			case 9/* keyword */:
				switch (l_tk0.h_kw) {
					case 0:
						var l_d = l_tk0.h_d;
						if (self.h_offset >= self.h_length) {
							self.h_out_node = gml_node_global_ref(l_d);
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 5/* period */) {
							l_tk = self.h_tokens[self.h_offset++];
							if (self.h_offset >= self.h_length) {
								return self.h_expect("a field name", l_tk);
							} else {
								var l__g1 = self.h_tokens[self.h_offset];
								if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
									self.h_offset += 1;
									self.h_out_node = gml_node_global(l__g1.h_d, l__g1.h_id);
								} else return self.h_expect("a field name", self.h_tokens[self.h_offset]);
							}
						} else self.h_out_node = gml_node_global_ref(l_d);
						break;
					case 26:
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected an opening square bracket", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 22/* sqb_open */) {
							self.h_offset += 1;
						} else return self.h_error("Expected an opening square bracket", self.h_tokens[self.h_offset]);
						if (self.h_build_expr(0)) return true;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected a closing square bracket", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
							self.h_offset += 1;
						} else return self.h_error("Expected a closing square bracket", self.h_tokens[self.h_offset]);
						self.h_out_node = gml_node_arg_index(l_tk0.h_d, self.h_out_node);
						break;
					case 27: self.h_out_node = gml_node_arg_count(l_tk0.h_d); break;
					case 25:
						if (self.h_build_expr(l_flags)) return true;
						var l__g1 = self.h_out_node;
						if (l__g1.__enumIndex__/* gml_node */ == 17/* call */) self.h_out_node = gml_node_construct(l__g1.h_d, l__g1.h_x, l__g1.h_args); else return self.h_expect("a callable value after `new`", l_tk0);
						break;
					case 24:
						var l_d = l_tk0.h_d;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected a function name or `(`", self.h_source.h_get_eof());
						var l_oldName = self.h_current_script;
						l_i = 0;
						while (true) {
							l_s = l_oldName + "+" + string(++l_i);
							l_n = array_length(self.h_scripts);
							while (--l_n >= 0) {
								if (self.h_scripts[l_n].h_name == l_s) break;
							}
							if (!(l_n > 0)) break;
						}
						var l_scrName;
						var l__g1 = self.h_tokens[self.h_offset];
						if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
							var l__name = l__g1.h_id;
							self.h_offset += 1;
							l_scrName = l__name;
						} else l_scrName = undefined;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected an opening `(`", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 20/* par_open */) {
							self.h_offset += 1;
						} else return self.h_error("Expected an opening `(`", self.h_tokens[self.h_offset]);
						if (self.h_build_script_args()) return true;
						if (self.h_offset < self.h_length) {
							l_tk = self.h_tokens[self.h_offset];
							var l_tmp;
							if (l_tk.__enumIndex__/* gml_token */ == 10/* ident */) l_tmp = l_tk.h_id == "constructor"; else l_tmp = false;
							if (l_tmp) self.h_offset += 1;
						}
						var l_scr = new gml_script(self.h_source, l_s, l_d);
						l_scr.h_named_args = self.h_build_script_args_map;
						self.h_build_script_args_map = undefined;
						l_scr.h_arguments = self.h_build_script_args_argc;
						gml_std_gml_internal_ArrayImpl_push(self.h_scripts, l_scr);
						self.h_current_script = l_s;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected function body", self.h_source.h_get_eof());
						var l__g1 = self.h_tokens[self.h_offset];
						if (l__g1.__enumIndex__/* gml_token */ == 24/* cub_open */) var l__g2 = l__g1.h_d; else return self.h_error("expected a `{`", self.h_tokens[self.h_offset]);
						self.h_build_line();
						l_scr.h_node = self.h_out_node;
						self.h_out_node = gml_node_func_literal(l_d, l_s);
						self.h_current_script = l_oldName;
						break;
					default: if ((l_flags & 4) != 0) return self.h_expect("a statement", l_tk0); else return self.h_expect("a value", l_tk0);
				}
				break;
			default: if ((l_flags & 4) != 0) return self.h_expect("a statement", l_tk0); else return self.h_expect("a value", l_tk0);
		}
		l_proc = true;
		while (l_proc && self.h_offset < self.h_length) {
			l_tk = self.h_tokens[self.h_offset];
			switch (l_tk.__enumIndex__/* gml_token */) {
				case 17/* adjfix */:
					if ((l_flags & 2) == 0) {
						self.h_offset += 1;
						self.h_out_node = gml_node_postfix(l_tk.h_d, self.h_out_node, l_tk.h_inc);
						l_flags |= 2;
					} else if (l_tk.h_inc) {
						return self.h_error_at("Unexpected `++`", l_tk.h_d);
					} else return self.h_error_at("Unexpected `--`", l_tk.h_d);
					break;
				case 5/* period */:
					if ((l_flags & 2) == 0) {
						self.h_offset += 1;
						var l__g = self.h_tokens[self.h_offset];
						if (l__g.__enumIndex__/* gml_token */ == 10/* ident */) {
							l_s = l__g.h_id;
							self.h_offset += 1;
							self.h_out_node = gml_node_field(l_tk.h_d, self.h_out_node, l_s);
						} else return self.h_error("Expected a field name", self.h_tokens[self.h_offset]);
					} else return self.h_error("Unexpected period", self.h_tokens[self.h_offset]);
					break;
				case 20/* par_open */:
					if ((l_flags & 2) == 0) {
						self.h_offset += 1;
						if (self.h_build_args(l_tk.h_d, false)) return true;
					} else return self.h_error_at("Unexpected `(`", l_tk.h_d);
					break;
				case 22/* sqb_open */:
					var l_d6 = l_tk.h_d;
					if ((l_flags & 2) == 0) {
						self.h_offset += 1;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected an index", self.h_source.h_get_eof());
						l_node = self.h_out_node;
						var l__g6 = self.h_tokens[self.h_offset];
						switch (l__g6.__enumIndex__/* gml_token */) {
							case 18/* bin_op */:
								if (l__g6.h_op == 48) {
									self.h_offset += 1;
									if (self.h_build_expr(0)) return true;
									if (self.h_offset >= self.h_length) {
										return self.h_error_at("Expected a closing bracket", self.h_source.h_get_eof());
									} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
										self.h_offset += 1;
									} else return self.h_error("Expected a closing bracket", self.h_tokens[self.h_offset]);
									self.h_out_node = gml_node_ds_list(l_d6, l_node, self.h_out_node);
								} else l_proc = false;
								break;
							case 7/* qmark */:
								self.h_offset += 1;
								if (self.h_build_expr(0)) return true;
								if (self.h_offset >= self.h_length) {
									return self.h_error_at("Expected a closing bracket", self.h_source.h_get_eof());
								} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
									self.h_offset += 1;
								} else return self.h_error("Expected a closing bracket", self.h_tokens[self.h_offset]);
								self.h_out_node = gml_node_ds_map(l_d6, l_node, self.h_out_node);
								break;
							case 2/* hash */:
								self.h_offset += 1;
								if (self.h_build_expr(0)) return true;
								l_node2 = self.h_out_node;
								if (self.h_offset >= self.h_length) {
									return self.h_error_at("Expected a comma", self.h_source.h_get_eof());
								} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 4/* comma */) {
									self.h_offset += 1;
								} else return self.h_error("Expected a comma", self.h_tokens[self.h_offset]);
								if (self.h_build_expr(0)) return true;
								if (self.h_offset >= self.h_length) {
									return self.h_error_at("Expected a closing bracket", self.h_source.h_get_eof());
								} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
									self.h_offset += 1;
								} else return self.h_error("Expected a closing bracket", self.h_tokens[self.h_offset]);
								self.h_out_node = gml_node_ds_grid(l_d6, l_node, l_node2, self.h_out_node);
								break;
							case 8/* at_sign */:
								self.h_offset += 1;
								if (self.h_build_expr(0)) return true;
								if (self.h_offset >= self.h_length) return self.h_error_at("Expected comma or a closing bracket", self.h_source.h_get_eof());
								switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
									case 4/* comma */:
										self.h_offset += 1;
										l_node2 = self.h_out_node;
										if (self.h_build_expr(0)) return true;
										if (self.h_offset >= self.h_length) {
											return self.h_error_at("Expected a closing bracket", self.h_source.h_get_eof());
										} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
											self.h_offset += 1;
										} else return self.h_error("Expected a closing bracket", self.h_tokens[self.h_offset]);
										self.h_out_node = gml_node_raw_id2d(l_d6, l_node, l_node2, self.h_out_node);
										break;
									case 23/* sqb_close */:
										self.h_offset += 1;
										self.h_out_node = gml_node_raw_id(l_d6, l_node, self.h_out_node);
										break;
									default: self.h_expect("comma or a closing bracket", self.h_tokens[self.h_offset]);
								}
								break;
							default: l_proc = false;
						}
						if (!l_proc) {
							l_proc = true;
							if (self.h_build_expr(0)) return true;
							if (self.h_offset >= self.h_length) return self.h_error_at("Expected comma or a closing bracket", self.h_source.h_get_eof());
							switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.h_offset += 1;
									l_node2 = self.h_out_node;
									if (self.h_build_expr(0)) return true;
									if (self.h_offset >= self.h_length) {
										return self.h_error_at("Expected a closing bracket", self.h_source.h_get_eof());
									} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
										self.h_offset += 1;
									} else return self.h_error("Expected a closing bracket", self.h_tokens[self.h_offset]);
									self.h_out_node = gml_node_index2d(l_d6, l_node, l_node2, self.h_out_node);
									break;
								case 23/* sqb_close */:
									self.h_offset += 1;
									self.h_out_node = gml_node_index(l_d6, l_node, self.h_out_node);
									break;
								default: self.h_expect("comma or a closing bracket", self.h_tokens[self.h_offset]);
							}
						}
					} else return self.h_error_at("Unexpected `[`", l_d6);
					break;
				case 15/* un_op */:
					if (l_tk.h_op == 1) {
						var l_d2 = l_tk.h_d;
						if ((l_flags & 2) == 0) {
							self.h_offset += 1;
							if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 16/* in */) {
								l_node = self.h_out_node;
								self.h_offset += 1;
								if (self.h_build_expr(1)) return true;
								self.h_out_node = gml_node_in(l_d2, l_node, self.h_out_node, true);
							} else self.h_offset -= 1;
						}
					} else l_proc = false;
					break;
				case 16/* in */:
					if ((l_flags & 2) == 0) {
						l_node = self.h_out_node;
						self.h_offset += 1;
						if (self.h_build_expr(1)) return true;
						self.h_out_node = gml_node_in(l_tk.h_d, l_node, self.h_out_node, false);
					}
					break;
				case 18/* bin_op */:
					if ((l_flags & 1) == 0) {
						if (self.h_build_ops(l_tk.h_d, l_tk.h_op)) return true;
						l_flags |= 2;
					} else l_proc = false;
					break;
				case 19/* set_op */:
					if (l_tk.h_op == -1) {
						var l_p1 = l_tk.h_d;
						if ((l_flags & 1) == 0) {
							if (self.h_build_ops(l_p1, 64)) return true;
							l_flags |= 2;
						} else l_proc = false;
					} else l_proc = false;
					break;
				case 7/* qmark */:
					if ((l_flags & 1) == 0) {
						self.h_offset += 1;
						l_node = self.h_out_node;
						if (self.h_build_expr(0)) return true;
						l_node2 = self.h_out_node;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected an else-colon", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
							self.h_offset += 1;
						} else return self.h_error("Expected an else-colon", self.h_tokens[self.h_offset]);
						if (self.h_build_expr(0)) return true;
						self.h_out_node = gml_node_ternary(l_tk.h_d, l_node, l_node2, self.h_out_node);
					} else l_proc = false;
					break;
				case 27/* comment_post */:
					self.h_offset += 1;
					self.h_out_node = gml_node_comment_line_post(l_tk.h_d, self.h_out_node, l_tk.h_s);
					break;
				case 28/* comment_line */: self.h_offset += 1; break;
				case 29/* comment_block */:
					self.h_offset += 1;
					self.h_out_node = gml_node_comment_block_post(l_tk.h_d, self.h_out_node, l_tk.h_s, l_tk.h_pl);
					break;
				default: l_proc = false;
			}
		}
		return false;
	}
	static h_build_line = function(l_reqStatement) {
		var this = self;
		if (l_reqStatement == undefined) l_reqStatement = true;
		if (false) throw argument[0];
		if (self.h_offset >= self.h_length) return self.h_error_at("Expected a statement", self.h_source.h_get_eof());
		var l_tk = self.h_tokens[self.h_offset++];
		var l_tk2, l_proc, l_sep, l_x, l_x1, l_x2, l_nodes, l_i, l_s, l_d;
		var l_unknown = false;
		switch (l_tk.__enumIndex__/* gml_token */) {
			case 9/* keyword */:
				var l__g = l_tk.h_d;
				switch (l_tk.h_kw) {
					case 1:
						l_d = l__g;
						self.h_out_node = gml_node_block(l_d, []);
						while (self.h_offset < self.h_length) {
							l_tk2 = self.h_tokens[self.h_offset++];
							if (l_tk2.__enumIndex__/* gml_token */ == 10/* ident */) {
								l_d = l_tk2.h_d;
								l_s = l_tk2.h_id;
								l_i = array_length(self.h_macro_names);
								self.h_macro_names[@l_i] = l_s;
								self.h_macro_nodes[@l_i] = new gml_macro(l_s, gml_node_global(l_d, l_s), true, false);
								if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 4/* comma */) {
									self.h_offset += 1;
									continue;
								}
							} else return self.h_error("Expected a global variable name.", l_tk2);
							break;
						}
						break;
					case 2:
						var l_d = l__g;
						l_nodes = [];
						l_proc = true;
						while (l_proc && self.h_offset < self.h_length) {
							l_tk2 = self.h_tokens[self.h_offset++];
							switch (l_tk2.__enumIndex__/* gml_token */) {
								case 9/* keyword */: if (l_tk2.h_kw == 2) var l_d1 = l_tk2.h_d; else return self.h_expect("a variable name", l_tk2); break;
								case 10/* ident */:
									if (self.h_offset >= self.h_length) return self.h_error_at("Expected a variable value", self.h_source.h_get_eof());
									l_tk = self.h_tokens[self.h_offset];
									if (l_tk.__enumIndex__/* gml_token */ == 19/* set_op */) {
										if (l_tk.h_op == -1) {
											self.h_offset += 1;
											if (self.h_build_expr(0)) return true;
										} else self.h_out_node = undefined;
									} else self.h_out_node = undefined;
									gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_var_decl(l_tk2.h_d, l_tk2.h_id, self.h_out_node));
									if (self.h_offset < self.h_length) switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
										case 4/* comma */: self.h_offset += 1; break;
										case 3/* semico */:
											self.h_offset += 1;
											l_proc = false;
											break;
										default: l_proc = false;
									}
									break;
								default: return self.h_expect("a variable name", l_tk2);
							}
						}
						if (array_length(l_nodes) != 1) self.h_out_node = gml_node_block(l_d, l_nodes); else self.h_out_node = l_nodes[0];
						break;
					case 3:
						var l_e;
						var l__g1 = self.h_tokens[self.h_offset];
						if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
							var l_s1 = l__g1.h_id;
							var l_d1 = l__g1.h_d;
							self.h_offset += 1;
							l_e = new gml_enum(l_s1, l_d1);
						} else return self.h_error("Expected an enum name", self.h_tokens[self.h_offset]);
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected enum block", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 24/* cub_open */) {
							self.h_offset += 1;
						} else return self.h_error("Expected enum block", self.h_tokens[self.h_offset]);
						l_proc = true;
						l_sep = true;
						while (self.h_offset < self.h_length && l_proc) {
							var l__g1 = self.h_tokens[self.h_offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */:
									self.h_offset += 1;
									l_proc = false;
									break;
								case 4/* comma */:
									if (l_sep) {
										return self.h_error("Unexpected comma", self.h_tokens[self.h_offset]);
									} else {
										self.h_offset += 1;
										l_sep = true;
									}
									break;
								case 10/* ident */:
									if (l_sep) {
										self.h_offset += 1;
										var l__g3 = self.h_tokens[self.h_offset];
										if (l__g3.__enumIndex__/* gml_token */ == 19/* set_op */) {
											if (l__g3.h_op == -1) {
												self.h_offset += 1;
												if (self.h_build_expr(0)) return true;
											} else self.h_out_node = undefined;
										} else self.h_out_node = undefined;
										var l_ec = new gml_enum_ctr(l__g1.h_id, l__g1.h_d, self.h_out_node);
										gml_std_gml_internal_ArrayImpl_push(l_e.h_ctr_list, l_ec);
										l_e.h_ctr_map.h_set(l_ec.h_name, l_ec);
										l_sep = false;
									} else return self.h_expect("a comma or a closing bracket", self.h_tokens[self.h_offset]);
									break;
								default: return self.h_expect("a comma, enum entry, or closing bracket", self.h_tokens[self.h_offset]);
							}
						}
						if (l_proc) return self.h_error("Unclosed enum-block", l_tk);
						gml_std_gml_internal_ArrayImpl_push(self.h_enums, l_e);
						self.h_out_node = gml_node_block(l__g, []);
						break;
					case 4:
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected a then-expression", self.h_source.h_get_eof());
						var l__g1 = self.h_tokens[self.h_offset];
						if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) {
							if (l__g1.h_kw == 5) self.h_offset += 1;
						}
						if (self.h_build_line()) return true;
						l_x2 = self.h_out_node;
						l_i = self.h_offset;
						while (self.h_offset < self.h_length) {
							switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
								case 29/* comment_block */:
									self.h_offset += 1;
									continue;
								case 28/* comment_line */:
									self.h_offset += 1;
									continue;
								case 27/* comment_post */:
									self.h_offset += 1;
									continue;
							}
							break;
						}
						if (self.h_offset < self.h_length) {
							var l__g1 = self.h_tokens[self.h_offset];
							if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) {
								if (l__g1.h_kw == 6) {
									self.h_offset += 1;
									if (self.h_build_line()) return true;
									l_x = self.h_out_node;
								} else {
									self.h_offset = l_i;
									l_x = undefined;
								}
							} else {
								self.h_offset = l_i;
								l_x = undefined;
							}
						} else {
							self.h_offset = l_i;
							l_x = undefined;
						}
						self.h_out_node = gml_node_if_then(l__g, l_x1, l_x2, l_x);
						break;
					case 7:
						var l_d = l__g;
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						var l_cc = [];
						var l_c = undefined;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected switch-block body", self.h_source.h_get_eof());
						} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 24/* cub_open */) {
							self.h_offset += 1;
						} else return self.h_error("Expected switch-block body", self.h_tokens[self.h_offset]);
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected switch-block contents", self.h_source.h_get_eof());
						var l__g1 = self.h_tokens[self.h_offset];
						switch (l__g1.__enumIndex__/* gml_token */) {
							case 9/* keyword */:
								switch (l__g1.h_kw) {
									case 8: case 9: break;
									default: return self.h_expect("`case` or `default`", self.h_tokens[self.h_offset]);
								}
								break;
							case 29/* comment_block */: break;
							case 28/* comment_line */: break;
							case 27/* comment_post */: break;
							default: return self.h_expect("`case` or `default`", self.h_tokens[self.h_offset]);
						}
						l_proc = true;
						l_x2 = undefined;
						l_nodes = undefined;
						var l_pre = [];
						while (self.h_offset < self.h_length && l_proc) {
							var l__g1 = self.h_tokens[self.h_offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */:
									self.h_offset += 1;
									l_proc = false;
									break;
								case 28/* comment_line */:
									self.h_offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_line(l__g1.h_d, l__g1.h_s));
									break;
								case 27/* comment_post */:
									self.h_offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_line(l__g1.h_d, l__g1.h_s));
									break;
								case 29/* comment_block */:
									self.h_offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_block(l__g1.h_d, l__g1.h_s));
									break;
								case 9/* keyword */:
									switch (l__g1.h_kw) {
										case 8:
											self.h_offset += 1;
											if (self.h_build_expr(0)) return true;
											if (self.h_offset >= self.h_length) {
												return self.h_error_at("Expected a colon", self.h_source.h_get_eof());
											} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
												self.h_offset += 1;
											} else return self.h_error("Expected a colon", self.h_tokens[self.h_offset]);
											l_nodes = [self.h_out_node];
											while (self.h_offset < self.h_length) {
												var l__g5 = self.h_tokens[self.h_offset];
												if (l__g5.__enumIndex__/* gml_token */ == 9/* keyword */) {
													if (l__g5.h_kw == 8) {
														self.h_offset += 1;
														if (self.h_build_expr(0)) return true;
														if (self.h_offset >= self.h_length) {
															return self.h_error_at("Expected a colon", self.h_source.h_get_eof());
														} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
															self.h_offset += 1;
														} else return self.h_error("Expected a colon", self.h_tokens[self.h_offset]);
														gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
														continue;
													}
												}
												break;
											}
											l_c = { values: l_nodes, expr: undefined, pre: l_pre }
											gml_std_gml_internal_ArrayImpl_push(l_cc, l_c);
											l_nodes = [];
											l_pre = [];
											l_c.expr = gml_node_block(l__g1.h_d, l_nodes);
											break;
										case 9:
											self.h_offset += 1;
											if (self.h_offset >= self.h_length) {
												return self.h_error_at("Expected a colon", self.h_source.h_get_eof());
											} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 6/* colon */) {
												self.h_offset += 1;
											} else return self.h_error("Expected a colon", self.h_tokens[self.h_offset]);
											l_nodes = [];
											l_x2 = gml_node_block(l__g1.h_d, l_nodes);
											break;
										default:
											if (self.h_build_line()) return true;
											gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
									}
									break;
								default:
									if (self.h_build_line()) return true;
									gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
							}
						}
						if (l_proc) return self.h_error_at("Unclosed switch-block", l_d);
						self.h_out_node = gml_node_switch(l_d, l_x1, l_cc, l_x2);
						break;
					case 14:
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected for-loop header", self.h_source.h_get_eof());
						if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 20/* par_open */) {
							self.h_offset += 1;
							l_proc = true;
						} else l_proc = false;
						if (self.h_build_line()) return true;
						l_x = self.h_out_node;
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected for-loop post-action", self.h_source.h_get_eof());
						if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 3/* semico */) self.h_offset += 1;
						if (self.h_build_line()) return true;
						l_x2 = self.h_out_node;
						if (l_proc) {
							if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 21/* par_close */) self.h_offset += 1; else return self.h_expect("a closing parenthesis", self.h_tokens[self.h_offset]);
						}
						if (self.h_build_line()) return true;
						self.h_out_node = gml_node_for(l__g, l_x, l_x1, l_x2, self.h_out_node);
						break;
					case 11:
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						if (self.h_build_line()) return true;
						self.h_out_node = gml_node_while(l__g, l_x1, self.h_out_node);
						break;
					case 10:
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						if (self.h_build_line()) return true;
						self.h_out_node = gml_node_repeat(l__g, l_x1, self.h_out_node);
						break;
					case 13:
						var l_d = l__g;
						if (self.h_build_line()) return true;
						l_x1 = self.h_out_node;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected a `while` or `until`", self.h_source.h_get_eof());
						var l__g1 = self.h_tokens[self.h_offset];
						if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) switch (l__g1.h_kw) {
							case 11:
								self.h_offset += 1;
								if (self.h_build_expr(0)) return true;
								self.h_out_node = gml_node_do_while(l_d, l_x1, self.h_out_node);
								break;
							case 12:
								self.h_offset += 1;
								if (self.h_build_expr(0)) return true;
								self.h_out_node = gml_node_do_until(l_d, l_x1, self.h_out_node);
								break;
							default: return self.h_expect("a `while` or `until`", self.h_tokens[self.h_offset]);
						} else return self.h_expect("a `while` or `until`", self.h_tokens[self.h_offset]);
						break;
					case 15:
						if (self.h_build_expr(0)) return true;
						l_x1 = self.h_out_node;
						if (self.h_build_line()) return true;
						self.h_out_node = gml_node_with(l__g, l_x1, self.h_out_node);
						break;
					case 17: self.h_out_node = gml_node_break(l__g); break;
					case 16: self.h_out_node = gml_node_continue(l__g); break;
					case 19: self.h_out_node = gml_node_exit(l__g); break;
					case 18:
						var l_d = l__g;
						if (self.h_offset < self.h_length) {
							var l__g1 = self.h_tokens[self.h_offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */: self.h_out_node = gml_node_exit(l__g1.h_d); break;
								case 3/* semico */: self.h_out_node = gml_node_exit(l__g1.h_d); break;
								default:
									if (self.h_build_expr(0)) return true;
									self.h_out_node = gml_node_return(l_d, self.h_out_node);
							}
						} else self.h_out_node = gml_node_exit(l_d);
						break;
					case 20:
						if (self.h_build_expr(0)) return true;
						self.h_out_node = gml_node_wait(l__g, self.h_out_node);
						break;
					case 28: self.h_out_node = gml_node_debugger(l__g); break;
					case 21:
						if (self.h_build_line()) return true;
						l_x1 = self.h_out_node;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected a catch-block", self.h_source.h_get_eof());
						} else {
							var l__g1 = self.h_tokens[self.h_offset];
							if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) {
								if (l__g1.h_kw == 22) self.h_offset += 1; else return self.h_error("Expected a catch-block", self.h_tokens[self.h_offset]);
							} else return self.h_error("Expected a catch-block", self.h_tokens[self.h_offset]);
						}
						if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 20/* par_open */) {
							self.h_offset += 1;
							l_proc = true;
						} else l_proc = false;
						if (self.h_offset >= self.h_length) {
							return self.h_error_at("Expected a capture variable name", self.h_source.h_get_eof());
						} else {
							var l__g1 = self.h_tokens[self.h_offset];
							if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
								self.h_offset += 1;
								l_s = l__g1.h_id;
							} else return self.h_error("Expected a capture variable name", self.h_tokens[self.h_offset]);
						}
						if (l_proc) {
							if (self.h_offset >= self.h_length) {
								return self.h_error_at("Expected a closing parenthesis", self.h_source.h_get_eof());
							} else if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 21/* par_close */) {
								self.h_offset += 1;
							} else return self.h_error("Expected a closing parenthesis", self.h_tokens[self.h_offset]);
						}
						if (self.h_build_line()) return true;
						self.h_out_node = gml_node_try_catch(l__g, l_x1, l_s, self.h_out_node);
						break;
					case 23:
						if (self.h_build_expr(0)) return true;
						self.h_out_node = gml_node_throw(l__g, self.h_out_node);
						break;
					default: l_unknown = true;
				}
				break;
			case 1/* macro */:
				var l__g = self.h_tokens[self.h_offset++];
				if (l__g.__enumIndex__/* gml_token */ == 10/* ident */) {
					var l_s1 = l__g.h_id;
					if (self.h_build_line(false)) return true;
					var l_i1 = array_length(self.h_macro_names);
					self.h_macro_names[@l_i1] = l_s1;
					self.h_macro_nodes[@l_i1] = new gml_macro(l_s1, self.h_out_node, gml_builder_build_line_is_expr, gml_builder_build_line_is_stat);
					self.h_out_node = gml_node_block(l_tk.h_d, []);
				} else self.h_error("Expected a macro name", self.h_tokens[self.h_offset]);
				break;
			case 24/* cub_open */:
				var l_start = l_tk.h_d;
				l_proc = true;
				l_nodes = [];
				if (self.h_offset < self.h_length) {
					var l__g = self.h_tokens[self.h_offset];
					if (l__g.__enumIndex__/* gml_token */ == 27/* comment_post */) {
						gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.h_d, l__g.h_s));
						self.h_offset += 1;
					}
				}
				while (l_proc && self.h_offset < self.h_length) {
					var l__g = self.h_tokens[self.h_offset];
					switch (l__g.__enumIndex__/* gml_token */) {
						case 25/* cub_close */:
							self.h_offset += 1;
							l_proc = false;
							break;
						case 28/* comment_line */:
							self.h_offset += 1;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.h_d, l__g.h_s));
							break;
						case 29/* comment_block */:
							if (l__g.h_pl) {
								self.h_offset += 1;
								gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_block(l__g.h_d, l__g.h_s));
							} else {
								if (self.h_build_line()) return true;
								gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_block_pre(l__g.h_d, l__g.h_s, self.h_out_node, false));
							}
							break;
						default:
							if (self.h_build_line()) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
					}
				}
				if (l_proc) return self.h_error_at("Expected a closing bracket.", l_start);
				self.h_out_node = gml_node_block(l_start, l_nodes);
				break;
			case 28/* comment_line */:
				if (self.h_offset < self.h_length) {
					if (self.h_build_line()) return true;
					self.h_out_node = gml_node_comment_line_sep(l_tk.h_d, l_tk.h_s, self.h_out_node);
				} else self.h_out_node = gml_node_comment_line(l_tk.h_d, l_tk.h_s);
				break;
			case 27/* comment_post */:
				if (self.h_build_line()) return true;
				self.h_out_node = gml_node_comment_line_pre(l_tk.h_d, l_tk.h_s, self.h_out_node);
				break;
			case 29/* comment_block */:
				if (self.h_offset < self.h_length) {
					if (self.h_build_line()) return true;
					self.h_out_node = gml_node_comment_block_pre(l_tk.h_d, l_tk.h_s, self.h_out_node, l_tk.h_pl);
				} else self.h_out_node = gml_node_comment_block(l_tk.h_d, l_tk.h_s);
				break;
			case 10/* ident */:
				var l_s = l_tk.h_id;
				var l_m = self.h_program.h_macro_map.h_get(l_s);
				if (l_m != undefined && l_m.h_is_stat) {
					self.h_out_node = gml_node_clone(l_m.h_node);
				} else {
					l_i = gml_std_gml_internal_ArrayImpl_indexOf(self.h_macro_names, l_s);
					if (l_i >= 0) {
						l_m = self.h_macro_nodes[l_i];
						if (l_m.h_is_stat) self.h_out_node = gml_node_clone(l_m.h_node); else l_unknown = true;
					} else l_unknown = true;
				}
				break;
			default: l_unknown = true;
		}
		if (l_unknown) {
			self.h_offset -= 1;
		} else {
			gml_builder_build_line_is_stat = true;
			gml_builder_build_line_is_expr = false;
		}
		if (l_unknown) {
			if (self.h_build_expr(5)) return true;
			gml_builder_build_line_is_stat = gml_node_is_statement(self.h_out_node);
			gml_builder_build_line_is_expr = true;
			if (self.h_offset < self.h_length) {
				var l__g = self.h_tokens[self.h_offset];
				if (l__g.__enumIndex__/* gml_token */ == 19/* set_op */) {
					l_x = self.h_out_node;
					self.h_offset += 1;
					if (self.h_build_expr(0)) return true;
					self.h_out_node = gml_node_set_op(l__g.h_d, l__g.h_op, l_x, self.h_out_node);
					gml_builder_build_line_is_stat = true;
				} else if (l_reqStatement && !gml_builder_build_line_is_stat) {
					return self.h_expect_node("a statement", self.h_out_node);
				}
			} else if (l_reqStatement && !gml_builder_build_line_is_stat) {
				return self.h_expect_node("a statement", self.h_out_node);
			}
		}
		while (self.h_offset < self.h_length) {
			if (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */ == 3/* semico */) {
				self.h_offset += 1;
				continue;
			}
			break;
		}
		if (self.h_offset < self.h_length) {
			var l__g = self.h_tokens[self.h_offset];
			if (l__g.__enumIndex__/* gml_token */ == 27/* comment_post */) {
				self.h_offset += 1;
				self.h_out_node = gml_node_comment_line_post(l__g.h_d, self.h_out_node, l__g.h_s);
			}
		}
		return false;
	}
	static h_build_outer = function(l_name, l_namedArgs, l_namedArgc, l_isFunc) {
		var this = self;
		self.h_current_script = l_name;
		var l_pos;
		if (self.h_offset >= self.h_length) l_pos = self.h_source.h_get_eof(); else l_pos = self.h_tokens[self.h_offset].h_d;
		var l_scr = new gml_script(self.h_source, l_name, l_pos);
		if (l_namedArgs == undefined) l_namedArgs = new haxe_ds_string_map();
		l_scr.h_named_args = l_namedArgs;
		l_scr.h_arguments = l_namedArgc;
		gml_std_gml_internal_ArrayImpl_push(self.h_scripts, l_scr);
		var l_nodes;
		if (l_isFunc) {
			if (self.h_build_line()) return true;
			l_scr.h_node = self.h_out_node;
			l_scr = self.h_scripts[0];
			var l__g = l_scr.h_node;
			if (l__g.__enumIndex__/* gml_node */ == 92/* block */) l_nodes = l__g.h_nodes; else l_nodes = [l_scr.h_node];
		} else l_nodes = [];
		while (self.h_offset < self.h_length) {
			var l__g = self.h_tokens[self.h_offset];
			switch (l__g.__enumIndex__/* gml_token */) {
				case 0/* header */: var l__name = l__g.h_name; break;
				case 9/* keyword */:
					if (l__g.h_kw != 24) {
						if (self.h_build_line()) return true;
						gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
						continue;
					}
					break;
				case 28/* comment_line */:
					gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.h_d, l__g.h_s));
					self.h_offset += 1;
					continue;
				default:
					if (self.h_build_line()) return true;
					gml_std_gml_internal_ArrayImpl_push(l_nodes, self.h_out_node);
					continue;
			}
			break;
		}
		if (array_length(l_nodes) > 1) {
			l_scr.h_node = gml_node_block(gml_std_haxe_enum_tools_getParameter(l_nodes[0], 0), l_nodes);
		} else if (array_length(l_nodes) == 1) {
			l_scr.h_node = l_nodes[0];
		} else l_scr.h_node = gml_node_block(self.h_source.h_get_eof(), l_nodes);
		return false;
	}
	static h_build_script_args = function() {
		var this = self;
		var l_nextArgs = new haxe_ds_string_map();
		var l_nextArgc = 0;
		var l_proc = true;
		if (self.h_offset >= self.h_length) return self.h_error_at("Expected script arguments", self.h_source.h_get_eof());
		var l__g = self.h_tokens[self.h_offset];
		var l_tmp;
		if (l__g.__enumIndex__/* gml_token */ == 21/* par_close */) l_tmp = true; else l_tmp = false;
		if (l_tmp) {
			self.h_offset += 1;
		} else while (l_proc && self.h_offset < self.h_length) {
			var l__g = self.h_tokens[self.h_offset];
			if (l__g.__enumIndex__/* gml_token */ == 10/* ident */) {
				var l_s = l__g.h_id;
				var l_nextArg = l_s;
				if (l_nextArgs.h_exists(l_nextArg)) return self.h_error("An argument named " + l_nextArg + " is already defined at position " + gml_std_Std_stringify(l_nextArgs.h_get(l_nextArg)), self.h_tokens[self.h_offset]);
				l_nextArgs.h_set(l_s, l_nextArgc);
				l_nextArgc++;
				self.h_offset += 1;
				switch (self.h_tokens[self.h_offset].__enumIndex__/* gml_token */) {
					case 21/* par_close */:
						self.h_offset += 1;
						l_proc = false;
						break;
					case 4/* comma */: self.h_offset += 1; break;
					default: return self.h_expect("a comma or closing parenthesis in script arguments", self.h_tokens[self.h_offset]);
				}
			} else return self.h_expect("an argument", self.h_tokens[self.h_offset]);
		}
		self.h_build_script_args_map = l_nextArgs;
		self.h_build_script_args_argc = l_nextArgc;
		return false;
	}
	static h_build_script_args_map = undefined;
	static h_build_script_args_argc = undefined;
	static h_build_loop = function(l_first) {
		var this = self;
		if (self.h_build_outer(l_first, undefined, 0, false)) return true;
		var l_hasFirstFunc = false;
		while (self.h_offset < self.h_length) {
			var l_tk = self.h_tokens[self.h_offset];
			switch (l_tk.__enumIndex__/* gml_token */) {
				case 0/* header */:
					self.h_offset += 1;
					var l_nextName = l_tk.h_name;
					var l_nextArgs = undefined;
					var l_nextArgc = 0;
					if (!(l_tk.h_lb || self.h_offset >= self.h_length)) {
						var l__g1 = self.h_tokens[self.h_offset];
						var l_tmp;
						if (l__g1.__enumIndex__/* gml_token */ == 20/* par_open */) l_tmp = true; else l_tmp = false;
						if (l_tmp) {
							self.h_offset += 1;
							if (self.h_build_script_args()) return true;
							l_nextArgs = self.h_build_script_args_map;
							l_nextArgc = self.h_build_script_args_argc;
							self.h_build_script_args_map = undefined;
						}
					}
					if (self.h_build_outer(l_nextName, l_nextArgs, l_nextArgc, false)) return true;
					break;
				case 9/* keyword */:
					if (l_tk.h_kw == 24) {
						self.h_offset += 1;
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected a function name", self.h_source.h_get_eof());
						var l_nextName1;
						l_tk = self.h_tokens[self.h_offset];
						if (l_tk.__enumIndex__/* gml_token */ == 10/* ident */) {
							l_nextName1 = l_tk.h_id;
							self.h_offset += 1;
						} else if (l_hasFirstFunc) {
							return self.h_expect("a function name", l_tk);
						} else {
							l_hasFirstFunc = true;
							l_nextName1 = l_first;
						}
						if (self.h_offset >= self.h_length) return self.h_error_at("Expected an opening `(`", self.h_source.h_get_eof());
						l_tk = self.h_tokens[self.h_offset++];
						var l_tmp1;
						if (l_tk.__enumIndex__/* gml_token */ == 20/* par_open */) l_tmp1 = true; else l_tmp1 = false;
						if (!l_tmp1) return self.h_expect("an opening `(`", l_tk);
						if (self.h_build_script_args()) return true;
						if (self.h_offset < self.h_length) {
							l_tk = self.h_tokens[self.h_offset];
							var l_tmp2;
							if (l_tk.__enumIndex__/* gml_token */ == 10/* ident */) l_tmp2 = l_tk.h_id == "constructor"; else l_tmp2 = false;
							if (l_tmp2) self.h_offset += 1;
						}
						var l_nextArgs1 = self.h_build_script_args_map;
						self.h_build_script_args_map = undefined;
						if (self.h_build_outer(l_nextName1, l_nextArgs1, self.h_build_script_args_argc, true)) return true;
					} else return self.h_expect("A script declaration", l_tk);
					break;
				default: return self.h_expect("A script declaration", l_tk);
			}
		}
		return false;
	}
	static h_program = undefined;
	var this = self;
	self.h_build_script_args_argc = 0;
	self.h_build_script_args_map = undefined;
	self.h_current_script = undefined;
	self.h_error_text = undefined;
	self.h_macro_nodes = [];
	self.h_macro_names = [];
	self.h_enums = [];
	self.h_scripts = [];
	self.h_offset = 0;
	self.h_program = l_pg;
	self.h_source = l_src;
	if (l_src.h_tokens != undefined) {
		self.h_tokens = l_src.h_tokens;
		gml_parser_tokens_found = l_src.h_token_count;
	} else self.h_tokens = gml_parser_run(l_src);
	if (self.h_tokens != undefined) {
		self.h_length = gml_parser_tokens_found;
		self.h_build_loop(l_src.h_main);
	} else {
		self.h_error_text = gml_parser_error_text;
		self.h_error_pos = gml_parser_error_pos;
	}
	static __class__ = mt_gml_builder;
}
if (live_enabled) mt_gml_builder.h_constructor = gml_builder;

#endregion

#region gml.compile

if (live_enabled) function gml_compile_error(l_text, l_pos) {
	gml_compile_error_text = l_pos.h_to_string() + " " + l_text;
	gml_compile_error_pos = l_pos;
	return true;
}

if (live_enabled) function gml_compile_node(l_q, l_r, l_out) {
	var l_x, l_x2, l_x3, l_w, l_i, l_k, l_l, l_n, l_p0, l_p1, l_p2, l_p3, l_pc, l_pb, l_s, l_v, l_d, l_o;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: if (l_out) ds_list_add(l_r, gml_action_undefined(l__g.h_d)); break;
		case 1/* number */:
			var l_f = l__g.h_value;
			var l_d1 = l__g.h_d;
			if (l_out) ds_list_add(l_r, gml_action_number(l_d1, l_f));
			break;
		case 2/* cstring */: if (l_out) ds_list_add(l_r, gml_action_cstring(l__g.h_d, l__g.h_value)); break;
		case 8/* self */: ds_list_add(l_r, gml_action_self(l__g.h_d)); break;
		case 9/* other */: ds_list_add(l_r, gml_action_other(l__g.h_d)); break;
		case 10/* global_ref */: ds_list_add(l_r, gml_action_number(l__g.h_d, -5)); break;
		case 6/* ensure_array */:
			l_d = l__g.h_d;
			l_x = l__g.h_expr;
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 35/* local */: ds_list_add(l_r, gml_action_ensure_array_local(l_d, gml_compile_curr_script.h_local_map.h_get(l__g1.h_id))); break;
				case 38/* global */: ds_list_add(l_r, gml_action_ensure_array_global(l_d, l__g1.h_id)); break;
				case 41/* field */:
					l_x2 = l__g1.h_x;
					if (gml_node_is_simple(l_x2)) {
						if (gml_compile_node(l_x2, l_r, true)) return true;
						ds_list_add(l_r, gml_action_ensure_array_field(l_d, l__g1.h_fd));
					} else return gml_compile_error("Cannot ensure array type - expression may have side effects.", l__g1.h_d);
					break;
				default: return gml_compile_error("Cannot ensure array type for value. Use [@index] if it does not need allocation or create it explicitly.", l_d);
			}
			break;
		case 34/* in */:
			if (gml_compile_node(l__g.h_fd, l_r, true)) return true;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_in(l__g.h_d, l__g.h_not));
			break;
		case 11/* script */: ds_list_add(l_r, gml_action_const(l__g.h_d, l__g.h_ref.h_index)); break;
		case 13/* const */: ds_list_add(l_r, gml_action_const(l__g.h_d, gml_const_val.h_get(l__g.h_id))); break;
		case 12/* native_script */: ds_list_add(l_r, gml_action_const(l__g.h_d, l__g.h_id)); break;
		case 4/* array_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_array_decl(l__g.h_d, l_n));
			break;
		case 5/* object_decl */:
			var l_keys = l__g.h_keys;
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			l_s = "";
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
				l_s += l_keys[l_i] + "\n";
			}
			ds_list_add(l_r, gml_action_object_decl(l__g.h_d, l_keys, l_s));
			break;
		case 91/* var_decl */:
			l_x = l__g.h_value;
			if (l_x != undefined) {
				if (gml_compile_node(l_x, l_r, true)) return true;
				ds_list_add(l_r, gml_action_local_set(l__g.h_d, gml_compile_curr_script.h_local_map.h_get(l__g.h_name)));
			}
			break;
		case 35/* local */: ds_list_add(l_r, gml_action_local(l__g.h_d, gml_compile_curr_script.h_local_map.h_get(l__g.h_id))); break;
		case 36/* local_set */:
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_local_set(l__g.h_d, gml_compile_curr_script.h_local_map.h_get(l__g.h_id)));
			break;
		case 37/* local_aop */:
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_local_aop(l__g.h_d, l__g.h_op, gml_compile_curr_script.h_local_map.h_get(l__g.h_id)));
			break;
		case 38/* global */: ds_list_add(l_r, gml_action_global(l__g.h_d, l__g.h_id)); break;
		case 39/* global_set */:
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_global_set(l__g.h_d, l__g.h_id));
			break;
		case 40/* global_aop */:
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_global_aop(l__g.h_d, l__g.h_op, l__g.h_id));
			break;
		case 41/* field */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field(l__g.h_d, l__g.h_fd));
			break;
		case 42/* field_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field_set(l__g.h_d, l__g.h_fd));
			break;
		case 43/* field_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field_aop(l__g.h_d, l__g.h_op, l__g.h_fd));
			break;
		case 53/* alarm */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm(l__g.h_d));
			break;
		case 54/* alarm_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm_set(l__g.h_d));
			break;
		case 55/* alarm_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm_aop(l__g.h_d, l__g.h_op));
			break;
		case 66/* raw_id */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index(l__g.h_d));
			break;
		case 56/* index */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index(l__g.h_d));
			break;
		case 67/* raw_id_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_set(l__g.h_d));
			break;
		case 57/* index_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_set(l__g.h_d));
			break;
		case 58/* index_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_aop(l__g.h_d, l__g.h_o));
			break;
		case 68/* raw_id_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_aop(l__g.h_d, l__g.h_o));
			break;
		case 71/* raw_id2d */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d(l__g.h_d));
			break;
		case 61/* index2d */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d(l__g.h_d));
			break;
		case 72/* raw_id2d_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_set(l__g.h_d));
			break;
		case 62/* index2d_set */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_set(l__g.h_d));
			break;
		case 73/* raw_id2d_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_aop(l__g.h_d, l__g.h_o));
			break;
		case 63/* index2d_aop */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
			if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_aop(l__g.h_d, l__g.h_o));
			break;
		case 44/* env */: ds_list_add(l_r, gml_action_env(l__g.h_d, gml_var_refs.h_get(l__g.h_id))); break;
		case 45/* env_set */:
			var l_s1 = l__g.h_id;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env_set(l__g.h_d, gml_var_refs.h_get(l_s1), gml_var_types.h_get(l_s1)));
			break;
		case 46/* env_aop */:
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env_aop(l__g.h_d, l__g.h_op, gml_var_refs.h_get(l__g.h_id)));
			break;
		case 50/* env1d */:
			if (gml_compile_node(l__g.h_k, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d(l__g.h_d, gml_var_refs.h_get(l__g.h_id)));
			break;
		case 51/* env1d_set */:
			var l_s1 = l__g.h_id;
			if (gml_compile_node(l__g.h_k, l_r, true)) return true;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d_set(l__g.h_d, gml_var_refs.h_get(l_s1), gml_var_types.h_get(l_s1)));
			break;
		case 52/* env1d_aop */:
			if (gml_compile_node(l__g.h_k, l_r, true)) return true;
			if (gml_compile_node(l__g.h_val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d_aop(l__g.h_d, l__g.h_op, gml_var_refs.h_get(l__g.h_id)));
			break;
		case 76/* ds_list */:
			l_s = "ds_list_find_value";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 2, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 77/* ds_list_set */:
			l_s = "ds_list_set";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 3, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 78/* ds_list_aop */:
			if (gml_func_script.h_exists("ds_list_find_value") && gml_func_script.h_exists("ds_list_set")) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.h_d, l__g.h_o, 3, gml_func_script.h_get("ds_list_find_value"), gml_func_script.h_get("ds_list_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 81/* ds_map */:
			l_s = "ds_map_find_value";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 2, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 82/* ds_map_set */:
			l_s = "ds_map_set";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 3, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 83/* ds_map_aop */:
			if (gml_func_script.h_exists("ds_map_find_value") && gml_func_script.h_exists("ds_map_set")) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_id, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.h_d, l__g.h_o, 3, gml_func_script.h_get("ds_map_find_value"), gml_func_script.h_get("ds_map_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 86/* ds_grid */:
			l_s = "ds_grid_get";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 3, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 87/* ds_grid_set */:
			l_s = "ds_grid_set";
			if (gml_func_script.h_exists(l_s)) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.h_d, gml_func_script.h_get(l_s), 4, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 88/* ds_grid_aop */:
			if (gml_func_script.h_exists("ds_grid_get") && gml_func_script.h_exists("ds_grid_set")) {
				if (gml_compile_node(l__g.h_lx, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i1, l_r, true)) return true;
				if (gml_compile_node(l__g.h_i2, l_r, true)) return true;
				if (gml_compile_node(l__g.h_v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.h_d, l__g.h_o, 4, gml_func_script.h_get("ds_grid_get"), gml_func_script.h_get("ds_grid_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.h_d);
			break;
		case 14/* arg_const */: ds_list_add(l_r, gml_action_arg_const(l__g.h_d, l__g.h_id)); break;
		case 15/* arg_index */:
			if (gml_compile_node(l__g.h_id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_arg_index(l__g.h_d));
			break;
		case 16/* arg_count */: ds_list_add(l_r, gml_action_arg_count(l__g.h_d)); break;
		case 31/* set_op */:
			l_d = l__g.h_d;
			l_o = l__g.h_o;
			l_x = l__g.h_a;
			l_x2 = l__g.h_b;
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 14/* arg_const */:
					l_i = l__g1.h_id;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					if (l_o != -1) ds_list_add(l_r, gml_action_arg_const_aop(l_d, l_o, l_i)); else ds_list_add(l_r, gml_action_arg_const_set(l_d, l_i));
					break;
				case 15/* arg_index */:
					if (gml_compile_node(l__g1.h_id, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					if (l_o != -1) ds_list_add(l_r, gml_action_arg_index_aop(l_d, l_o)); else ds_list_add(l_r, gml_action_arg_index_set(l_d));
					break;
				default: return gml_compile_error("Cannot set " + gml_std_Type_enumConstructor(l_x), l_d);
			}
			break;
		case 30/* bin_op */:
			l_d = l__g.h_d;
			l_o = l__g.h_o;
			l_x = l__g.h_a;
			l_x2 = l__g.h_b;
			switch (l_o) {
				case 18:
					if (gml_compile_node(l_x, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					ds_list_add(l_r, gml_action_concat(l_d));
					break;
				case 64:
					if (gml_compile_node(l_x, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					ds_list_add(l_r, gml_action_equ_op(l_d));
					break;
				case 65:
					if (gml_compile_node(l_x, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					ds_list_add(l_r, gml_action_neq_op(l_d));
					break;
				case 80:
					if (gml_compile_node(l_x, l_r, true)) return true;
					l_p0 = ds_list_size(l_r);
					ds_list_add(l_r, gml_action_bool_and(l_d, 0));
					if (gml_compile_node(l_x2, l_r, true)) return true;
					l_r[|l_p0] = gml_action_bool_and(l_d, ds_list_size(l_r));
					break;
				case 96:
					if (gml_compile_node(l_x, l_r, true)) return true;
					l_p0 = ds_list_size(l_r);
					ds_list_add(l_r, gml_action_bool_or(l_d, 0));
					if (gml_compile_node(l_x2, l_r, true)) return true;
					l_r[|l_p0] = gml_action_bool_or(l_d, ds_list_size(l_r));
					break;
				default:
					if (gml_compile_node(l_x, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					ds_list_add(l_r, gml_action_bin_op(l_d, l_o));
			}
			break;
		case 29/* un_op */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			ds_list_add(l_r, gml_action_un_op(l__g.h_d, l__g.h_o));
			break;
		case 27/* prefix */:
			l_d = l__g.h_d;
			l_x = l__g.h_x;
			l_i = (l__g.h_inc ? 1 : -1);
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 35/* local */:
					l_k = gml_compile_curr_script.h_local_map.h_get(l__g1.h_id);
					ds_list_add(l_r, gml_action_local(l_d, l_k));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_local_set(l_d, l_k));
					break;
				case 38/* global */:
					l_s = l__g1.h_id;
					ds_list_add(l_r, gml_action_global(l_d, l_s));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_global_set(l_d, l_s));
					break;
				case 41/* field */:
					l_s = l__g1.h_fd;
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_field(l_d, l_s));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 2));
					ds_list_add(l_r, gml_action_field_set(l_d, l_s));
					break;
				case 56/* index */:
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					if (gml_compile_node(l__g1.h_id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				case 66/* raw_id */:
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					if (gml_compile_node(l__g1.h_id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				default: return gml_compile_error("Can't apply prefix to " + gml_std_Type_enumConstructor(l_x), l_d);
			}
			break;
		case 28/* postfix */:
			l_d = l__g.h_d;
			l_x = l__g.h_x;
			l_i = (l__g.h_inc ? 1 : -1);
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 35/* local */:
					l_k = gml_compile_curr_script.h_local_map.h_get(l__g1.h_id);
					ds_list_add(l_r, gml_action_local(l_d, l_k));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_local_set(l_d, l_k));
					break;
				case 38/* global */:
					l_s = l__g1.h_id;
					ds_list_add(l_r, gml_action_global(l_d, l_s));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_global_set(l_d, l_s));
					break;
				case 41/* field */:
					l_s = l__g1.h_fd;
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_field(l_d, l_s));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 2));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_field_set(l_d, l_s));
					break;
				case 56/* index */:
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					if (gml_compile_node(l__g1.h_id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				case 66/* raw_id */:
					if (gml_compile_node(l__g1.h_x, l_r, true)) return true;
					if (gml_compile_node(l__g1.h_id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				default: return gml_compile_error("Can't apply postfix to " + gml_std_Type_enumConstructor(l_x), l_d);
			}
			break;
		case 18/* call_script */:
			l_d = l__g.h_d;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_call_script(l_d, gml_compile_curr_program.h_script_map.h_get(l__g.h_name), l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 20/* call_script_id */:
			l_d = l__g.h_d;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			if (gml_compile_node(l__g.h_index, l_r, true)) return true;
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_call_script_id(l_d, l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 24/* call_func_at */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				gml_compile_node(l_w[l_i], l_r, true);
			}
			ds_list_add(l_r, gml_action_call_field(l_d, l__g.h_s, l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 22/* call_field */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_inst, l_r, true)) return true;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				gml_compile_node(l_w[l_i], l_r, true);
			}
			ds_list_add(l_r, gml_action_call_field(l_d, l__g.h_prop, l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 25/* construct */:
			l_d = l__g.h_d;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			if (gml_compile_node(l__g.h_ctr, l_r, true)) return true;
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_construct(l_d, l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 21/* call_script_with_array */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_index, l_r, true)) return true;
			if (gml_compile_node(l__g.h_array, l_r, true)) return true;
			ds_list_add(l_r, gml_action_call_script_with_array(l_d));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 19/* call_script_at */:
			l_d = l__g.h_d;
			return gml_compile_error("dot-calls are currently not supported.", l_d);
		case 23/* call_func */:
			var l__d = l__g.h_d;
			l_s = l__g.h_funcName;
			l_d = l__d;
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			if (gml_func_script.h_get(l_s) == -1) return gml_compile_error("Function `" + l_s + "` is pointing at an invalid script.", l__d);
			l_i = gml_inst_data.h_get(l_s);
			ds_list_add(l_r, gml_action_call_func(l_d, gml_func_script.h_get(l_s), l_n, gml_func_args.h_get(l_s), gml_func_rest.h_get(l_s), l_i, l_out && l_i != -5));
			if (l_out && l_i == -5) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 26/* func_literal */: ds_list_add(l_r, gml_action_func_literal(l__g.h_d, l__g.h_name)); break;
		case 92/* block */:
			l_w = l__g.h_nodes;
			l_n = array_length(l_w);
			if (l_n > 0) {
				l_n--;
				for (l_i = 0; l_i < l_n; l_i++) {
					if (gml_compile_node(l_w[l_i], l_r, false)) return true;
				}
				if (gml_compile_node(l_w[l_i], l_r, l_out)) return true;
			}
			break;
		case 93/* if_then */:
			l_d = l__g.h_d;
			l_x = l__g.h_not;
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			l_i = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			if (gml_compile_node(l__g.h_then, l_r, false)) return true;
			if (l_x != undefined) {
				l_n = ds_list_size(l_r);
				ds_list_add(l_r, gml_action_jump(l_d, 0));
				l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
				if (gml_compile_node(l_x, l_r, false)) return true;
				l_r[|l_n] = gml_action_jump(l_d, ds_list_size(l_r));
			} else l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
			break;
		case 94/* ternary */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			l_i = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			if (gml_compile_node(l__g.h_then, l_r, l_out)) return true;
			l_n = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump(l_d, 0));
			l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
			if (gml_compile_node(l__g.h_not, l_r, l_out)) return true;
			l_r[|l_n] = gml_action_jump(l_d, ds_list_size(l_r));
			break;
		case 101/* repeat */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_times, l_r, true)) return true;
			l_n = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_repeat_pre(l_d, 0));
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_repeat_jump(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_discard(l_d));
			for (l_k = l_p0; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p1); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p2); break;
				}
			}
			l_r[|l_n] = gml_action_repeat_pre(l_d, ds_list_size(l_r));
			break;
		case 98/* while */:
			l_d = l__g.h_d;
			l_p0 = ds_list_size(l_r);
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			l_r[|l_p1] = gml_action_jump_unless(l_d, l_p2);
			for (l_k = l_p1; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p0); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p2); break;
				}
			}
			break;
		case 100/* do_while */:
			l_d = l__g.h_d;
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			var l__g1 = l_q;
			var l_tmp;
			if (l__g1.__enumIndex__/* gml_node */ == 99/* do_until */) l_tmp = true; else l_tmp = false;
			if (l_tmp) ds_list_add(l_r, gml_action_jump_unless(l_d, l_p0)); else ds_list_add(l_r, gml_action_jump_if(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p1); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p2); break;
				}
			}
			break;
		case 99/* do_until */:
			l_d = l__g.h_d;
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			var l__g1 = l_q;
			var l_tmp;
			if (l__g1.__enumIndex__/* gml_node */ == 99/* do_until */) l_tmp = true; else l_tmp = false;
			if (l_tmp) ds_list_add(l_r, gml_action_jump_unless(l_d, l_p0)); else ds_list_add(l_r, gml_action_jump_if(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p1); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p2); break;
				}
			}
			break;
		case 102/* for */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_pre, l_r, false)) return true;
			l_p0 = ds_list_size(l_r);
			if (gml_compile_node(l__g.h_cond, l_r, true)) return true;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_loop, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p2 = ds_list_size(l_r);
			if (gml_compile_node(l__g.h_post, l_r, false)) return true;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p3 = ds_list_size(l_r);
			l_r[|l_p1] = gml_action_jump_unless(l_d, l_p3);
			for (l_k = l_p1; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p2); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p3); break;
				}
			}
			break;
		case 95/* switch */:
			var l__cc = l__g.h_list;
			l_d = l__g.h_d;
			var l_jt = ds_map_create();
			if (gml_compile_node(l__g.h_expr, l_r, true)) return true;
			l_p0 = ds_list_size(l_r);
			l_n = array_length(l__cc);
			for (l_i = 0; l_i < l_n; l_i++) {
				var l__cv = l__cc[l_i].values;
				l_l = array_length(l__cv);
				for (l_k = 0; l_k < l_l; l_k++) {
					if (!gml_node_has_value(l__cv[l_k])) break;
				}
				if (l_k < l_l) break;
			}
			if (l_i < l_n) {
				var l_caseLabels = [];
				l_pb = gml_compile_curr_break;
				gml_compile_curr_break = l_p0;
				for (l_i = 0; l_i < l_n; l_i++) {
					var l__cv = l__cc[l_i].values;
					l_l = array_length(l__cv);
					var l_cl1 = [];
					for (l_k = 0; l_k < l_l; l_k++) {
						if (gml_compile_node(l__cv[l_k], l_r, true)) return true;
						l_cl1[@l_k] = ds_list_size(l_r);
						ds_list_add(l_r, gml_action_switch_case(l_d, 0));
					}
					l_caseLabels[@l_i] = l_cl1;
				}
				ds_list_add(l_r, gml_action_discard(l_d));
				var l_defCasePos = ds_list_size(l_r);
				ds_list_add(l_r, gml_action_jump(l_d, 0));
				for (l_i = 0; l_i < l_n; l_i++) {
					var l_cl1 = l_caseLabels[l_i];
					l_l = array_length(l_cl1);
					for (l_k = 0; l_k < l_l; l_k++) {
						l_r[|l_cl1[l_k]] = gml_action_switch_case(l_d, ds_list_size(l_r));
					}
					if (gml_compile_node(l__cc[l_i].expr, l_r, false)) return true;
				}
				l_r[|l_defCasePos] = gml_action_jump(l_d, ds_list_size(l_r));
				l_x = l__g.h_def;
				if (l_x != undefined && gml_compile_node(l_x, l_r, false)) return true;
				gml_compile_curr_break = l_pb;
			} else {
				ds_list_add(l_r, gml_action_switch(l_d, l_jt, 0));
				l_pb = gml_compile_curr_break;
				gml_compile_curr_break = l_p0;
				l_n = array_length(l__cc);
				for (l_i = 0; l_i < l_n; l_i++) {
					var l__cv = l__cc[l_i].values;
					l_l = array_length(l__cv);
					for (l_k = 0; l_k < l_l; l_k++) {
						var l_v = gml_node_to_value(l__cv[l_k]);
						l_jt[?l_v[0]] = ds_list_size(l_r);
					}
					if (gml_compile_node(l__cc[l_i].expr, l_r, false)) return true;
				}
				l_p1 = ds_list_size(l_r);
				l_x = l__g.h_def;
				if (l_x != undefined && gml_compile_node(l_x, l_r, false)) return true;
				gml_compile_curr_break = l_pb;
				l_r[|l_p0] = gml_action_switch(l_d, l_jt, l_p1);
			}
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				if (l__g1.__enumIndex__/* gml_action */ == 69/* break */) {
					var l_lp = l__g1.h_lp;
					var l_d1 = l__g1.h_d;
					if (l_lp == l_p0) l_r[|l_k] = gml_action_jump(l_d1, l_p2);
				}
			}
			break;
		case 103/* with */:
			l_d = l__g.h_d;
			if (gml_compile_node(l__g.h_ctx, l_r, true)) return true;
			ds_list_add(l_r, gml_action_with_pre(l_d));
			l_p0 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_with_next(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_with_post(l_d));
			l_r[|l_p0] = gml_action_with_next(l_d, l_p1);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 70/* continue */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p0); break;
					case 69/* break */: if (l__g1.h_lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.h_d, l_p1); break;
				}
			}
			break;
		case 110/* try_catch */:
			l_d = l__g.h_d;
			l_p0 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_try(l_d, 0));
			if (gml_compile_node(l__g.h_node, l_r, false)) return true;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_finally(l_d, 0));
			l_r[|l_p0] = gml_action_try(l_d, ds_list_size(l_r));
			ds_list_add(l_r, gml_action_catch(l_d, gml_compile_curr_script.h_local_map.h_get(l__g.h_cap)));
			if (gml_compile_node(l__g.h_cat, l_r, false)) return true;
			l_r[|l_p1] = gml_action_finally(l_d, ds_list_size(l_r));
			break;
		case 111/* throw */:
			if (gml_compile_node(l__g.h_x, l_r, true)) return true;
			ds_list_add(l_r, gml_action_throw(l__g.h_d));
			break;
		case 107/* break */:
			l_d = l__g.h_d;
			l_i = gml_compile_curr_break;
			if (l_i >= 0) ds_list_add(l_r, gml_action_break(l_d, l_i)); else return gml_compile_error("Cannot `break` here", l_d);
			break;
		case 108/* continue */:
			l_d = l__g.h_d;
			l_i = gml_compile_curr_continue;
			if (l_i >= 0) ds_list_add(l_r, gml_action_continue(l_d, l_i)); else return gml_compile_error("Cannot `continue` here", l_d);
			break;
		case 105/* return */:
			if (gml_compile_node(l__g.h_v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_return(l__g.h_d));
			break;
		case 106/* exit */:
			l_d = l__g.h_d;
			ds_list_add(l_r, gml_action_number(l_d, 0));
			ds_list_add(l_r, gml_action_return(l_d));
			break;
		case 96/* wait */:
			if (gml_compile_node(l__g.h_time, l_r, true)) return true;
			ds_list_add(l_r, gml_action_wait(l__g.h_d));
			break;
		case 97/* fork */: ds_list_add(l_r, gml_action_fork(l__g.h_d, l_out)); break;
		default: return gml_compile_error("Cannot compile " + gml_std_Type_enumConstructor(l_q), gml_std_haxe_enum_tools_getParameter(l_q, 0));
	}
	return false;
}

if (live_enabled) function gml_compile_script(l_q) {
	var l_r = ds_list_create();
	l_q.h_actions = l_r;
	gml_compile_curr_script = l_q;
	gml_compile_curr_break = -1;
	gml_compile_curr_continue = -1;
	var l_e = gml_compile_node(l_q.h_node, l_r, false);
	gml_compile_curr_script = undefined;
	return l_e;
}

if (live_enabled) function gml_compile_program(l_p) {
	gml_compile_curr_program = l_p;
	var l_arr = l_p.h_script_array;
	var l_i;
	var l_num = array_length(l_arr);
	for (l_i = 0; l_i < l_num; l_i++) {
		if (gml_compile_script(l_arr[l_i])) break;
	}
	gml_compile_curr_program = undefined;
	return l_i < l_num;
}

#endregion

#region gml.parser

if (live_enabled) function gml_parser_set_gml23(l_val) {
	gml_parser_gml23 = l_val;
	gml_parser_has_func_literal = l_val;
	gml_parser_has_try_catch = l_val;
	gml_parser_has_constructor = l_val;
	return l_val;
}

if (live_enabled) function gml_parser_error(l_text, l_pos, l_tkl) {
	ds_list_destroy(l_tkl);
	gml_parser_error_text = l_pos.h_to_string() + ": " + l_text;
	gml_parser_error_pos = l_pos;
	return undefined;
}

if (live_enabled) function gml_parser_buf_sub(l_buf, l_str, l_start, l_end) {
	var l_len = l_end - l_start;
	buffer_copy(l_buf, l_start, l_len, l_str, 0);
	buffer_poke(l_str, l_len, buffer_u8, 0);
	buffer_seek(l_str, buffer_seek_start, 0);
	return buffer_read(l_str, buffer_string);
}

if (live_enabled) function gml_parser_run(l_src, l_temStart) {
	if (l_temStart == undefined) l_temStart = -1;
	if (false) throw argument[1];
	var l_z, l_s, l_i, l_n, l_zi, l_row, l_rowStart, l_pos, l_tks;
	var l_out = ds_list_create();
	if (l_temStart >= 0) {
		l_row = gml_parser_tem_row;
		l_rowStart = gml_parser_tem_row_start;
		l_pos = l_temStart;
	} else {
		l_row = 1;
		l_rowStart = 0;
		l_pos = 0;
	}
	var l_code = l_src.h_code;
	var l_len = string_byte_length(l_code);
	var l_buf = gml_parser_src_buf;
	var l_str = gml_parser_str_buf;
	if (l_temStart < 0) {
		if (buffer_get_size(l_str) < l_len) buffer_resize(l_str, l_len);
		buffer_seek(l_str, buffer_seek_start, 0);
		buffer_write(l_str, buffer_string, l_code);
		if (buffer_get_size(l_buf) < l_len) buffer_resize(l_buf, l_len);
		buffer_copy(gml_parser_str_buf, 0, l_len, l_buf, 0);
	}
	var l_sub_buf = gml_parser_buf_sub_buf;
	var l_checkLine = false;
	var l_brackets = 0;
	while (l_pos < l_len) {
		var l_c = buffer_peek(l_buf, l_pos++, buffer_u8);
		switch (l_c) {
			case 9: case 13: case 32: continue;
			case 10:
				if (l_checkLine) {
					l_i = ds_list_size(l_out) - 1;
					var l__g = l_out[|l_i];
					if (l__g.__enumIndex__/* gml_token */ == 0/* header */) {
						if (l__g.h_lb == false) l_out[|l_i] = gml_token_header(l__g.h_d, l__g.h_name, true);
					}
				}
				l_row++;
				l_rowStart = l_pos;
				continue;
		}
		var l_start = l_pos - 1;
		var l_d = new gml_pos(l_src, l_row, l_pos - l_rowStart);
		var l_op;
		switch (l_c) {
			case 59: ds_list_add(l_out, gml_token_semico(l_d)); break;
			case 44: ds_list_add(l_out, gml_token_comma(l_d)); break;
			case 46:
				l_c = buffer_peek(l_buf, l_pos, buffer_u8);
				if (l_c >= 48 && l_c <= 57) {
					while (true) {
						l_pos++;
						l_c = buffer_peek(l_buf, l_pos, buffer_u8);
						if (!(l_c >= 48 && l_c <= 57)) break;
					}
					l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos);
					ds_list_add(l_out, gml_token_number(l_d, gml_std_Std_parseFloat(l_s), l_s));
				} else ds_list_add(l_out, gml_token_period(l_d));
				break;
			case 58: ds_list_add(l_out, gml_token_colon(l_d)); break;
			case 63: ds_list_add(l_out, gml_token_qmark(l_d)); break;
			case 64:
				l_c = buffer_peek(l_buf, l_pos, buffer_u8);
				if (l_c == 34 || l_c == 39) {
					l_pos++;
					l_n = l_pos;
					l_i = buffer_peek(l_buf, l_pos, buffer_u8);
					if (l_c >= 192) {
						if (l_c >= 224) {
							if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
						} else l_rowStart++;
					}
					while (l_i != l_c && l_pos < l_len) {
						if (l_i == 10) {
							l_row++;
							l_rowStart = l_pos;
						}
						l_pos++;
						l_i = buffer_peek(l_buf, l_pos, buffer_u8);
						if (l_c >= 192) {
							if (l_c >= 224) {
								if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
							} else l_rowStart++;
						}
					}
					if (l_pos < l_len) {
						l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_n, l_pos++);
					} else {
						ds_list_destroy(l_out);
						gml_parser_error("Unclosed string", l_d, l_out);
						l_s = undefined;
					}
					ds_list_add(l_out, gml_token_cstring(l_d, l_s));
				} else ds_list_add(l_out, gml_token_at_sign(l_d));
				break;
			case 61:
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
					l_pos++;
					ds_list_add(l_out, gml_token_bin_op(l_d, 64));
				} else ds_list_add(l_out, gml_token_set_op(l_d, -1));
				break;
			case 43:
				switch (buffer_peek(l_buf, l_pos, buffer_u8)) {
					case 61:
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, 16));
						break;
					case 43:
						l_pos++;
						ds_list_add(l_out, gml_token_adjfix(l_d, true));
						break;
					default: ds_list_add(l_out, gml_token_bin_op(l_d, 16));
				}
				break;
			case 45:
				switch (buffer_peek(l_buf, l_pos, buffer_u8)) {
					case 61:
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, 17));
						break;
					case 45:
						l_pos++;
						ds_list_add(l_out, gml_token_adjfix(l_d, false));
						break;
					default: ds_list_add(l_out, gml_token_bin_op(l_d, 17));
				}
				break;
			case 47:
				switch (buffer_peek(l_buf, l_pos, buffer_u8)) {
					case 47:
						l_pos++;
						l_start = l_pos;
						while (l_pos < l_len) {
							l_i = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_i == 10 || l_i == 13) break; else l_pos++;
						}
						break;
					case 42:
						l_pos++;
						while (true) {
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c >= 192) {
								if (l_c >= 224) {
									if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
								} else l_rowStart++;
							}
							if (l_c == 10) {
								l_row++;
								l_rowStart = l_pos;
							}
							l_pos++;
							if (l_pos < l_len) {
								l_z = true;
								if (l_c == 42) {
									if (buffer_peek(l_buf, l_pos, buffer_u8) == 47) l_z = false;
								}
							} else l_z = false;
							if (!l_z) break;
						}
						l_i = l_pos;
						l_z = true;
						l_pos++;
						while (++l_i < l_len) {
							switch (buffer_peek(l_buf, l_i, buffer_u8)) {
								case 9: case 32: continue;
								case 10: case 13: break;
								default: l_z = false;
							}
							break;
						}
						break;
					case 61:
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, 1));
						break;
					default:
						l_op = 1;
						if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
							l_pos++;
							ds_list_add(l_out, gml_token_set_op(l_d, l_op));
						} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				}
				break;
			case 42:
				l_op = 0;
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
					l_pos++;
					ds_list_add(l_out, gml_token_set_op(l_d, l_op));
				} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				break;
			case 37:
				l_op = 2;
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
					l_pos++;
					ds_list_add(l_out, gml_token_set_op(l_d, l_op));
				} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				break;
			case 38:
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 38) {
					l_pos++;
					l_op = 80;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				} else {
					l_op = 49;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				}
				break;
			case 124:
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 124) {
					l_pos++;
					l_op = 96;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				} else {
					l_op = 48;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				}
				break;
			case 94:
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 94) {
					l_pos++;
					l_op = 65;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				} else {
					l_op = 50;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				}
				break;
			case 62:
				switch (buffer_peek(l_buf, l_pos, buffer_u8)) {
					case 61:
						l_pos++;
						ds_list_add(l_out, gml_token_bin_op(l_d, 69));
						break;
					case 62:
						l_pos++;
						l_op = 33;
						if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
							l_pos++;
							ds_list_add(l_out, gml_token_set_op(l_d, l_op));
						} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
						break;
					default: ds_list_add(l_out, gml_token_bin_op(l_d, 68));
				}
				break;
			case 60:
				switch (buffer_peek(l_buf, l_pos, buffer_u8)) {
					case 61:
						l_pos++;
						ds_list_add(l_out, gml_token_bin_op(l_d, 67));
						break;
					case 60:
						l_pos++;
						l_op = 32;
						if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
							l_pos++;
							ds_list_add(l_out, gml_token_set_op(l_d, l_op));
						} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
						break;
					case 62:
						l_pos++;
						l_op = 65;
						if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
							l_pos++;
							ds_list_add(l_out, gml_token_set_op(l_d, l_op));
						} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
						break;
					default: ds_list_add(l_out, gml_token_bin_op(l_d, 66));
				}
				break;
			case 33:
				if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
					l_pos++;
					l_op = 65;
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 61) {
						l_pos++;
						ds_list_add(l_out, gml_token_set_op(l_d, l_op));
					} else ds_list_add(l_out, gml_token_bin_op(l_d, l_op));
				} else ds_list_add(l_out, gml_token_un_op(l_d, 1));
				break;
			case 126: ds_list_add(l_out, gml_token_un_op(l_d, 2)); break;
			case 40: ds_list_add(l_out, gml_token_par_open(l_d)); break;
			case 41: ds_list_add(l_out, gml_token_par_close(l_d)); break;
			case 91: ds_list_add(l_out, gml_token_sqb_open(l_d)); break;
			case 93: ds_list_add(l_out, gml_token_sqb_close(l_d)); break;
			case 123:
				l_brackets++;
				ds_list_add(l_out, gml_token_cub_open(l_d));
				break;
			case 125:
				l_brackets--;
				if (l_temStart >= 0 && l_brackets < 0) {
					if (l_temStart >= 0) {
						gml_parser_tem_end = l_pos;
						gml_parser_tem_row = l_row;
						gml_parser_tem_row_start = l_rowStart;
					} else if (l_src.h___eof == undefined) {
						l_src.h___eof = new gml_pos(l_src, l_row, l_pos - l_rowStart);
					}
					l_n = ds_list_size(l_out);
					l_tks = array_create(l_n);
					for (l_i = 0; l_i < l_n; l_i++) {
						l_tks[@l_i] = l_out[|l_i];
					}
					gml_parser_tokens_found = ds_list_size(l_out);
					ds_list_destroy(l_out);
					return l_tks;
				} else ds_list_add(l_out, gml_token_cub_close(l_d));
				break;
			case 34:
				l_z = true;
				l_c = buffer_peek(l_buf, l_pos, buffer_u8);
				if (l_c >= 192) {
					if (l_c >= 224) {
						if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
					} else l_rowStart++;
				}
				while (l_pos < l_len) {
					switch (l_c) {
						case 34: break;
						case 10: case 13:
							ds_list_destroy(l_out);
							return gml_parser_error("Unclosed string", l_d, l_out);
						case 92:
							if (l_z) {
								l_z = false;
								buffer_seek(l_str, buffer_seek_start, 0);
							}
							l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start + 1, l_pos);
							buffer_write(l_str, buffer_text, l_s);
							l_pos++;
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c >= 192) {
								if (l_c >= 224) {
									if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
								} else l_rowStart++;
							}
							switch (l_c) {
								case 114: buffer_write(l_str, buffer_u8, 13); break;
								case 110: buffer_write(l_str, buffer_u8, 10); break;
								case 116: buffer_write(l_str, buffer_u8, 9); break;
								case 98: buffer_write(l_str, buffer_u8, 8); break;
								case 102: buffer_write(l_str, buffer_u8, 12); break;
								case 118: buffer_write(l_str, buffer_u8, 11); break;
								case 92: buffer_write(l_str, buffer_u8, 92); break;
								case 97: buffer_write(l_str, buffer_u8, 7); break;
								case 10:
									l_row++;
									l_rowStart = l_pos;
									break;
								case 117: case 120:
									l_n = 0;
									if (l_c == 117) l_i = 12; else l_i = 4;
									while (l_i >= 0) {
										l_pos++;
										l_c = buffer_peek(l_buf, l_pos, buffer_u8);
										if (l_c >= 48 && l_c <= 57) {
											l_c -= 48;
										} else if (l_c >= 65 && l_c <= 70) {
											l_c -= 55;
										} else if (l_c >= 97 && l_c <= 102) {
											l_c -= 87;
										} else l_c = 0;
										l_n |= (l_c << l_i);
										l_i -= 4;
									}
									buffer_write(l_str, buffer_u8, l_n);
									break;
								default:
									buffer_write(l_str, buffer_u8, l_c);
									if (l_c == 13) {
										l_pos++;
										if (buffer_peek(l_buf, l_pos, buffer_u8) == 10) buffer_write(l_str, buffer_u8, 10); else l_pos--;
									}
							}
							l_start = l_pos;
							l_pos++;
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c >= 192) {
								if (l_c >= 224) {
									if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
								} else l_rowStart++;
							}
							continue;
						default:
							l_pos++;
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c >= 192) {
								if (l_c >= 224) {
									if (l_c >= 240) l_rowStart += 3; else l_rowStart += 2;
								} else l_rowStart++;
							}
							continue;
					}
					break;
				}
				if (l_pos >= l_len) {
					ds_list_destroy(l_out);
					return gml_parser_error("Unclosed string", l_d, l_out);
				} else l_pos++;
				if (l_z) {
					l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start + 1, l_pos - 1);
				} else {
					l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start + 1, l_pos - 1);
					buffer_write(l_str, buffer_text, l_s);
					buffer_write(l_str, buffer_u8, 0);
					buffer_seek(l_str, buffer_seek_start, 0);
					l_s = buffer_read(l_str, buffer_string);
				}
				ds_list_add(l_out, gml_token_cstring(l_d, l_s));
				break;
			case 39:
				ds_list_destroy(l_out);
				return gml_parser_error("Single quotes are not allowed for strings.", l_d, l_out);
			case 35:
				l_start = l_pos;
				while (l_pos < l_len) {
					l_c = buffer_peek(l_buf, l_pos, buffer_u8);
					if (l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c >= 48 && l_c <= 57) l_pos++; else break;
				}
				switch (gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)) {
					case "define":
						l_start = l_pos;
						while (l_pos < l_len) {
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c == 32 || l_c == 9) l_pos++; else break;
						}
						if ((l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90) && l_pos < l_len) {
							l_start = l_pos;
							l_pos++;
							while (l_pos < l_len) {
								l_c = buffer_peek(l_buf, l_pos, buffer_u8);
								if (l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c >= 48 && l_c <= 57) l_pos++; else break;
							}
							ds_list_add(l_out, gml_token_header(l_d, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos), false));
							l_checkLine = true;
						} else {
							ds_list_destroy(l_out);
							return gml_parser_error("Expected a script name", l_d, l_out);
						}
						break;
					case "macro": ds_list_add(l_out, gml_token_macro(l_d)); break;
					case "endregion": case "region":
						while (l_pos < l_len) {
							l_i = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_i == 10 || l_i == 13) break; else l_pos++;
						}
						break;
					default:
						ds_list_add(l_out, gml_token_hash(l_d));
						l_pos = l_start;
				}
				break;
			case 36:
				l_i = 0;
				while (l_pos < l_len) {
					l_c = buffer_peek(l_buf, l_pos, buffer_u8);
					if (l_c >= 48 && l_c <= 57) {
						l_i = ((l_i << 4) | l_c - 48);
					} else if (l_c >= 97 && l_c <= 102) {
						l_i = ((l_i << 4) | l_c - 87);
					} else if (l_c >= 65 && l_c <= 70) {
						l_i = ((l_i << 4) | l_c - 55);
					} else break;
					l_pos++;
				}
				ds_list_add(l_out, gml_token_number(l_d, l_i, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)));
				break;
			default:
				if (l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c == 95) {
					while (l_pos < l_len) {
						l_c = buffer_peek(l_buf, l_pos, buffer_u8);
						if (l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c >= 48 && l_c <= 57) l_pos++; else break;
					}
					l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos);
					switch (l_s) {
						case "global": ds_list_add(l_out, gml_token_keyword(l_d, 0)); break;
						case "true": ds_list_add(l_out, gml_token_number(l_d, 1, undefined)); break;
						case "false": ds_list_add(l_out, gml_token_number(l_d, 0, undefined)); break;
						case "all": ds_list_add(l_out, gml_token_number(l_d, -3, undefined)); break;
						case "noone": ds_list_add(l_out, gml_token_number(l_d, -4, undefined)); break;
						case "undefined": ds_list_add(l_out, gml_token_undefined(l_d)); break;
						case "begin": ds_list_add(l_out, gml_token_cub_open(l_d)); break;
						case "end": ds_list_add(l_out, gml_token_cub_close(l_d)); break;
						case "globalvar": ds_list_add(l_out, gml_token_keyword(l_d, 1)); break;
						case "var": ds_list_add(l_out, gml_token_keyword(l_d, 2)); break;
						case "enum": ds_list_add(l_out, gml_token_keyword(l_d, 3)); break;
						case "if": ds_list_add(l_out, gml_token_keyword(l_d, 4)); break;
						case "then": ds_list_add(l_out, gml_token_keyword(l_d, 5)); break;
						case "else": ds_list_add(l_out, gml_token_keyword(l_d, 6)); break;
						case "switch": ds_list_add(l_out, gml_token_keyword(l_d, 7)); break;
						case "case": ds_list_add(l_out, gml_token_keyword(l_d, 8)); break;
						case "default": ds_list_add(l_out, gml_token_keyword(l_d, 9)); break;
						case "for": ds_list_add(l_out, gml_token_keyword(l_d, 14)); break;
						case "repeat": ds_list_add(l_out, gml_token_keyword(l_d, 10)); break;
						case "while": ds_list_add(l_out, gml_token_keyword(l_d, 11)); break;
						case "do": ds_list_add(l_out, gml_token_keyword(l_d, 13)); break;
						case "until": ds_list_add(l_out, gml_token_keyword(l_d, 12)); break;
						case "with": ds_list_add(l_out, gml_token_keyword(l_d, 15)); break;
						case "exit": ds_list_add(l_out, gml_token_keyword(l_d, 19)); break;
						case "return": ds_list_add(l_out, gml_token_keyword(l_d, 18)); break;
						case "break": ds_list_add(l_out, gml_token_keyword(l_d, 17)); break;
						case "continue": ds_list_add(l_out, gml_token_keyword(l_d, 16)); break;
						case "try": if (gml_parser_has_try_catch) ds_list_add(l_out, gml_token_keyword(l_d, 21)); else ds_list_add(l_out, gml_token_ident(l_d, l_s)); break;
						case "catch": if (gml_parser_has_try_catch) ds_list_add(l_out, gml_token_keyword(l_d, 22)); else ds_list_add(l_out, gml_token_ident(l_d, l_s)); break;
						case "throw": if (gml_parser_has_try_catch) ds_list_add(l_out, gml_token_keyword(l_d, 23)); else ds_list_add(l_out, gml_token_ident(l_d, l_s)); break;
						case "new": if (gml_parser_has_constructor) ds_list_add(l_out, gml_token_keyword(l_d, 25)); else ds_list_add(l_out, gml_token_ident(l_d, l_s)); break;
						case "function": if (gml_parser_has_func_literal) ds_list_add(l_out, gml_token_keyword(l_d, 24)); else ds_list_add(l_out, gml_token_ident(l_d, l_s)); break;
						case "div": ds_list_add(l_out, gml_token_bin_op(l_d, 3)); break;
						case "mod": ds_list_add(l_out, gml_token_bin_op(l_d, 2)); break;
						case "and": ds_list_add(l_out, gml_token_bin_op(l_d, 80)); break;
						case "or": ds_list_add(l_out, gml_token_bin_op(l_d, 96)); break;
						case "xor": ds_list_add(l_out, gml_token_bin_op(l_d, 65)); break;
						case "not": ds_list_add(l_out, gml_token_un_op(l_d, 1)); break;
						case "argument": ds_list_add(l_out, gml_token_keyword(l_d, 26)); break;
						case "argument_count": ds_list_add(l_out, gml_token_keyword(l_d, 27)); break;
						default:
							if (gml_std_StringTools_startsWith(l_s, "argument")) {
								var l_s_8 = gml_std_string_substring(l_s, 8);
								if (string_digits(l_s_8) == l_s_8) ds_list_add(l_out, gml_token_arg_const(l_d, gml_std_Std_parseInt(l_s_8))); else ds_list_add(l_out, gml_token_ident(l_d, l_s));
							} else ds_list_add(l_out, gml_token_ident(l_d, l_s));
					}
				} else if (l_c >= 48 && l_c <= 57 || l_c == 46) {
					if (buffer_peek(l_buf, l_pos, buffer_u8) == 120) {
						l_pos++;
						l_i = 0;
						while (l_pos < l_len) {
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c >= 48 && l_c <= 57) {
								l_i = ((l_i << 4) | l_c - 48);
							} else if (l_c >= 97 && l_c <= 102) {
								l_i = ((l_i << 4) | l_c - 87);
							} else if (l_c >= 65 && l_c <= 70) {
								l_i = ((l_i << 4) | l_c - 55);
							} else break;
							l_pos++;
						}
						ds_list_add(l_out, gml_token_number(l_d, l_i, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)));
					} else {
						l_pos--;
						l_z = false;
						l_s = undefined;
						while (l_pos < l_len) {
							l_c = buffer_peek(l_buf, l_pos, buffer_u8);
							if (l_c == 46) {
								if (l_z) {
									ds_list_destroy(l_out);
									return gml_parser_error("Extra dot in a number", l_d, l_out);
								} else {
									l_pos++;
									l_c = buffer_peek(l_buf, l_pos, buffer_u8);
									if (l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90) {
										l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos - 1);
										ds_list_add(l_out, gml_token_number(l_d, gml_std_Std_parseFloat(l_s), l_s));
										l_d = new gml_pos(l_src, l_row, l_pos - l_rowStart);
										ds_list_add(l_out, gml_token_period(l_d));
										break;
									}
									l_z = true;
								}
							} else if (l_c >= 48 && l_c <= 57) {
								l_pos++;
							} else break;
						}
						if (l_s == undefined) {
							while (buffer_peek(l_buf, l_start, buffer_u8) == 48) {
								l_start++;
								if (l_start >= l_pos) {
									l_start--;
									break;
								} else if (buffer_peek(l_buf, l_start, buffer_u8) == 46) {
									l_start--;
									break;
								}
							}
							l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos);
							ds_list_add(l_out, gml_token_number(l_d, gml_std_Std_parseFloat(l_s), l_s));
						}
					}
				} else {
					var l_text = "Unexpected character `" + chr(l_c) + "`";
					ds_list_destroy(l_out);
					return gml_parser_error(l_text, l_d, l_out);
				}
		}
	}
	if (l_temStart >= 0) {
		gml_parser_tem_end = l_pos;
		gml_parser_tem_row = l_row;
		gml_parser_tem_row_start = l_rowStart;
	} else if (l_src.h___eof == undefined) {
		l_src.h___eof = new gml_pos(l_src, l_row, l_pos - l_rowStart);
	}
	l_n = ds_list_size(l_out);
	l_tks = array_create(l_n);
	for (l_i = 0; l_i < l_n; l_i++) {
		l_tks[@l_i] = l_out[|l_i];
	}
	gml_parser_tokens_found = ds_list_size(l_out);
	ds_list_destroy(l_out);
	return l_tks;
}

#endregion

#region gml.program

if (live_enabled) function gml_program(l_sources) constructor {
	var this = self;
	static h_sources = undefined;
	static h_script_array = undefined;
	static h_script_map = undefined;
	static h_enum_array = undefined;
	static h_enum_map = undefined;
	static h_macro_map = undefined;
	static h_wait_list = undefined;
	static h_wait_list_swap = undefined;
	static h_callback = undefined;
	static h_time_tag = undefined;
	static h_error_text = undefined;
	static h_error_pos = undefined;
	static h_is_ready = undefined;
	static h_tag = undefined;
	static h_live_ident = undefined;
	static h_error = function(l_text, l_d) {
		var this = self;
		var l_pos = l_d;
		self.h_error_text = l_pos.h_to_string() + " " + l_text;
		self.h_error_pos = l_pos;
		return true;
	}
	static h_destroy = function() {
		var this = self;
		var l__g = 0;
		var l__g1 = self.h_script_array;
		while (l__g < array_length(l__g1)) {
			var l_q = l__g1[l__g];
			l__g++;
			l_q.h_destroy();
		}
		self.h_script_array = undefined;
		self.h_script_map = undefined;
		self.h_enum_map = undefined;
		self.h_macro_map = undefined;
		ds_list_destroy(self.h_wait_list);
		self.h_wait_list = undefined;
		ds_list_destroy(self.h_wait_list_swap);
		self.h_wait_list_swap = undefined;
	}
	static h_call_v = function(l_name, l_args1, l_copy) {
		var this = self;
		if (l_copy == undefined) l_copy = true;
		if (false) throw argument[2];
		if (self.h_script_map.h_exists(l_name)) {
			var l_scr = self.h_script_map.h_get(l_name);
			var l_locals = array_create(l_scr.h_locals);
			if (l_copy) l_args1 = gml_value_list_copy(l_args1);
			var l_argc = array_length(l_args1);
			var l_scrArgc = l_scr.h_arguments;
			if (l_argc < l_scrArgc) {
				array_resize(l_args1, l_scrArgc);
				var l_i = l_argc;
				for (var l__g1 = l_scrArgc; l_i < l__g1; l_i++) {
					l_args1[@l_i] = undefined;
				}
			}
			var l_th = new gml_thread(self, l_scr.h_actions, l_args1, l_locals);
			l_th.h_callback = self.h_callback;
			l_th.h_time_tag = self.h_time_tag;
			l_th.h_exec();
			return l_th;
		} else return undefined;
	}
	static h_call = function(l_name) {
		var this = self;
		if (false) throw argument[argument_count - 1];
		var l_argc = (argument_count - 1);
		var l_args2 = array_create(l_argc);
		var l_i = 0;
		for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
			l_args2[@l_i] = argument[l_i + 1];
		}
		var l_copy = false;
		if (l_copy == undefined) l_copy = true;
		if (self.h_script_map.h_exists(l_name)) {
			var l_scr = self.h_script_map.h_get(l_name);
			var l_locals = array_create(l_scr.h_locals);
			if (l_copy) l_args2 = gml_value_list_copy(l_args2);
			var l_argc = array_length(l_args2);
			var l_scrArgc = l_scr.h_arguments;
			if (l_argc < l_scrArgc) {
				array_resize(l_args2, l_scrArgc);
				var l_i = l_argc;
				for (var l__g1 = l_scrArgc; l_i < l__g1; l_i++) {
					l_args2[@l_i] = undefined;
				}
			}
			var l_th = new gml_thread(self, l_scr.h_actions, l_args2, l_locals);
			l_th.h_callback = self.h_callback;
			l_th.h_time_tag = self.h_time_tag;
			l_th.h_exec();
			return l_th;
		} else return undefined;
	}
	static h_call_id_v = function(l_scriptId, l_args1, l_copy) {
		var this = self;
		if (l_copy == undefined) l_copy = true;
		if (false) throw argument[2];
		l_scriptId -= gml_script_index_offset;
		if (l_scriptId >= 0 && l_scriptId < array_length(self.h_script_array)) {
			var l_scr = self.h_script_array[l_scriptId];
			var l_locals = array_create(l_scr.h_locals);
			if (l_copy) l_args1 = gml_value_list_copy(l_args1);
			if (array_length(l_args1) < l_scr.h_arguments) array_resize(l_args1, l_scr.h_arguments);
			var l_th = new gml_thread(self, l_scr.h_actions, l_args1, l_locals);
			l_th.h_callback = self.h_callback;
			l_th.h_time_tag = self.h_time_tag;
			l_th.h_exec();
			return l_th;
		} else return undefined;
	}
	static h_call_id = function(l_scriptId) {
		var this = self;
		if (false) throw argument[argument_count - 1];
		var l_argc = (argument_count - 1);
		var l_args2 = array_create(l_argc);
		var l_i = 0;
		for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
			l_args2[@l_i] = argument[l_i + 1];
		}
		var l_scriptId1 = l_scriptId;
		var l_copy = false;
		if (l_copy == undefined) l_copy = true;
		l_scriptId1 -= gml_script_index_offset;
		if (l_scriptId1 >= 0 && l_scriptId1 < array_length(self.h_script_array)) {
			var l_scr = self.h_script_array[l_scriptId1];
			var l_locals = array_create(l_scr.h_locals);
			if (l_copy) l_args2 = gml_value_list_copy(l_args2);
			if (array_length(l_args2) < l_scr.h_arguments) array_resize(l_args2, l_scr.h_arguments);
			var l_th = new gml_thread(self, l_scr.h_actions, l_args2, l_locals);
			l_th.h_callback = self.h_callback;
			l_th.h_time_tag = self.h_time_tag;
			l_th.h_exec();
			return l_th;
		} else return undefined;
	}
	static h_print = function() {
		var this = self;
		var l_r = "";
		var l_i = 0;
		for (var l__g1 = array_length(self.h_script_array); l_i < l__g1; l_i++) {
			if (l_i > 0) l_r += "\n";
			var l_scr = self.h_script_array[l_i];
			l_r += "#define " + l_scr.h_name + "\n" + gml_action_list_print(l_scr.h_actions);
		}
		return l_r;
	}
	static h_update = function(l_dt, l_timeTag) {
		var this = self;
		if (false) throw argument[1];
		var l_list = self.h_wait_list;
		var l_n = ds_list_size(l_list);
		if (l_n > 0) {
			var l_swap = self.h_wait_list_swap;
			self.h_wait_list = l_swap;
			var l_i = 0;
			while (l_i < l_n) {
				var l_th = l_list[|l_i];
				if (l_th.h_time_tag == l_timeTag) {
					var l_t = l_th.h_wait_time - l_dt;
					if (l_t <= 0) {
						l_th.h_wait_time = 0;
						ds_list_delete(l_list, l_i);
						l_th.h_exec();
						l_n--;
					} else {
						l_th.h_wait_time = l_t;
						l_i++;
					}
				} else l_i++;
			}
			l_n = ds_list_size(l_swap);
			for (l_i = 0; l_i < l_n; l_i++) {
				ds_list_add(l_list, l_swap[|l_i]);
			}
			ds_list_clear(l_swap);
			self.h_wait_list = l_list;
		}
	}
	static h_change_time_tags = function(l_fromTag, l_toTag) {
		var this = self;
		var l_list = self.h_wait_list;
		var l_n = ds_list_size(l_list);
		for (var l_i = 0; l_i < l_n; l_i++) {
			var l_th = l_list[|l_i];
			if (l_th.h_time_tag == l_fromTag) l_th.h_time_tag = l_toTag;
		}
	}
	static h_seek = function(l_f, l_st) {
		var this = self;
		if (l_st == undefined) l_st = false;
		if (false) throw argument[1];
		var l_w;
		if (l_st) l_w = ds_list_create(); else l_w = undefined;
		gml_program_seek_func = l_f;
		var l_m = self.h_script_array;
		var l_n = array_length(l_m);
		var l_i = 0;
		while (l_i < l_n) {
			var l_scr = l_m[l_i];
			gml_program_seek_script = l_scr;
			var l_scrNode = l_scr.h_node;
			if (l_scrNode != undefined && l_f(l_scrNode, l_w)) break; else l_i++;
		}
		gml_program_seek_script = undefined;
		gml_program_seek_func = undefined;
		if (l_st) ds_list_destroy(l_w);
		return l_i < l_n;
	}
	static h_check = function() {
		var this = self;
		gml_program_seek_inst = self;
		if (self.h_seek(gml_seek_arguments_proc, false)) return true;
		if (self.h_seek(gml_seek_locals_proc, false)) return true;
		if (self.h_seek(gml_seek_idents_proc, true)) return true;
		if (self.h_seek(gml_seek_fields_proc, false)) return true;
		if (self.h_seek(gml_seek_calls_proc, false)) return true;
		if (gml_seek_enum_values_proc()) return true;
		if (self.h_seek(gml_seek_enum_fields_proc, false)) return true;
		if (gml_seek_eval_opt()) return true;
		if (self.h_seek(gml_seek_self_fields_proc, false)) return true;
		if (self.h_seek(gml_seek_alarms_proc, false)) return true;
		if (self.h_seek(gml_seek_adjfix_proc, true)) return true;
		if (self.h_seek(gml_seek_set_op_proc, true)) return true;
		gml_program_seek_inst = undefined;
		return false;
	}
	static h_eval_value = undefined;
	static h_eval = function(l_q) {
		var this = self;
		var l_r, l_v;
		var l__g = l_q;
		switch (l__g.__enumIndex__/* gml_node */) {
			case 1/* number */: l_r = l__g.h_value; break;
			case 2/* cstring */: l_r = l__g.h_value; break;
			case 41/* field */:
				var l__hx_tmp = l__g.h_x;
				if (l__hx_tmp.__enumIndex__/* gml_node */ == 7/* ident */) {
					var l_f = l__g.h_fd;
					var l_s = l__hx_tmp.h_id;
					var l_d = l__g.h_d;
					var l_e = self.h_enum_map.h_get(l_s);
					if (l_e != undefined) {
						var l_c = l_e.h_ctr_map.h_get(l_f);
						if (l_c != undefined) {
							l_r = l_c.h_value;
							if (l_r == undefined) return self.h_error("Value of " + l_s + "." + l_f + " is not known here", l_d);
						} else return self.h_error("Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
					} else return self.h_error("Could not find enum " + l_s, l_d);
				} else return self.h_error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
				break;
			case 30/* bin_op */:
				if (self.h_eval(l__g.h_a)) return true;
				l_r = self.h_eval_value;
				if (self.h_eval(l__g.h_b)) return true;
				l_v = self.h_eval_value;
				switch (l__g.h_o) {
					case 16: l_r += l_v; break;
					case 17: l_r -= l_v; break;
					case 0: l_r *= l_v; break;
					case 1: l_r /= l_v; break;
					case 2: l_r %= l_v; break;
					case 3: l_r = (l_r div l_v); break;
					case 49: l_r &= l_v; break;
					case 48: l_r |= l_v; break;
					case 50: l_r ^= l_v; break;
					case 32: l_r = l_r << l_v; break;
					case 33: l_r = l_r >> l_v; break;
					default: return self.h_error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
				}
				break;
			default: return self.h_error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
		}
		self.h_eval_value = l_r;
		return false;
	}
	var this = self;
	self.h_is_ready = false;
	self.h_error_text = undefined;
	self.h_time_tag = undefined;
	self.h_callback = undefined;
	self.h_wait_list_swap = ds_list_create();
	self.h_wait_list = ds_list_create();
	self.h_macro_map = new haxe_ds_string_map();
	self.h_enum_map = new haxe_ds_string_map();
	self.h_enum_array = [];
	self.h_script_map = new haxe_ds_string_map();
	self.h_script_array = [];
	self.h_sources = undefined;
	self.h_sources = l_sources;
	var l_builders = [];
	var l__g = 0;
	while (l__g < array_length(l_sources)) {
		var l_src = l_sources[l__g];
		l__g++;
		var l_b = new gml_builder(self, l_src);
		gml_std_gml_internal_ArrayImpl_push(l_builders, l_b);
		if (l_b.h_error_text == undefined) {
			var l_main = l_src.h_main;
			var l__g1 = 0;
			var l__g2 = l_b.h_scripts;
			while (l__g1 < array_length(l__g2)) {
				var l_scr = l__g2[l__g1];
				l__g1++;
				if (self.h_script_map.h_exists(l_scr.h_name)) {
					if (l_scr.h_name == l_main) {
						var l__g3 = self.h_script_map.h_get(l_main).h_node;
						var l_tmp;
						if (l__g3.__enumIndex__/* gml_node */ == 92/* block */) l_tmp = array_length(l__g3.h_nodes) == 0; else l_tmp = false;
						if (l_tmp) {
							var l_w = self.h_script_array;
							var l_i = 0;
							var l_n = array_length(l_w);
							while (l_i < l_n) {
								if (l_w[l_i].h_name == l_main) {
									while (++l_i < l_n) {
										l_w[@l_i - 1] = l_w[l_i];
									}
									l_w[@l_n - 1] = l_scr;
								} else l_i++;
							}
							self.h_script_map.h_set(l_scr.h_name, l_scr);
						} else {
							self.h_error("Cannot override prefix-script \"" + l_main + "\" because it is not empty", l_scr.h_pos);
							return 0;
						}
					} else {
						self.h_error("Script " + l_scr.h_name + " is already defined at " + self.h_script_map.h_get(l_scr.h_name).h_pos.h_to_string(), l_scr.h_pos);
						return 0;
					}
				} else {
					gml_std_gml_internal_ArrayImpl_push(self.h_script_array, l_scr);
					self.h_script_map.h_set(l_scr.h_name, l_scr);
				}
			}
			var l__g5 = 0;
			var l__g6 = l_b.h_enums;
			while (l__g5 < array_length(l__g6)) {
				var l_e = l__g6[l__g5];
				l__g5++;
				gml_std_gml_internal_ArrayImpl_push(self.h_enum_array, l_e);
				self.h_enum_map.h_set(l_e.h_name, l_e);
			}
			var l_mcrNames = l_b.h_macro_names;
			var l_mcrNodes = l_b.h_macro_nodes;
			var l_mcrMap = self.h_macro_map;
			var l_i1 = 0;
			for (var l__g8 = array_length(l_mcrNames); l_i1 < l__g8; l_i1++) {
				l_mcrMap.h_set(l_mcrNames[l_i1], l_mcrNodes[l_i1]);
			}
		} else if (l_src.h_opt) {
			var l_errorNext = l_b.h_error_text;
			if (self.h_error_text != undefined) self.h_error_text += "\n" + l_errorNext; else self.h_error_text = l_errorNext;
		} else {
			self.h_error_text = l_b.h_error_text;
			self.h_error_pos = l_b.h_error_pos;
			return 0;
		}
	}
	var l_i;
	var l_n = array_length(self.h_script_array);
	for (l_i = 0; l_i < l_n; l_i++) {
		self.h_script_array[l_i].h_index = gml_script_index_offset + l_i;
	}
	if (self.h_check()) {
		gml_program_seek_inst = undefined;
		return 0;
	} else if (gml_compile_program(self)) {
		if (self.h_error_text != undefined) self.h_error_text += "\n" + gml_compile_error_text; else self.h_error_text = gml_compile_error_text;
		self.h_error_pos = gml_compile_error_pos;
		return 0;
	}
	self.h_is_ready = true;
	static __class__ = mt_gml_program;
}
if (live_enabled) mt_gml_program.h_constructor = gml_program;

if (live_enabled) function gml_program_seek_error(l_msg, l_d) {
	return gml_program_seek_inst.h_error(l_msg, l_d);
}

#endregion

#region gml_std.haxe_enum_tools

if (live_enabled) function gml_std_haxe_enum_tools_getParameter(l_q, l_i) {
	if (is_struct(l_q)) {
		var l_params = l_q.__enumParams__;
		return variable_struct_get(l_q, l_params[l_i]);
	} else if (is_array(l_q)) {
		return l_q[l_i + 1];
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if (live_enabled) function gml_std_haxe_enum_tools_getParameterCount(l_q) {
	if (is_struct(l_q)) {
		return array_length(l_q.__enumParams__);
	} else if (is_array(l_q)) {
		return array_length(l_q) - 1;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if (live_enabled) function gml_std_haxe_enum_tools_setParameter(l_q, l_i, l_value) {
	if (is_struct(l_q)) {
		var l_params = l_q.__enumParams__;
		variable_struct_set(l_q, l_params[l_i], l_value);
	} else if (is_array(l_q)) {
		l_q[@l_i + 1] = l_value;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if (live_enabled) function gml_std_haxe_enum_tools_setTo(l_q, l_v) {
	if (is_struct(l_q)) {
		var l_qp = l_q.__enumParams__;
		var l_vp = l_v.__enumParams__;
		var l_n = array_length(l_qp);
		var l_i = -1;
		while (++l_i < l_n) {
			variable_struct_set(l_q, l_qp[l_i], undefined);
		}
		l_i = -1;
		l_n = array_length(l_vp);
		while (++l_i < l_n) {
			variable_struct_set(l_q, l_vp[l_i], variable_struct_get(l_v, l_vp[l_i]));
		}
		l_q.__enumParams__ = l_vp;
		l_q.__enumIndex__ = l_v.__enumIndex__;
	} else if (is_array(l_q)) {
		var l_qx = l_q;
		var l_vx = l_v;
		var l_n = array_length(l_vx);
		if (array_length(l_qx) != l_n) array_resize(l_qx, l_n);
		array_copy(l_qx, 0, l_vx, 0, l_n);
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

#endregion

#region gml_std.Std

if (live_enabled) function gml_std_Std_stringify(l_value) {
	if (l_value == undefined) return "null";
	if (is_string(l_value)) return l_value;
	var l_n, l_i, l_s;
	if (is_struct(l_value)) {
		var l_e = variable_struct_get(l_value, "__enum__");
		if (l_e == undefined) return string(l_value);
		var l_ects = l_e.h_constructors;
		if (l_ects != undefined) {
			l_i = l_value.__enumIndex__;
			if (l_i >= 0 && l_i < array_length(l_ects)) l_s = l_ects[l_i]; else l_s = "?";
		} else {
			l_s = instanceof(l_value);
			if (string_copy(l_s, 1, 3) == "mc_") l_s = string_delete(l_s, 1, 3);
			l_n = string_length(l_e.h_name);
			if (string_copy(l_s, 1, l_n) == l_e.h_name) l_s = string_delete(l_s, 1, l_n + 1);
		}
		l_s += "(";
		var l_fields = l_value.__enumParams__;
		l_n = array_length(l_fields);
		for (l_i = -1; ++l_i < l_n; l_s += gml_std_Std_stringify(variable_struct_get(l_value, l_fields[l_i]))) {
			if (l_i > 0) l_s += ", ";
		}
		return l_s + ")";
	}
	if (is_real(l_value)) {
		l_s = string_format(l_value, 0, 16);
		if (os_browser != -1) {
			l_n = string_length(l_s);
			l_i = l_n;
			while (l_i > 0) {
				switch (string_ord_at(l_s, l_i)) {
					case 48:
						l_i--;
						continue;
					case 46: l_i--; break;
				}
				break;
			}
		} else {
			l_n = string_byte_length(l_s);
			l_i = l_n;
			while (l_i > 0) {
				switch (string_byte_at(l_s, l_i)) {
					case 48:
						l_i--;
						continue;
					case 46: l_i--; break;
				}
				break;
			}
		}
		return string_copy(l_s, 1, l_i);
	}
	return string(l_value);
}

if (live_enabled) function gml_std_Std_parseFloat(l_s) {
	var l_l = string_length(l_s);
	var l_n = string_length(string_digits(l_s));
	var l_p = string_pos(".", l_s);
	var l_e = string_pos("e", l_s);
	if (l_e == 0) l_e = string_pos("E", l_s);
	switch (l_e) {
		case 0: break;
		case 1: return NaN;
		case 2: if (l_p > 0) return NaN; break;
		default: if (l_p > 0 && l_e < l_p) return NaN;
	}
	if (l_e != 0 && l_e < l_l - 1) switch (string_ord_at(l_s, l_e + 1)) {
		case 43: case 45: l_l--; break;
	}
	if (l_n && l_n == l_l - (string_ord_at(l_s, 1) == 45) - (l_p != 0) - (l_e != 0)) return real(l_s); else return NaN;
}

if (live_enabled) function gml_std_Std_parseInt(l_value) {
	var l_n = string_length(string_digits(l_value));
	if (l_n && l_n == string_length(l_value) - (string_ord_at(l_value, 1) == 45)) return real(l_value); else return undefined;
}

#endregion

#region gml_std.string

if (live_enabled) function gml_std_string_pos_ext(this, l_sub, l_startPos) {
	if (l_startPos == undefined) l_startPos = 0;
	if (false) throw argument[1];
	var l_out = string_pos(l_sub, (l_startPos > 0 ? string_delete(this, 1, l_startPos) : this));
	if (l_out > 0) return l_out + l_startPos - 1; else return -1;
}

if (live_enabled) function gml_std_string_pos_last(this, l_sub, l_startPos) {
	if (false) throw argument[1];
	var l_out = -1;
	if (l_startPos == undefined) l_startPos = string_length(this);
	while (true) {
		var l_p = gml_std_string_pos_ext(this, l_sub, l_out + 1);
		if (l_p == -1 || l_p > l_startPos) break;
		l_out = l_p;
	}
	return l_out;
}

if (live_enabled) function gml_std_string_split(this, l_del) {
	var l_str = this;
	var l_num = 0;
	var l_arr = array_create(string_count(l_del, l_str) + 1);
	for (var l_pos = string_pos(l_del, l_str); l_pos > 0; l_pos = string_pos(l_del, l_str)) {
		l_arr[@l_num] = string_copy(l_str, 1, l_pos - 1);
		l_num++;
		l_str = string_delete(l_str, 1, l_pos);
	}
	l_arr[@l_num] = l_str;
	return l_arr;
}

if (live_enabled) function gml_std_string_substr(this, l_pos, l_len) {
	if (false) throw argument[1];
	if (l_pos < 0) l_pos += string_length(this);
	if (l_len == undefined) return string_delete(this, 1, l_pos); else return string_copy(this, 1 + l_pos, l_len);
}

if (live_enabled) function gml_std_string_substring(this, l_start, l_end) {
	if (false) throw argument[1];
	if (l_end == undefined) {
		if (l_start > 0) return string_delete(this, 1, l_start); else return this;
	}
	if (l_start < 0) l_start = 0;
	if (l_end < 0) l_end = 0;
	if (l_start > l_end) {
		var l_tmp = l_start;
		l_start = l_end;
		l_end = l_tmp;
	}
	var l_len = string_length(this);
	if (l_start >= l_len) {
		return "";
	} else if (l_end >= l_len) {
		if (l_start > 0) return string_delete(this, 1, l_start); else return this;
	} else return string_copy(this, l_start + 1, l_end - l_start);
}

#endregion

#region gml_std.StringTools

if (live_enabled) function gml_std_StringTools_startsWith(l_s, l_start) {
	var l_n = string_length(l_start);
	return string_length(l_s) >= l_n && string_copy(l_s, 1, l_n) == l_start;
}

if (live_enabled) function gml_std_StringTools_trim(l_s) {
	var l_char;
	var l_len = string_length(l_s);
	var l_till = l_len;
	while (l_till > 0) {
		l_char = string_ord_at(l_s, l_till);
		if (l_char == 32 || l_char > 8 && l_char < 14) l_till--; else break;
	}
	if (l_till < l_len) l_s = string_copy(l_s, 1, l_till);
	var l_start = 1;
	while (l_start <= l_till) {
		l_char = string_ord_at(l_s, l_start);
		if (l_char == 32 || l_char > 8 && l_char < 14) l_start++; else break;
	}
	if (l_start > 1) l_s = string_delete(l_s, 1, l_start - 1);
	return l_s;
}

#endregion

#region gml_std.Type

if (live_enabled) function gml_std_Type_getEnumConstructs(l_e) {
	return gml_std_gml_internal_ArrayImpl_copy(l_e.h_constructors);
}

if (live_enabled) function gml_std_Type_enumConstructor(l_e) {
	var l_et, l_i;
	var l_isStruct1 = is_struct(l_e);
	if (l_isStruct1) {
		l_et = l_e.__enum__;
		l_i = l_e.__enumIndex__;
	} else return string(l_e);
	var l_cs = l_et.h_constructors;
	if (l_cs != undefined && l_i >= 0 && l_i < array_length(l_cs)) {
		return l_cs[l_i];
	} else {
		if (l_isStruct1) {
			var l_s = instanceof(l_e);
			if (string_copy(l_s, 1, 3) == "mc_") l_s = string_delete(l_s, 1, 3);
			l_i = string_length(l_et.h_name);
			if (string_copy(l_s, 1, l_i) == l_et.h_name && string_ord_at(l_s, l_i + 1) == 95) l_s = string_delete(l_s, 1, l_i + 1);
			return l_s;
		}
		return string(l_e);
	}
}

#endregion

#region gml.enum

if (live_enabled) function gml_enum(l_name, l_pos) constructor {
	var this = self;
	static h_name = undefined;
	static h_pos = undefined;
	static h_ctr_list = undefined;
	static h_ctr_map = undefined;
	static h_add = function(l_name, l_val) {
		var this = self;
		var l_ctr = new gml_enum_ctr(l_name, self.h_pos, gml_node_number(self.h_pos, l_val, string(l_val)));
		l_ctr.h_value = l_val;
		gml_std_gml_internal_ArrayImpl_push(self.h_ctr_list, l_ctr);
		self.h_ctr_map.h_set(l_name, l_ctr);
	}
	static h_print = function() {
		var this = self;
		var l_r = "(enum " + self.h_name + " { ";
		var l_z = false;
		var l__g = 0;
		var l__g1 = self.h_ctr_list;
		while (l__g < array_length(l__g1)) {
			var l_ctr = l__g1[l__g];
			l__g++;
			if (l_z) l_r += ", "; else l_z = true;
			l_r += l_ctr.h_name + " = " + string(l_ctr.h_value);
		}
		return l_r + " })";
	}
	var this = self;
	self.h_ctr_map = new haxe_ds_string_map();
	self.h_ctr_list = [];
	self.h_name = l_name;
	self.h_pos = l_pos;
	//
}

if (live_enabled) function gml_enum_create_builtin(l_name) {
	var l_e = new gml_enum(l_name, new gml_pos(new gml_source("built-in", ""), 0, 0));
	gml_enum_map.h_set(l_name, l_e);
	return l_e;
}

#endregion

#region gml.enum_ctr

if (live_enabled) function gml_enum_ctr(l_name, l_pos, l_node) constructor {
	var this = self;
	static h_name = undefined;
	static h_pos = undefined;
	static h_node = undefined;
	static h_value = undefined;
	var this = self;
	self.h_name = l_name;
	self.h_pos = l_pos;
	self.h_node = l_node;
	static __class__ = mt_gml_enum_ctr;
}
if (live_enabled) mt_gml_enum_ctr.h_constructor = gml_enum_ctr;

#endregion

#region gml.macro

function gml_macro(l_name, l_node, l_isExpr, l_isStat) constructor {
	var this = self;
	static h_name = undefined;
	static h_node = undefined;
	static h_is_expr = undefined;
	static h_is_stat = undefined;
	var this = self;
	if (live_enabled) {
		self.h_name = l_name;
		self.h_node = l_node;
		self.h_is_expr = l_isExpr;
		self.h_is_stat = l_isStat;
	}
	static __class__ = mt_gml_macro;
}
if (live_enabled) mt_gml_macro.h_constructor = gml_macro;

#endregion

#region gml.node

if (live_enabled) function mc_gml_node() constructor {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_node;
}

if (live_enabled) function mc_gml_node_undefined() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 0;
}

if (live_enabled) function gml_node_undefined(l_h_d) {
	var this = new mc_gml_node_undefined();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_number() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_value", "h_src"];
	static __enumIndex__ = 1;
}

if (live_enabled) function gml_node_number(l_h_d, l_h_value, l_h_src) {
	var this = new mc_gml_node_number();
	this.h_d = l_h_d;
	this.h_value = l_h_value;
	this.h_src = l_h_src;
	return this
}

if (live_enabled) function mc_gml_node_cstring() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_value"];
	static __enumIndex__ = 2;
}

if (live_enabled) function gml_node_cstring(l_h_d, l_h_value) {
	var this = new mc_gml_node_cstring();
	this.h_d = l_h_d;
	this.h_value = l_h_value;
	return this
}

if (live_enabled) function mc_gml_node_enum_ctr() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_e", "h_ctr"];
	static __enumIndex__ = 3;
}

if (live_enabled) function gml_node_enum_ctr(l_h_d, l_h_e, l_h_ctr) {
	var this = new mc_gml_node_enum_ctr();
	this.h_d = l_h_d;
	this.h_e = l_h_e;
	this.h_ctr = l_h_ctr;
	return this
}

if (live_enabled) function mc_gml_node_array_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_values"];
	static __enumIndex__ = 4;
}

if (live_enabled) function gml_node_array_decl(l_h_d, l_h_values) {
	var this = new mc_gml_node_array_decl();
	this.h_d = l_h_d;
	this.h_values = l_h_values;
	return this
}

if (live_enabled) function mc_gml_node_object_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_keys", "h_values"];
	static __enumIndex__ = 5;
}

if (live_enabled) function gml_node_object_decl(l_h_d, l_h_keys, l_h_values) {
	var this = new mc_gml_node_object_decl();
	this.h_d = l_h_d;
	this.h_keys = l_h_keys;
	this.h_values = l_h_values;
	return this
}

if (live_enabled) function mc_gml_node_ensure_array() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_expr"];
	static __enumIndex__ = 6;
}

if (live_enabled) function gml_node_ensure_array(l_h_d, l_h_expr) {
	var this = new mc_gml_node_ensure_array();
	this.h_d = l_h_d;
	this.h_expr = l_h_expr;
	return this
}

if (live_enabled) function mc_gml_node_ident() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 7;
}

if (live_enabled) function gml_node_ident(l_h_d, l_h_id) {
	var this = new mc_gml_node_ident();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_self() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 8;
}

if (live_enabled) function gml_node_self(l_h_d) {
	var this = new mc_gml_node_self();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_other() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 9;
}

if (live_enabled) function gml_node_other(l_h_d) {
	var this = new mc_gml_node_other();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_global_ref() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 10;
}

if (live_enabled) function gml_node_global_ref(l_h_d) {
	var this = new mc_gml_node_global_ref();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_script() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_ref"];
	static __enumIndex__ = 11;
}

if (live_enabled) function gml_node_script(l_h_d, l_h_ref) {
	var this = new mc_gml_node_script();
	this.h_d = l_h_d;
	this.h_ref = l_h_ref;
	return this
}

if (live_enabled) function mc_gml_node_native_script() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_name", "h_id"];
	static __enumIndex__ = 12;
}

if (live_enabled) function gml_node_native_script(l_h_d, l_h_name, l_h_id) {
	var this = new mc_gml_node_native_script();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_const() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 13;
}

if (live_enabled) function gml_node_const(l_h_d, l_h_id) {
	var this = new mc_gml_node_const();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_arg_const() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 14;
}

if (live_enabled) function gml_node_arg_const(l_h_d, l_h_id) {
	var this = new mc_gml_node_arg_const();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_arg_index() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 15;
}

if (live_enabled) function gml_node_arg_index(l_h_d, l_h_id) {
	var this = new mc_gml_node_arg_index();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_arg_count() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 16;
}

if (live_enabled) function gml_node_arg_count(l_h_d) {
	var this = new mc_gml_node_arg_count();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_call() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_args"];
	static __enumIndex__ = 17;
}

if (live_enabled) function gml_node_call(l_h_d, l_h_x, l_h_args) {
	var this = new mc_gml_node_call();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_script() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_name", "h_args"];
	static __enumIndex__ = 18;
}

if (live_enabled) function gml_node_call_script(l_h_d, l_h_name, l_h_args) {
	var this = new mc_gml_node_call_script();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_script_at() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_inst", "h_script", "h_args"];
	static __enumIndex__ = 19;
}

if (live_enabled) function gml_node_call_script_at(l_h_d, l_h_inst, l_h_script, l_h_args) {
	var this = new mc_gml_node_call_script_at();
	this.h_d = l_h_d;
	this.h_inst = l_h_inst;
	this.h_script = l_h_script;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_script_id() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_index", "h_args"];
	static __enumIndex__ = 20;
}

if (live_enabled) function gml_node_call_script_id(l_h_d, l_h_index, l_h_args) {
	var this = new mc_gml_node_call_script_id();
	this.h_d = l_h_d;
	this.h_index = l_h_index;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_script_with_array() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_index", "h_array"];
	static __enumIndex__ = 21;
}

if (live_enabled) function gml_node_call_script_with_array(l_h_d, l_h_index, l_h_array) {
	var this = new mc_gml_node_call_script_with_array();
	this.h_d = l_h_d;
	this.h_index = l_h_index;
	this.h_array = l_h_array;
	return this
}

if (live_enabled) function mc_gml_node_call_field() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_inst", "h_prop", "h_args"];
	static __enumIndex__ = 22;
}

if (live_enabled) function gml_node_call_field(l_h_d, l_h_inst, l_h_prop, l_h_args) {
	var this = new mc_gml_node_call_field();
	this.h_d = l_h_d;
	this.h_inst = l_h_inst;
	this.h_prop = l_h_prop;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_func() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_funcName", "h_args"];
	static __enumIndex__ = 23;
}

if (live_enabled) function gml_node_call_func(l_h_d, l_h_funcName, l_h_args) {
	var this = new mc_gml_node_call_func();
	this.h_d = l_h_d;
	this.h_funcName = l_h_funcName;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_call_func_at() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_s", "h_args"];
	static __enumIndex__ = 24;
}

if (live_enabled) function gml_node_call_func_at(l_h_d, l_h_x, l_h_s, l_h_args) {
	var this = new mc_gml_node_call_func_at();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_s = l_h_s;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_construct() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_ctr", "h_args"];
	static __enumIndex__ = 25;
}

if (live_enabled) function gml_node_construct(l_h_d, l_h_ctr, l_h_args) {
	var this = new mc_gml_node_construct();
	this.h_d = l_h_d;
	this.h_ctr = l_h_ctr;
	this.h_args = l_h_args;
	return this
}

if (live_enabled) function mc_gml_node_func_literal() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_name"];
	static __enumIndex__ = 26;
}

if (live_enabled) function gml_node_func_literal(l_h_d, l_h_name) {
	var this = new mc_gml_node_func_literal();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	return this
}

if (live_enabled) function mc_gml_node_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_inc"];
	static __enumIndex__ = 27;
}

if (live_enabled) function gml_node_prefix(l_h_d, l_h_x, l_h_inc) {
	var this = new mc_gml_node_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_inc"];
	static __enumIndex__ = 28;
}

if (live_enabled) function gml_node_postfix(l_h_d, l_h_x, l_h_inc) {
	var this = new mc_gml_node_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_un_op() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_o"];
	static __enumIndex__ = 29;
}

if (live_enabled) function gml_node_un_op(l_h_d, l_h_x, l_h_o) {
	var this = new mc_gml_node_un_op();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_node_bin_op() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_a", "h_b"];
	static __enumIndex__ = 30;
}

if (live_enabled) function gml_node_bin_op(l_h_d, l_h_o, l_h_a, l_h_b) {
	var this = new mc_gml_node_bin_op();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_a = l_h_a;
	this.h_b = l_h_b;
	return this
}

if (live_enabled) function mc_gml_node_set_op() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_a", "h_b"];
	static __enumIndex__ = 31;
}

if (live_enabled) function gml_node_set_op(l_h_d, l_h_o, l_h_a, l_h_b) {
	var this = new mc_gml_node_set_op();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_a = l_h_a;
	this.h_b = l_h_b;
	return this
}

if (live_enabled) function mc_gml_node_to_bool() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_v"];
	static __enumIndex__ = 32;
}

if (live_enabled) function gml_node_to_bool(l_h_d, l_h_v) {
	var this = new mc_gml_node_to_bool();
	this.h_d = l_h_d;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_from_bool() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_v"];
	static __enumIndex__ = 33;
}

if (live_enabled) function gml_node_from_bool(l_h_d, l_h_v) {
	var this = new mc_gml_node_from_bool();
	this.h_d = l_h_d;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_in() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_fd", "h_val", "h_not"];
	static __enumIndex__ = 34;
}

if (live_enabled) function gml_node_in(l_h_d, l_h_fd, l_h_val, l_h_not) {
	var this = new mc_gml_node_in();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	this.h_val = l_h_val;
	this.h_not = l_h_not;
	return this
}

if (live_enabled) function mc_gml_node_local() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 35;
}

if (live_enabled) function gml_node_local(l_h_d, l_h_id) {
	var this = new mc_gml_node_local();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_local_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_val"];
	static __enumIndex__ = 36;
}

if (live_enabled) function gml_node_local_set(l_h_d, l_h_id, l_h_val) {
	var this = new mc_gml_node_local_set();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_local_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_op", "h_val"];
	static __enumIndex__ = 37;
}

if (live_enabled) function gml_node_local_aop(l_h_d, l_h_id, l_h_op, l_h_val) {
	var this = new mc_gml_node_local_aop();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_op = l_h_op;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_global() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 38;
}

if (live_enabled) function gml_node_global(l_h_d, l_h_id) {
	var this = new mc_gml_node_global();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_global_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_val"];
	static __enumIndex__ = 39;
}

if (live_enabled) function gml_node_global_set(l_h_d, l_h_id, l_h_val) {
	var this = new mc_gml_node_global_set();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_global_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_op", "h_val"];
	static __enumIndex__ = 40;
}

if (live_enabled) function gml_node_global_aop(l_h_d, l_h_id, l_h_op, l_h_val) {
	var this = new mc_gml_node_global_aop();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_op = l_h_op;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_field() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd"];
	static __enumIndex__ = 41;
}

if (live_enabled) function gml_node_field(l_h_d, l_h_x, l_h_fd) {
	var this = new mc_gml_node_field();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_node_field_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd", "h_val"];
	static __enumIndex__ = 42;
}

if (live_enabled) function gml_node_field_set(l_h_d, l_h_x, l_h_fd, l_h_val) {
	var this = new mc_gml_node_field_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_field_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd", "h_op", "h_val"];
	static __enumIndex__ = 43;
}

if (live_enabled) function gml_node_field_aop(l_h_d, l_h_x, l_h_fd, l_h_op, l_h_val) {
	var this = new mc_gml_node_field_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	this.h_op = l_h_op;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_env() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 44;
}

if (live_enabled) function gml_node_env(l_h_d, l_h_id) {
	var this = new mc_gml_node_env();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_env_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_val"];
	static __enumIndex__ = 45;
}

if (live_enabled) function gml_node_env_set(l_h_d, l_h_id, l_h_val) {
	var this = new mc_gml_node_env_set();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_env_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_op", "h_val"];
	static __enumIndex__ = 46;
}

if (live_enabled) function gml_node_env_aop(l_h_d, l_h_id, l_h_op, l_h_val) {
	var this = new mc_gml_node_env_aop();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_op = l_h_op;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_env_fd() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd"];
	static __enumIndex__ = 47;
}

if (live_enabled) function gml_node_env_fd(l_h_d, l_h_x, l_h_fd) {
	var this = new mc_gml_node_env_fd();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_node_env_fd_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd", "h_v"];
	static __enumIndex__ = 48;
}

if (live_enabled) function gml_node_env_fd_set(l_h_d, l_h_x, l_h_fd, l_h_v) {
	var this = new mc_gml_node_env_fd_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_env_fd_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_fd", "h_op", "h_v"];
	static __enumIndex__ = 49;
}

if (live_enabled) function gml_node_env_fd_aop(l_h_d, l_h_x, l_h_fd, l_h_op, l_h_v) {
	var this = new mc_gml_node_env_fd_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_fd = l_h_fd;
	this.h_op = l_h_op;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_env1d() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_k"];
	static __enumIndex__ = 50;
}

if (live_enabled) function gml_node_env1d(l_h_d, l_h_id, l_h_k) {
	var this = new mc_gml_node_env1d();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_k = l_h_k;
	return this
}

if (live_enabled) function mc_gml_node_env1d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_k", "h_val"];
	static __enumIndex__ = 51;
}

if (live_enabled) function gml_node_env1d_set(l_h_d, l_h_id, l_h_k, l_h_val) {
	var this = new mc_gml_node_env1d_set();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_k = l_h_k;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_env1d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_id", "h_k", "h_op", "h_val"];
	static __enumIndex__ = 52;
}

if (live_enabled) function gml_node_env1d_aop(l_h_d, l_h_id, l_h_k, l_h_op, l_h_val) {
	var this = new mc_gml_node_env1d_aop();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	this.h_k = l_h_k;
	this.h_op = l_h_op;
	this.h_val = l_h_val;
	return this
}

if (live_enabled) function mc_gml_node_alarm() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i"];
	static __enumIndex__ = 53;
}

if (live_enabled) function gml_node_alarm(l_h_d, l_h_x, l_h_i) {
	var this = new mc_gml_node_alarm();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_node_alarm_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_v"];
	static __enumIndex__ = 54;
}

if (live_enabled) function gml_node_alarm_set(l_h_d, l_h_x, l_h_i, l_h_v) {
	var this = new mc_gml_node_alarm_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_alarm_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_op", "h_v"];
	static __enumIndex__ = 55;
}

if (live_enabled) function gml_node_alarm_aop(l_h_d, l_h_x, l_h_i, l_h_op, l_h_v) {
	var this = new mc_gml_node_alarm_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_op = l_h_op;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_index() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id"];
	static __enumIndex__ = 56;
}

if (live_enabled) function gml_node_index(l_h_d, l_h_x, l_h_id) {
	var this = new mc_gml_node_index();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_index_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id", "h_v"];
	static __enumIndex__ = 57;
}

if (live_enabled) function gml_node_index_set(l_h_d, l_h_x, l_h_id, l_h_v) {
	var this = new mc_gml_node_index_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_index_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id", "h_o", "h_v"];
	static __enumIndex__ = 58;
}

if (live_enabled) function gml_node_index_aop(l_h_d, l_h_x, l_h_id, l_h_o, l_h_v) {
	var this = new mc_gml_node_index_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_index_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 59;
}

if (live_enabled) function gml_node_index_prefix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_index_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_index_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 60;
}

if (live_enabled) function gml_node_index_postfix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_index_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_index2d() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2"];
	static __enumIndex__ = 61;
}

if (live_enabled) function gml_node_index2d(l_h_d, l_h_x, l_h_i1, l_h_i2) {
	var this = new mc_gml_node_index2d();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	return this
}

if (live_enabled) function mc_gml_node_index2d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2", "h_v"];
	static __enumIndex__ = 62;
}

if (live_enabled) function gml_node_index2d_set(l_h_d, l_h_x, l_h_i1, l_h_i2, l_h_v) {
	var this = new mc_gml_node_index2d_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_index2d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2", "h_o", "h_v"];
	static __enumIndex__ = 63;
}

if (live_enabled) function gml_node_index2d_aop(l_h_d, l_h_x, l_h_i1, l_h_i2, l_h_o, l_h_v) {
	var this = new mc_gml_node_index2d_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_index2d_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 64;
}

if (live_enabled) function gml_node_index2d_prefix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_index2d_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_index2d_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 65;
}

if (live_enabled) function gml_node_index2d_postfix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_index2d_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_raw_id() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id"];
	static __enumIndex__ = 66;
}

if (live_enabled) function gml_node_raw_id(l_h_d, l_h_x, l_h_id) {
	var this = new mc_gml_node_raw_id();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_raw_id_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id", "h_v"];
	static __enumIndex__ = 67;
}

if (live_enabled) function gml_node_raw_id_set(l_h_d, l_h_x, l_h_id, l_h_v) {
	var this = new mc_gml_node_raw_id_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_raw_id_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_id", "h_o", "h_v"];
	static __enumIndex__ = 68;
}

if (live_enabled) function gml_node_raw_id_aop(l_h_d, l_h_x, l_h_id, l_h_o, l_h_v) {
	var this = new mc_gml_node_raw_id_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_id = l_h_id;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_raw_id_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 69;
}

if (live_enabled) function gml_node_raw_id_prefix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_raw_id_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_raw_id_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 70;
}

if (live_enabled) function gml_node_raw_id_postfix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_raw_id_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_raw_id2d() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2"];
	static __enumIndex__ = 71;
}

if (live_enabled) function gml_node_raw_id2d(l_h_d, l_h_x, l_h_i1, l_h_i2) {
	var this = new mc_gml_node_raw_id2d();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	return this
}

if (live_enabled) function mc_gml_node_raw_id2d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2", "h_v"];
	static __enumIndex__ = 72;
}

if (live_enabled) function gml_node_raw_id2d_set(l_h_d, l_h_x, l_h_i1, l_h_i2, l_h_v) {
	var this = new mc_gml_node_raw_id2d_set();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_raw_id2d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i1", "h_i2", "h_o", "h_v"];
	static __enumIndex__ = 73;
}

if (live_enabled) function gml_node_raw_id2d_aop(l_h_d, l_h_x, l_h_i1, l_h_i2, l_h_o, l_h_v) {
	var this = new mc_gml_node_raw_id2d_aop();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_raw_id2d_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 74;
}

if (live_enabled) function gml_node_raw_id2d_prefix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_raw_id2d_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_raw_id2d_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 75;
}

if (live_enabled) function gml_node_raw_id2d_postfix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_raw_id2d_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_list() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id"];
	static __enumIndex__ = 76;
}

if (live_enabled) function gml_node_ds_list(l_h_d, l_h_lx, l_h_id) {
	var this = new mc_gml_node_ds_list();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_ds_list_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id", "h_v"];
	static __enumIndex__ = 77;
}

if (live_enabled) function gml_node_ds_list_set(l_h_d, l_h_lx, l_h_id, l_h_v) {
	var this = new mc_gml_node_ds_list_set();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_list_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id", "h_o", "h_v"];
	static __enumIndex__ = 78;
}

if (live_enabled) function gml_node_ds_list_aop(l_h_d, l_h_lx, l_h_id, l_h_o, l_h_v) {
	var this = new mc_gml_node_ds_list_aop();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_list_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 79;
}

if (live_enabled) function gml_node_ds_list_prefix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_ds_list_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_list_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 80;
}

if (live_enabled) function gml_node_ds_list_postfix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_ds_list_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_map() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id"];
	static __enumIndex__ = 81;
}

if (live_enabled) function gml_node_ds_map(l_h_d, l_h_lx, l_h_id) {
	var this = new mc_gml_node_ds_map();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_node_ds_map_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id", "h_v"];
	static __enumIndex__ = 82;
}

if (live_enabled) function gml_node_ds_map_set(l_h_d, l_h_lx, l_h_id, l_h_v) {
	var this = new mc_gml_node_ds_map_set();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_map_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_id", "h_o", "h_v"];
	static __enumIndex__ = 83;
}

if (live_enabled) function gml_node_ds_map_aop(l_h_d, l_h_lx, l_h_id, l_h_o, l_h_v) {
	var this = new mc_gml_node_ds_map_aop();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_id = l_h_id;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_map_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 84;
}

if (live_enabled) function gml_node_ds_map_prefix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_ds_map_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_map_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_inc"];
	static __enumIndex__ = 85;
}

if (live_enabled) function gml_node_ds_map_postfix(l_h_d, l_h_x, l_h_i, l_h_inc) {
	var this = new mc_gml_node_ds_map_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_grid() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_i1", "h_i2"];
	static __enumIndex__ = 86;
}

if (live_enabled) function gml_node_ds_grid(l_h_d, l_h_lx, l_h_i1, l_h_i2) {
	var this = new mc_gml_node_ds_grid();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	return this
}

if (live_enabled) function mc_gml_node_ds_grid_set() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_i1", "h_i2", "h_v"];
	static __enumIndex__ = 87;
}

if (live_enabled) function gml_node_ds_grid_set(l_h_d, l_h_lx, l_h_i1, l_h_i2, l_h_v) {
	var this = new mc_gml_node_ds_grid_set();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_grid_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_lx", "h_i1", "h_i2", "h_o", "h_v"];
	static __enumIndex__ = 88;
}

if (live_enabled) function gml_node_ds_grid_aop(l_h_d, l_h_lx, l_h_i1, l_h_i2, l_h_o, l_h_v) {
	var this = new mc_gml_node_ds_grid_aop();
	this.h_d = l_h_d;
	this.h_lx = l_h_lx;
	this.h_i1 = l_h_i1;
	this.h_i2 = l_h_i2;
	this.h_o = l_h_o;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_ds_grid_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 89;
}

if (live_enabled) function gml_node_ds_grid_prefix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_ds_grid_prefix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_ds_grid_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_i", "h_k", "h_inc"];
	static __enumIndex__ = 90;
}

if (live_enabled) function gml_node_ds_grid_postfix(l_h_d, l_h_x, l_h_i, l_h_k, l_h_inc) {
	var this = new mc_gml_node_ds_grid_postfix();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_i = l_h_i;
	this.h_k = l_h_k;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_node_var_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_name", "h_value"];
	static __enumIndex__ = 91;
}

if (live_enabled) function gml_node_var_decl(l_h_d, l_h_name, l_h_value) {
	var this = new mc_gml_node_var_decl();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	this.h_value = l_h_value;
	if (false) throw argument[2];
	return this
}

if (live_enabled) function mc_gml_node_block() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_nodes"];
	static __enumIndex__ = 92;
}

if (live_enabled) function gml_node_block(l_h_d, l_h_nodes) {
	var this = new mc_gml_node_block();
	this.h_d = l_h_d;
	this.h_nodes = l_h_nodes;
	return this
}

if (live_enabled) function mc_gml_node_if_then() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_cond", "h_then", "h_not"];
	static __enumIndex__ = 93;
}

if (live_enabled) function gml_node_if_then(l_h_d, l_h_cond, l_h_then, l_h_not) {
	var this = new mc_gml_node_if_then();
	this.h_d = l_h_d;
	this.h_cond = l_h_cond;
	this.h_then = l_h_then;
	this.h_not = l_h_not;
	if (false) throw argument[3];
	return this
}

if (live_enabled) function mc_gml_node_ternary() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_cond", "h_then", "h_not"];
	static __enumIndex__ = 94;
}

if (live_enabled) function gml_node_ternary(l_h_d, l_h_cond, l_h_then, l_h_not) {
	var this = new mc_gml_node_ternary();
	this.h_d = l_h_d;
	this.h_cond = l_h_cond;
	this.h_then = l_h_then;
	this.h_not = l_h_not;
	return this
}

if (live_enabled) function mc_gml_node_switch() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_expr", "h_list", "h_def"];
	static __enumIndex__ = 95;
}

if (live_enabled) function gml_node_switch(l_h_d, l_h_expr, l_h_list, l_h_def) {
	var this = new mc_gml_node_switch();
	this.h_d = l_h_d;
	this.h_expr = l_h_expr;
	this.h_list = l_h_list;
	this.h_def = l_h_def;
	if (false) throw argument[3];
	return this
}

if (live_enabled) function mc_gml_node_wait() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_time"];
	static __enumIndex__ = 96;
}

if (live_enabled) function gml_node_wait(l_h_d, l_h_time) {
	var this = new mc_gml_node_wait();
	this.h_d = l_h_d;
	this.h_time = l_h_time;
	return this
}

if (live_enabled) function mc_gml_node_fork() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 97;
}

if (live_enabled) function gml_node_fork(l_h_d) {
	var this = new mc_gml_node_fork();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_while() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_cond", "h_node"];
	static __enumIndex__ = 98;
}

if (live_enabled) function gml_node_while(l_h_d, l_h_cond, l_h_node) {
	var this = new mc_gml_node_while();
	this.h_d = l_h_d;
	this.h_cond = l_h_cond;
	this.h_node = l_h_node;
	return this
}

if (live_enabled) function mc_gml_node_do_until() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_node", "h_cond"];
	static __enumIndex__ = 99;
}

if (live_enabled) function gml_node_do_until(l_h_d, l_h_node, l_h_cond) {
	var this = new mc_gml_node_do_until();
	this.h_d = l_h_d;
	this.h_node = l_h_node;
	this.h_cond = l_h_cond;
	return this
}

if (live_enabled) function mc_gml_node_do_while() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_node", "h_cond"];
	static __enumIndex__ = 100;
}

if (live_enabled) function gml_node_do_while(l_h_d, l_h_node, l_h_cond) {
	var this = new mc_gml_node_do_while();
	this.h_d = l_h_d;
	this.h_node = l_h_node;
	this.h_cond = l_h_cond;
	return this
}

if (live_enabled) function mc_gml_node_repeat() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_times", "h_node"];
	static __enumIndex__ = 101;
}

if (live_enabled) function gml_node_repeat(l_h_d, l_h_times, l_h_node) {
	var this = new mc_gml_node_repeat();
	this.h_d = l_h_d;
	this.h_times = l_h_times;
	this.h_node = l_h_node;
	return this
}

if (live_enabled) function mc_gml_node_for() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_pre", "h_cond", "h_post", "h_loop"];
	static __enumIndex__ = 102;
}

if (live_enabled) function gml_node_for(l_h_d, l_h_pre, l_h_cond, l_h_post, l_h_loop) {
	var this = new mc_gml_node_for();
	this.h_d = l_h_d;
	this.h_pre = l_h_pre;
	this.h_cond = l_h_cond;
	this.h_post = l_h_post;
	this.h_loop = l_h_loop;
	return this
}

if (live_enabled) function mc_gml_node_with() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_ctx", "h_node"];
	static __enumIndex__ = 103;
}

if (live_enabled) function gml_node_with(l_h_d, l_h_ctx, l_h_node) {
	var this = new mc_gml_node_with();
	this.h_d = l_h_d;
	this.h_ctx = l_h_ctx;
	this.h_node = l_h_node;
	return this
}

if (live_enabled) function mc_gml_node_once() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_node"];
	static __enumIndex__ = 104;
}

if (live_enabled) function gml_node_once(l_h_d, l_h_node) {
	var this = new mc_gml_node_once();
	this.h_d = l_h_d;
	this.h_node = l_h_node;
	return this
}

if (live_enabled) function mc_gml_node_return() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_v"];
	static __enumIndex__ = 105;
}

if (live_enabled) function gml_node_return(l_h_d, l_h_v) {
	var this = new mc_gml_node_return();
	this.h_d = l_h_d;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_node_exit() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 106;
}

if (live_enabled) function gml_node_exit(l_h_d) {
	var this = new mc_gml_node_exit();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_break() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 107;
}

if (live_enabled) function gml_node_break(l_h_d) {
	var this = new mc_gml_node_break();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_continue() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 108;
}

if (live_enabled) function gml_node_continue(l_h_d) {
	var this = new mc_gml_node_continue();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_debugger() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 109;
}

if (live_enabled) function gml_node_debugger(l_h_d) {
	var this = new mc_gml_node_debugger();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_node_try_catch() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_node", "h_cap", "h_cat"];
	static __enumIndex__ = 110;
}

if (live_enabled) function gml_node_try_catch(l_h_d, l_h_node, l_h_cap, l_h_cat) {
	var this = new mc_gml_node_try_catch();
	this.h_d = l_h_d;
	this.h_node = l_h_node;
	this.h_cap = l_h_cap;
	this.h_cat = l_h_cat;
	return this
}

if (live_enabled) function mc_gml_node_throw() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x"];
	static __enumIndex__ = 111;
}

if (live_enabled) function gml_node_throw(l_h_d, l_h_x) {
	var this = new mc_gml_node_throw();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	return this
}

if (live_enabled) function mc_gml_node_comment_line() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_s"];
	static __enumIndex__ = 112;
}

if (live_enabled) function gml_node_comment_line(l_h_d, l_h_s) {
	var this = new mc_gml_node_comment_line();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_node_comment_line_pre() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_s", "h_x"];
	static __enumIndex__ = 113;
}

if (live_enabled) function gml_node_comment_line_pre(l_h_d, l_h_s, l_h_x) {
	var this = new mc_gml_node_comment_line_pre();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	this.h_x = l_h_x;
	return this
}

if (live_enabled) function mc_gml_node_comment_line_post() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_s"];
	static __enumIndex__ = 114;
}

if (live_enabled) function gml_node_comment_line_post(l_h_d, l_h_x, l_h_s) {
	var this = new mc_gml_node_comment_line_post();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_node_comment_line_sep() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_s", "h_x"];
	static __enumIndex__ = 115;
}

if (live_enabled) function gml_node_comment_line_sep(l_h_d, l_h_s, l_h_x) {
	var this = new mc_gml_node_comment_line_sep();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	this.h_x = l_h_x;
	return this
}

if (live_enabled) function mc_gml_node_comment_block() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_s"];
	static __enumIndex__ = 116;
}

if (live_enabled) function gml_node_comment_block(l_h_d, l_h_s) {
	var this = new mc_gml_node_comment_block();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_node_comment_block_pre() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_s", "h_x", "h_pl"];
	static __enumIndex__ = 117;
}

if (live_enabled) function gml_node_comment_block_pre(l_h_d, l_h_s, l_h_x, l_h_pl) {
	var this = new mc_gml_node_comment_block_pre();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	this.h_x = l_h_x;
	this.h_pl = l_h_pl;
	return this
}

if (live_enabled) function mc_gml_node_comment_block_post() : mc_gml_node() constructor {
	static __enumParams__ = ["h_d", "h_x", "h_s", "h_pl"];
	static __enumIndex__ = 118;
}

if (live_enabled) function gml_node_comment_block_post(l_h_d, l_h_x, l_h_s, l_h_pl) {
	var this = new mc_gml_node_comment_block_post();
	this.h_d = l_h_d;
	this.h_x = l_h_x;
	this.h_s = l_h_s;
	this.h_pl = l_h_pl;
	return this
}

#endregion

#region gml.node

if (live_enabled) function gml_node_unpack(l_q) {
	while (l_q != undefined) {
		var l__g = l_q;
		if (l__g.__enumIndex__/* gml_node */ == 92/* block */) {
			var l__g1 = l__g.h_nodes;
			if (array_length(l__g1) == 1) l_q = l__g1[0]; else return l_q;
		} else return l_q;
	}
	return l_q;
}

if (live_enabled) function gml_node_is_simple(l_q) {
	var l_i, l_n, l_w;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 1/* number */: return true;
		case 2/* cstring */: return true;
		case 0/* undefined */: return true;
		case 35/* local */: return true;
		case 38/* global */: return true;
		case 4/* array_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			l_i = 0;
			while (l_i < l_n) {
				if (gml_node_is_simple(l_w[l_i])) l_i++; else break;
			}
			return l_i >= l_n;
		case 5/* object_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			l_i = 0;
			while (l_i < l_n) {
				if (gml_node_is_simple(l_w[l_i])) l_i++; else break;
			}
			return l_i >= l_n;
		case 8/* self */: return true;
		case 9/* other */: return true;
		case 41/* field */: return gml_node_is_simple(l__g.h_x);
		case 56/* index */: return gml_node_is_simple(l__g.h_x) && gml_node_is_simple(l__g.h_id);
		default: return false;
	}
}

if (live_enabled) function gml_node_is_statement(l_q) {
	switch (l_q.__enumIndex__/* gml_node */) {
		case 17/* call */: return true;
		case 31/* set_op */: return true;
		case 91/* var_decl */: return true;
		case 27/* prefix */: return true;
		case 28/* postfix */: return true;
		case 92/* block */: return true;
		case 93/* if_then */: return true;
		case 95/* switch */: return true;
		case 102/* for */: return true;
		case 98/* while */: return true;
		case 101/* repeat */: return true;
		case 100/* do_while */: return true;
		case 99/* do_until */: return true;
		case 103/* with */: return true;
		case 107/* break */: return true;
		case 108/* continue */: return true;
		case 106/* exit */: return true;
		case 105/* return */: return true;
		case 96/* wait */: return true;
		case 109/* debugger */: return true;
		case 110/* try_catch */: return true;
		case 111/* throw */: return true;
		default: return false;
	}
}

if (live_enabled) function gml_node_is_in_block(l_q, l_p) {
	if (l_p == undefined) return false;
	var l__g = l_p;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 92/* block */: return true;
		case 93/* if_then */: return l_q != l__g.h_cond;
		case 98/* while */: return l_q != l__g.h_cond;
		case 100/* do_while */: return l_q != l__g.h_cond;
		case 99/* do_until */: return l_q != l__g.h_cond;
		case 101/* repeat */: return l_q != l__g.h_times;
		case 102/* for */: return l_q != l__g.h_cond;
		case 95/* switch */: return l_q != l__g.h_expr;
		default: return false;
	}
}

if (live_enabled) function gml_node_to_value(l_q) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: return [undefined];
		case 1/* number */: return [l__g.h_value];
		case 2/* cstring */: return [l__g.h_value];
		case 3/* enum_ctr */: return [l__g.h_ctr.h_value];
		default: return undefined;
	}
}

if (live_enabled) function gml_node_has_value(l_q) {
	switch (l_q.__enumIndex__/* gml_node */) {
		case 0/* undefined */: return true;
		case 1/* number */: return true;
		case 2/* cstring */: return true;
		case 3/* enum_ctr */: return true;
		default: return false;
	}
}

if (live_enabled) function gml_node_equals_list(l_a, l_b) {
	var l_n = array_length(l_a);
	if (array_length(l_b) != l_n) return false;
	var l_i = 0;
	while (l_i < l_n) {
		if (gml_node_equals(l_a[l_i], l_b[l_i])) l_i++; else return false;
	}
	return true;
}

if (live_enabled) function gml_node_equals(l_a, l_b) {
	if (l_a.__enumIndex__ != l_b.__enumIndex__) return false;
	var l_i, l_n;
	var l__g = l_a;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 9/* other */: return true;
		case 106/* exit */: return true;
		case 10/* global_ref */: return true;
		case 109/* debugger */: return true;
		case 8/* self */: return true;
		case 97/* fork */: return true;
		case 108/* continue */: return true;
		case 16/* arg_count */: return true;
		case 107/* break */: return true;
		case 0/* undefined */: return true;
		case 37/* local_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 37/* local_aop */) {
				var l_b_val = l__g1.h_val;
				var l_b_op = l__g1.h_op;
				return l__g.h_id == l__g1.h_id && l__g.h_op == l_b_op && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 11/* script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 11/* script */) return l__g.h_ref == l__g1.h_ref; else return false;
		case 94/* ternary */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 94/* ternary */) {
				var l_b_not = l__g1.h_not;
				var l_b_then = l__g1.h_then;
				return gml_node_equals(l__g.h_cond, l__g1.h_cond) && gml_node_equals(l__g.h_then, l_b_then) && gml_node_equals(l__g.h_not, l_b_not);
			} else return false;
		case 3/* enum_ctr */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 3/* enum_ctr */) {
				var l_b_ctr = l__g1.h_ctr;
				return l__g.h_e == l__g1.h_e && l__g.h_ctr == l_b_ctr;
			} else return false;
		case 28/* postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 28/* postfix */) {
				var l_b_inc = l__g1.h_inc;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_inc == l_b_inc;
			} else return false;
		case 25/* construct */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 25/* construct */) {
				var l_b_args = l__g1.h_args;
				return gml_node_equals(l__g.h_ctr, l__g1.h_ctr) && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 7/* ident */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 7/* ident */) return l__g.h_id == l__g1.h_id; else return false;
		case 2/* cstring */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 2/* cstring */) return l__g.h_value == l__g1.h_value; else return false;
		case 22/* call_field */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 22/* call_field */) {
				var l_b_args = l__g1.h_args;
				var l_b_prop = l__g1.h_prop;
				return gml_node_equals(l__g.h_inst, l__g1.h_inst) && l__g.h_prop == l_b_prop && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 23/* call_func */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 23/* call_func */) {
				var l_b_args = l__g1.h_args;
				return l__g.h_funcName == l__g1.h_funcName && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 24/* call_func_at */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 24/* call_func_at */) {
				var l_b_args = l__g1.h_args;
				var l_b_s = l__g1.h_s;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_s == l_b_s && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 76/* ds_list */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 76/* ds_list */) {
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id);
			} else return false;
		case 26/* func_literal */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 26/* func_literal */) return l__g.h_name == l__g1.h_name; else return false;
		case 27/* prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 27/* prefix */) {
				var l_b_inc = l__g1.h_inc;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_inc == l_b_inc;
			} else return false;
		case 85/* ds_map_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 85/* ds_map_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 29/* un_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 29/* un_op */) {
				var l_b_o = l__g1.h_o;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_o == l_b_o;
			} else return false;
		case 30/* bin_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 30/* bin_op */) {
				var l_b_b = l__g1.h_b;
				var l_b_a = l__g1.h_a;
				return l__g.h_o == l__g1.h_o && gml_node_equals(l__g.h_a, l_b_a) && gml_node_equals(l__g.h_b, l_b_b);
			} else return false;
		case 31/* set_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 31/* set_op */) {
				var l_b_b = l__g1.h_b;
				var l_b_a = l__g1.h_a;
				return l__g.h_o == l__g1.h_o && gml_node_equals(l__g.h_a, l_b_a) && gml_node_equals(l__g.h_b, l_b_b);
			} else return false;
		case 32/* to_bool */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 32/* to_bool */) return gml_node_equals(l__g.h_v, l__g1.h_v); else return false;
		case 33/* from_bool */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 33/* from_bool */) return gml_node_equals(l__g.h_v, l__g1.h_v); else return false;
		case 34/* in */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 34/* in */) {
				var l_b_not = l__g1.h_not;
				var l_b_val = l__g1.h_val;
				return gml_node_equals(l__g.h_fd, l__g1.h_fd) && gml_node_equals(l__g.h_val, l_b_val) && l__g.h_not == l_b_not;
			} else return false;
		case 35/* local */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 35/* local */) return l__g.h_id == l__g1.h_id; else return false;
		case 36/* local_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 36/* local_set */) {
				var l_b_val = l__g1.h_val;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 112/* comment_line */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 112/* comment_line */) return l__g.h_s == l__g1.h_s; else return false;
		case 38/* global */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 38/* global */) return l__g.h_id == l__g1.h_id; else return false;
		case 39/* global_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 39/* global_set */) {
				var l_b_val = l__g1.h_val;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 21/* call_script_with_array */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 21/* call_script_with_array */) {
				var l_b_array = l__g1.h_array;
				return gml_node_equals(l__g.h_index, l__g1.h_index) && gml_node_equals(l__g.h_array, l_b_array);
			} else return false;
		case 20/* call_script_id */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 20/* call_script_id */) {
				var l_b_args = l__g1.h_args;
				return gml_node_equals(l__g.h_index, l__g1.h_index) && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 19/* call_script_at */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 19/* call_script_at */) {
				var l_b_args = l__g1.h_args;
				var l_b_script = l__g1.h_script;
				return gml_node_equals(l__g.h_inst, l__g1.h_inst) && l__g.h_script == l_b_script && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 6/* ensure_array */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 6/* ensure_array */) return gml_node_equals(l__g.h_expr, l__g1.h_expr); else return false;
		case 18/* call_script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 18/* call_script */) {
				var l_b_args = l__g1.h_args;
				return l__g.h_name == l__g1.h_name && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 17/* call */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 17/* call */) {
				var l_b_args = l__g1.h_args;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals_list(l__g.h_args, l_b_args);
			} else return false;
		case 49/* env_fd_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 49/* env_fd_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_op = l__g1.h_op;
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd && l__g.h_op == l_b_op && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 1/* number */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 1/* number */) {
				var l_b_src = l__g1.h_src;
				return l__g.h_value == l__g1.h_value && l__g.h_src == l_b_src;
			} else return false;
		case 48/* env_fd_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 48/* env_fd_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 50/* env1d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 50/* env1d */) {
				var l_b_k = l__g1.h_k;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_k, l_b_k);
			} else return false;
		case 51/* env1d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 51/* env1d_set */) {
				var l_b_val = l__g1.h_val;
				var l_b_k = l__g1.h_k;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_k, l_b_k) && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 52/* env1d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 52/* env1d_aop */) {
				var l_b_val = l__g1.h_val;
				var l_b_op = l__g1.h_op;
				var l_b_k = l__g1.h_k;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_op == l_b_op && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 53/* alarm */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 53/* alarm */) {
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i);
			} else return false;
		case 54/* alarm_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 54/* alarm_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 55/* alarm_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 55/* alarm_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_op = l__g1.h_op;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_op == l_b_op && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 56/* index */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 56/* index */) {
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id);
			} else return false;
		case 57/* index_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 57/* index_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 58/* index_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 58/* index_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 59/* index_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 59/* index_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 60/* index_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 60/* index_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 61/* index2d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 61/* index2d */) {
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2);
			} else return false;
		case 62/* index2d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 62/* index2d_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 63/* index2d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 63/* index2d_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 64/* index2d_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 64/* index2d_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 65/* index2d_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 65/* index2d_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 66/* raw_id */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 66/* raw_id */) {
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id);
			} else return false;
		case 67/* raw_id_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 67/* raw_id_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 68/* raw_id_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 68/* raw_id_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_id, l_b_id) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 69/* raw_id_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 69/* raw_id_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 70/* raw_id_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 70/* raw_id_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 71/* raw_id2d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 71/* raw_id2d */) {
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2);
			} else return false;
		case 72/* raw_id2d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 72/* raw_id2d_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 73/* raw_id2d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 73/* raw_id2d_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 74/* raw_id2d_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 74/* raw_id2d_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 75/* raw_id2d_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 75/* raw_id2d_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 47/* env_fd */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 47/* env_fd */) {
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd;
			} else return false;
		case 77/* ds_list_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 77/* ds_list_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 78/* ds_list_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 78/* ds_list_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 79/* ds_list_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 79/* ds_list_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 80/* ds_list_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 80/* ds_list_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 81/* ds_map */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 81/* ds_map */) {
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id);
			} else return false;
		case 82/* ds_map_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 82/* ds_map_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 83/* ds_map_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 83/* ds_map_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_id = l__g1.h_id;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_id, l_b_id) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 84/* ds_map_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 84/* ds_map_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && l__g.h_inc == l_b_inc;
			} else return false;
		case 46/* env_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 46/* env_aop */) {
				var l_b_val = l__g1.h_val;
				var l_b_op = l__g1.h_op;
				return l__g.h_id == l__g1.h_id && l__g.h_op == l_b_op && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 15/* arg_index */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 15/* arg_index */) return gml_node_equals(l__g.h_id, l__g1.h_id); else return false;
		case 86/* ds_grid */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 86/* ds_grid */) {
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2);
			} else return false;
		case 87/* ds_grid_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 87/* ds_grid_set */) {
				var l_b_v = l__g1.h_v;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 88/* ds_grid_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 88/* ds_grid_aop */) {
				var l_b_v = l__g1.h_v;
				var l_b_o = l__g1.h_o;
				var l_b_i2 = l__g1.h_i2;
				var l_b_i1 = l__g1.h_i1;
				return gml_node_equals(l__g.h_lx, l__g1.h_lx) && gml_node_equals(l__g.h_i1, l_b_i1) && gml_node_equals(l__g.h_i2, l_b_i2) && l__g.h_o == l_b_o && gml_node_equals(l__g.h_v, l_b_v);
			} else return false;
		case 89/* ds_grid_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 89/* ds_grid_prefix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 90/* ds_grid_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 90/* ds_grid_postfix */) {
				var l_b_inc = l__g1.h_inc;
				var l_b_k = l__g1.h_k;
				var l_b_i = l__g1.h_i;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && gml_node_equals(l__g.h_i, l_b_i) && gml_node_equals(l__g.h_k, l_b_k) && l__g.h_inc == l_b_inc;
			} else return false;
		case 91/* var_decl */:
			var l_a_value = l__g.h_value;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 91/* var_decl */) {
				var l_b_value = l__g1.h_value;
				if (l__g.h_name == l__g1.h_name) {
					if (l_a_value != undefined) return l_b_value != undefined && gml_node_equals(l_a_value, l_b_value); else return l_b_value == undefined;
				} else return false;
			} else return false;
		case 92/* block */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 92/* block */) return gml_node_equals_list(l__g.h_nodes, l__g1.h_nodes); else return false;
		case 93/* if_then */:
			var l_a_not = l__g.h_not;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 93/* if_then */) {
				var l_b_not = l__g1.h_not;
				var l_b_then = l__g1.h_then;
				if (gml_node_equals(l__g.h_cond, l__g1.h_cond) && gml_node_equals(l__g.h_then, l_b_then)) {
					if (l_a_not != undefined) return l_b_not != undefined && gml_node_equals(l_a_not, l_b_not); else return l_b_not == undefined;
				} else return false;
			} else return false;
		case 117/* comment_block_pre */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 117/* comment_block_pre */) {
				var l_b_pl = l__g1.h_pl;
				var l_b_x = l__g1.h_x;
				return l__g.h_s == l__g1.h_s && gml_node_equals(l__g.h_x, l_b_x) && l__g.h_pl == l_b_pl;
			} else return false;
		case 96/* wait */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 96/* wait */) return gml_node_equals(l__g.h_time, l__g1.h_time); else return false;
		case 45/* env_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 45/* env_set */) {
				var l_b_val = l__g1.h_val;
				return l__g.h_id == l__g1.h_id && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 98/* while */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 98/* while */) {
				var l_b_node = l__g1.h_node;
				return gml_node_equals(l__g.h_cond, l__g1.h_cond) && gml_node_equals(l__g.h_node, l_b_node);
			} else return false;
		case 99/* do_until */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 99/* do_until */) {
				var l_b_cond = l__g1.h_cond;
				return gml_node_equals(l__g.h_node, l__g1.h_node) && gml_node_equals(l__g.h_cond, l_b_cond);
			} else return false;
		case 100/* do_while */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 100/* do_while */) {
				var l_b_cond = l__g1.h_cond;
				return gml_node_equals(l__g.h_node, l__g1.h_node) && gml_node_equals(l__g.h_cond, l_b_cond);
			} else return false;
		case 101/* repeat */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 101/* repeat */) {
				var l_b_node = l__g1.h_node;
				return gml_node_equals(l__g.h_times, l__g1.h_times) && gml_node_equals(l__g.h_node, l_b_node);
			} else return false;
		case 102/* for */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 102/* for */) {
				var l_b_loop = l__g1.h_loop;
				var l_b_post = l__g1.h_post;
				var l_b_cond = l__g1.h_cond;
				return gml_node_equals(l__g.h_pre, l__g1.h_pre) && gml_node_equals(l__g.h_cond, l_b_cond) && gml_node_equals(l__g.h_post, l_b_post) && gml_node_equals(l__g.h_loop, l_b_loop);
			} else return false;
		case 103/* with */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 103/* with */) {
				var l_b_node = l__g1.h_node;
				return gml_node_equals(l__g.h_ctx, l__g1.h_ctx) && gml_node_equals(l__g.h_node, l_b_node);
			} else return false;
		case 104/* once */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 104/* once */) return gml_node_equals(l__g.h_node, l__g1.h_node); else return false;
		case 105/* return */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 105/* return */) return gml_node_equals(l__g.h_v, l__g1.h_v); else return false;
		case 44/* env */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 44/* env */) return l__g.h_id == l__g1.h_id; else return false;
		case 43/* field_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 43/* field_aop */) {
				var l_b_val = l__g1.h_val;
				var l_b_op = l__g1.h_op;
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd && l__g.h_op == l_b_op && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 14/* arg_const */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 14/* arg_const */) return l__g.h_id == l__g1.h_id; else return false;
		case 42/* field_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 42/* field_set */) {
				var l_b_val = l__g1.h_val;
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 110/* try_catch */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 110/* try_catch */) {
				var l_b_cat = l__g1.h_cat;
				var l_b_cap = l__g1.h_cap;
				return gml_node_equals(l__g.h_node, l__g1.h_node) && l__g.h_cap == l_b_cap && gml_node_equals(l__g.h_cat, l_b_cat);
			} else return false;
		case 111/* throw */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 111/* throw */) return gml_node_equals(l__g.h_x, l__g1.h_x); else return false;
		case 41/* field */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 41/* field */) {
				var l_b_fd = l__g1.h_fd;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_fd == l_b_fd;
			} else return false;
		case 113/* comment_line_pre */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 113/* comment_line_pre */) {
				var l_b_x = l__g1.h_x;
				return l__g.h_s == l__g1.h_s && gml_node_equals(l__g.h_x, l_b_x);
			} else return false;
		case 114/* comment_line_post */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 114/* comment_line_post */) {
				var l_b_s = l__g1.h_s;
				return gml_node_equals(l__g.h_x, l__g1.h_x) && l__g.h_s == l_b_s;
			} else return false;
		case 115/* comment_line_sep */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 115/* comment_line_sep */) {
				var l_b_x = l__g1.h_x;
				return l__g.h_s == l__g1.h_s && gml_node_equals(l__g.h_x, l_b_x);
			} else return false;
		case 116/* comment_block */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 116/* comment_block */) return l__g.h_s == l__g1.h_s; else return false;
		case 118/* comment_block_post */:
			var l__g = l_b;
			if (l__g.__enumIndex__/* gml_node */ == 118/* comment_block_post */) {
				var l_b_pl = l__g.h_pl;
				var l_b_s = l__g.h_s;
				return gml_node_equals(l__g.h_x, l__g.h_x) && l__g.h_s == l_b_s && l__g.h_pl == l_b_pl;
			} else return false;
		case 40/* global_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 40/* global_aop */) {
				var l_b_val = l__g1.h_val;
				var l_b_op = l__g1.h_op;
				return l__g.h_id == l__g1.h_id && l__g.h_op == l_b_op && gml_node_equals(l__g.h_val, l_b_val);
			} else return false;
		case 13/* const */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 13/* const */) return l__g.h_id == l__g1.h_id; else return false;
		case 4/* array_decl */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 4/* array_decl */) return gml_node_equals_list(l__g.h_values, l__g1.h_values); else return false;
		case 12/* native_script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 12/* native_script */) return l__g.h_name == l__g1.h_name; else return false;
		case 5/* object_decl */:
			var l_m1 = l__g.h_values;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 5/* object_decl */) {
				var l_m2 = l__g1.h_values;
				var l_k2 = l__g1.h_keys;
				l_n = array_length(l_m1);
				if (array_length(l_m2) == l_n) {
					l_i = 0;
					while (l_i < l_n) {
						if (l__g.h_keys[l_i] == l_k2[l_i] && gml_node_equals(l_m1[l_i], l_m2[l_i])) l_i++; else break;
					}
					return l_i >= l_n;
				} else return false;
			} else return false;
		case 95/* switch */:
			var l_o1 = l__g.h_def;
			var l_m1 = l__g.h_list;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 95/* switch */) {
				var l_o2 = l__g1.h_def;
				var l_m2 = l__g1.h_list;
				if (gml_node_equals(l__g.h_expr, l__g1.h_expr) && (l_o1 != undefined && l_o2 != undefined && gml_node_equals(l_o1, l_o2) || l_o1 == undefined && l_o2 == undefined)) {
					l_n = array_length(l_m1);
					if (array_length(l_m2) != l_n) return false;
					l_i = 0;
					while (l_i < l_n) {
						if (gml_node_equals(l_m1[l_i].expr, l_m2[l_i].expr) && gml_node_equals_list(l_m1[l_i].values, l_m2[l_i].values)) l_i++; else break;
					}
					return l_i >= l_n;
				} else return false;
			} else return false;
	}
}

if (live_enabled) function gml_node_clone_opt(l_q) {
	if (l_q != undefined) return gml_node_clone(l_q); else return undefined;
}

if (live_enabled) function gml_node_clone(l_q) {
	var l_xw, l_i, l_n, l_fi;
	var l_d = gml_std_haxe_enum_tools_getParameter(l_q, 0);
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 2/* cstring */: return gml_node_cstring(l_d, l__g.h_value);
		case 3/* enum_ctr */: return gml_node_enum_ctr(l_d, l__g.h_e, l__g.h_ctr);
		case 5/* object_decl */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_values);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_object_decl(l_d, gml_std_gml_internal_ArrayImpl_slice(l__g.h_keys, 0), l_xw);
		case 6/* ensure_array */: return gml_node_ensure_array(l_d, gml_node_clone(l__g.h_expr));
		case 7/* ident */: return gml_node_ident(l_d, l__g.h_id);
		case 8/* self */: return gml_node_self(l_d);
		case 9/* other */: return gml_node_other(l_d);
		case 10/* global_ref */: return gml_node_global_ref(l_d);
		case 11/* script */: return gml_node_script(l_d, l__g.h_ref);
		case 0/* undefined */: return gml_node_undefined(l_d);
		case 14/* arg_const */: return gml_node_arg_const(l_d, l__g.h_id);
		case 15/* arg_index */: return gml_node_arg_index(l_d, gml_node_clone(l__g.h_id));
		case 16/* arg_count */: return gml_node_arg_count(l_d);
		case 17/* call */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call(l_d, gml_node_clone(l__g.h_x), l_xw);
		case 18/* call_script */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script(l_d, l__g.h_name, l_xw);
		case 19/* call_script_at */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script_at(l_d, gml_node_clone(l__g.h_inst), l__g.h_script, l_xw);
		case 20/* call_script_id */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script_id(l_d, gml_node_clone(l__g.h_index), l_xw);
		case 21/* call_script_with_array */: return gml_node_call_script_with_array(l_d, gml_node_clone(l__g.h_index), gml_node_clone(l__g.h_array));
		case 22/* call_field */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_field(l_d, gml_node_clone(l__g.h_inst), l__g.h_prop, l_xw);
		case 23/* call_func */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_func(l_d, l__g.h_funcName, l_xw);
		case 24/* call_func_at */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_func_at(l_d, gml_node_clone(l__g.h_x), l__g.h_s, l_xw);
		case 25/* construct */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_construct(l_d, gml_node_clone(l__g.h_ctr), l_xw);
		case 26/* func_literal */: return gml_node_func_literal(l_d, l__g.h_name);
		case 27/* prefix */: return gml_node_prefix(l_d, gml_node_clone(l__g.h_x), l__g.h_inc);
		case 28/* postfix */: return gml_node_postfix(l_d, gml_node_clone(l__g.h_x), l__g.h_inc);
		case 29/* un_op */: return gml_node_un_op(l_d, gml_node_clone(l__g.h_x), l__g.h_o);
		case 30/* bin_op */: return gml_node_bin_op(l_d, l__g.h_o, gml_node_clone(l__g.h_a), gml_node_clone(l__g.h_b));
		case 94/* ternary */: return gml_node_ternary(l_d, gml_node_clone(l__g.h_cond), gml_node_clone(l__g.h_then), gml_node_clone(l__g.h_not));
		case 32/* to_bool */: return gml_node_to_bool(l_d, gml_node_clone(l__g.h_v));
		case 33/* from_bool */: return gml_node_from_bool(l_d, gml_node_clone(l__g.h_v));
		case 34/* in */: return gml_node_in(l_d, gml_node_clone(l__g.h_fd), gml_node_clone(l__g.h_val), l__g.h_not);
		case 35/* local */: return gml_node_local(l_d, l__g.h_id);
		case 36/* local_set */: return gml_node_local_set(l_d, l__g.h_id, gml_node_clone(l__g.h_val));
		case 37/* local_aop */: return gml_node_local_aop(l_d, l__g.h_id, l__g.h_op, gml_node_clone(l__g.h_val));
		case 38/* global */: return gml_node_global(l_d, l__g.h_id);
		case 39/* global_set */: return gml_node_global_set(l_d, l__g.h_id, gml_node_clone(l__g.h_val));
		case 41/* field */: return gml_node_field(l_d, gml_node_clone(l__g.h_x), l__g.h_fd);
		case 42/* field_set */: return gml_node_field_set(l_d, gml_node_clone(l__g.h_x), l__g.h_fd, gml_node_clone(l__g.h_val));
		case 43/* field_aop */: return gml_node_field_aop(l_d, gml_node_clone(l__g.h_x), l__g.h_fd, l__g.h_op, gml_node_clone(l__g.h_val));
		case 44/* env */: return gml_node_env(l_d, l__g.h_id);
		case 45/* env_set */: return gml_node_env_set(l_d, l__g.h_id, gml_node_clone(l__g.h_val));
		case 46/* env_aop */: return gml_node_env_aop(l_d, l__g.h_id, l__g.h_op, gml_node_clone(l__g.h_val));
		case 47/* env_fd */: return gml_node_env_fd(l_d, gml_node_clone(l__g.h_x), l__g.h_fd);
		case 48/* env_fd_set */: return gml_node_env_fd_set(l_d, gml_node_clone(l__g.h_x), l__g.h_fd, gml_node_clone(l__g.h_v));
		case 49/* env_fd_aop */: return gml_node_env_fd_aop(l_d, gml_node_clone(l__g.h_x), l__g.h_fd, l__g.h_op, gml_node_clone(l__g.h_v));
		case 50/* env1d */: return gml_node_env1d(l_d, l__g.h_id, gml_node_clone(l__g.h_k));
		case 51/* env1d_set */: return gml_node_env1d_set(l_d, l__g.h_id, gml_node_clone(l__g.h_k), gml_node_clone(l__g.h_val));
		case 52/* env1d_aop */: return gml_node_env1d_aop(l_d, l__g.h_id, gml_node_clone(l__g.h_k), l__g.h_op, gml_node_clone(l__g.h_val));
		case 53/* alarm */: return gml_node_alarm(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i));
		case 54/* alarm_set */: return gml_node_alarm_set(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_v));
		case 55/* alarm_aop */: return gml_node_alarm_aop(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_op, gml_node_clone(l__g.h_v));
		case 56/* index */: return gml_node_index(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id));
		case 57/* index_set */: return gml_node_index_set(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id), gml_node_clone(l__g.h_v));
		case 58/* index_aop */: return gml_node_index_aop(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id), l__g.h_o, gml_node_clone(l__g.h_v));
		case 59/* index_prefix */: return gml_node_index_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 60/* index_postfix */: return gml_node_index_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 61/* index2d */: return gml_node_index2d(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2));
		case 62/* index2d_set */: return gml_node_index2d_set(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), gml_node_clone(l__g.h_v));
		case 63/* index2d_aop */: return gml_node_index2d_aop(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), l__g.h_o, gml_node_clone(l__g.h_v));
		case 64/* index2d_prefix */: return gml_node_index2d_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 65/* index2d_postfix */: return gml_node_index2d_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 66/* raw_id */: return gml_node_raw_id(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id));
		case 67/* raw_id_set */: return gml_node_raw_id_set(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id), gml_node_clone(l__g.h_v));
		case 68/* raw_id_aop */: return gml_node_raw_id_aop(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_id), l__g.h_o, gml_node_clone(l__g.h_v));
		case 69/* raw_id_prefix */: return gml_node_raw_id_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 70/* raw_id_postfix */: return gml_node_raw_id_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 71/* raw_id2d */: return gml_node_raw_id2d(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2));
		case 72/* raw_id2d_set */: return gml_node_raw_id2d_set(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), gml_node_clone(l__g.h_v));
		case 73/* raw_id2d_aop */: return gml_node_raw_id2d_aop(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), l__g.h_o, gml_node_clone(l__g.h_v));
		case 74/* raw_id2d_prefix */: return gml_node_raw_id2d_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 75/* raw_id2d_postfix */: return gml_node_raw_id2d_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 76/* ds_list */: return gml_node_ds_list(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id));
		case 77/* ds_list_set */: return gml_node_ds_list_set(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id), gml_node_clone(l__g.h_v));
		case 78/* ds_list_aop */: return gml_node_ds_list_aop(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id), l__g.h_o, gml_node_clone(l__g.h_v));
		case 79/* ds_list_prefix */: return gml_node_ds_list_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 80/* ds_list_postfix */: return gml_node_ds_list_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 81/* ds_map */: return gml_node_ds_map(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id));
		case 82/* ds_map_set */: return gml_node_ds_map_set(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id), gml_node_clone(l__g.h_v));
		case 83/* ds_map_aop */: return gml_node_ds_map_aop(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_id), l__g.h_o, gml_node_clone(l__g.h_v));
		case 84/* ds_map_prefix */: return gml_node_ds_map_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 85/* ds_map_postfix */: return gml_node_ds_map_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), l__g.h_inc);
		case 86/* ds_grid */: return gml_node_ds_grid(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2));
		case 87/* ds_grid_set */: return gml_node_ds_grid_set(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), gml_node_clone(l__g.h_v));
		case 88/* ds_grid_aop */: return gml_node_ds_grid_aop(l_d, gml_node_clone(l__g.h_lx), gml_node_clone(l__g.h_i1), gml_node_clone(l__g.h_i2), l__g.h_o, gml_node_clone(l__g.h_v));
		case 89/* ds_grid_prefix */: return gml_node_ds_grid_prefix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 90/* ds_grid_postfix */: return gml_node_ds_grid_postfix(l_d, gml_node_clone(l__g.h_x), gml_node_clone(l__g.h_i), gml_node_clone(l__g.h_k), l__g.h_inc);
		case 91/* var_decl */: return gml_node_var_decl(l_d, l__g.h_name, gml_node_clone_opt(l__g.h_value));
		case 92/* block */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_nodes);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_block(l_d, l_xw);
		case 93/* if_then */: return gml_node_if_then(l_d, gml_node_clone(l__g.h_cond), gml_node_clone(l__g.h_then), gml_node_clone_opt(l__g.h_not));
		case 118/* comment_block_post */: return gml_node_comment_block_post(l_d, gml_node_clone(l__g.h_x), l__g.h_s, l__g.h_pl);
		case 31/* set_op */: return gml_node_set_op(l_d, l__g.h_o, gml_node_clone(l__g.h_a), gml_node_clone(l__g.h_b));
		case 96/* wait */: return gml_node_wait(l_d, gml_node_clone(l__g.h_time));
		case 97/* fork */: return gml_node_fork(l_d);
		case 98/* while */: return gml_node_while(l_d, gml_node_clone(l__g.h_cond), gml_node_clone(l__g.h_node));
		case 99/* do_until */: return gml_node_do_until(l_d, gml_node_clone(l__g.h_node), gml_node_clone(l__g.h_cond));
		case 100/* do_while */: return gml_node_do_while(l_d, gml_node_clone(l__g.h_node), gml_node_clone(l__g.h_cond));
		case 101/* repeat */: return gml_node_repeat(l_d, gml_node_clone(l__g.h_times), gml_node_clone(l__g.h_node));
		case 102/* for */: return gml_node_for(l_d, gml_node_clone(l__g.h_pre), gml_node_clone(l__g.h_cond), gml_node_clone(l__g.h_post), gml_node_clone(l__g.h_loop));
		case 103/* with */: return gml_node_with(l_d, gml_node_clone(l__g.h_ctx), gml_node_clone(l__g.h_node));
		case 104/* once */: return gml_node_once(l_d, gml_node_clone(l__g.h_node));
		case 105/* return */: return gml_node_return(l_d, gml_node_clone(l__g.h_v));
		case 106/* exit */: return gml_node_exit(l_d);
		case 107/* break */: return gml_node_break(l_d);
		case 108/* continue */: return gml_node_continue(l_d);
		case 109/* debugger */: return gml_node_debugger(l_d);
		case 110/* try_catch */: return gml_node_try_catch(l_d, gml_node_clone(l__g.h_node), l__g.h_cap, gml_node_clone(l__g.h_cat));
		case 111/* throw */: return gml_node_throw(l_d, gml_node_clone(l__g.h_x));
		case 112/* comment_line */: return gml_node_comment_line(l_d, l__g.h_s);
		case 113/* comment_line_pre */: return gml_node_comment_line_pre(l_d, l__g.h_s, gml_node_clone(l__g.h_x));
		case 114/* comment_line_post */: return gml_node_comment_line_post(l_d, gml_node_clone(l__g.h_x), l__g.h_s);
		case 115/* comment_line_sep */: return gml_node_comment_line_sep(l_d, l__g.h_s, gml_node_clone(l__g.h_x));
		case 116/* comment_block */: return gml_node_comment_block(l_d, l__g.h_s);
		case 117/* comment_block_pre */: return gml_node_comment_block_pre(l_d, l__g.h_s, gml_node_clone(l__g.h_x), l__g.h_pl);
		case 40/* global_aop */: return gml_node_global_aop(l_d, l__g.h_id, l__g.h_op, gml_node_clone(l__g.h_val));
		case 13/* const */: return gml_node_const(l_d, l__g.h_id);
		case 4/* array_decl */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.h_values);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_array_decl(l_d, l_xw);
		case 1/* number */: return gml_node_number(l_d, l__g.h_value, l__g.h_src);
		case 12/* native_script */: return gml_node_native_script(l__g.h_d, l__g.h_name, l__g.h_id);
		case 95/* switch */:
			var l_m = l__g.h_list;
			l_m = gml_std_gml_internal_ArrayImpl_copy(l_m);
			l_n = array_length(l_m);
			for (l_i = 0; l_i < l_n; l_i++) {
				var l_cc = l_m[l_i];
				l_xw = gml_std_gml_internal_ArrayImpl_copy(l_cc.values);
				l_fi = array_length(l_xw);
				while (--l_fi >= 0) {
					l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
				}
				l_cc = { values: l_xw, expr: gml_node_clone(l_cc.expr), pre: l_cc.pre }
				l_m[@l_i] = l_cc;
				l_xw = gml_std_gml_internal_ArrayImpl_copy(l_cc.pre);
				l_fi = array_length(l_xw);
				while (--l_fi >= 0) {
					l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
				}
				l_cc.pre = l_xw;
			}
			return gml_node_switch(l__g.h_d, gml_node_clone(l__g.h_expr), l_m, gml_node_clone_opt(l__g.h_def));
	}
}

if (live_enabled) function gml_node_seek_all_out(l_q, l_st, l_c, l_si) {
	var l_x, l_w, l_i, l_n;
	var l_par = l_st[|l_si];
	if (l_par == undefined) return false;
	var l__g = l_par;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 92/* block */:
			l_w = l__g.h_nodes;
			l_i = array_length(l_w);
			while (--l_i >= 0) {
				if (l_w[l_i] == l_q) break;
			}
			while (--l_i >= 0) {
				if (l_c(l_w[l_i], undefined)) return true;
			}
			break;
		case 93/* if_then */:
			var l_c1 = l__g.h_cond;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 98/* while */:
			var l_c1 = l__g.h_cond;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 100/* do_while */:
			var l_c1 = l__g.h_node;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 99/* do_until */:
			var l_c1 = l__g.h_node;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 101/* repeat */:
			var l_c1 = l__g.h_times;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 102/* for */:
			var l_c1 = l__g.h_pre;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 95/* switch */:
			var l_c1 = l__g.h_expr;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 103/* with */:
			var l_c1 = l__g.h_ctx;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 114/* comment_line_post */: break;
		case 113/* comment_line_pre */: break;
		case 115/* comment_line_sep */: break;
		case 117/* comment_block_pre */: break;
		case 118/* comment_block_post */: break;
		default: throw gml_std_haxe_Exception_thrown("Can't seekAllOut over " + gml_std_haxe_enum_tools_getParameter(l_par, 0).h_to_string() + " " + gml_std_Type_enumConstructor(l_par));
	}
	return gml_node_seek_all_out(l_par, l_st, l_c, l_si + 1);
}

if (live_enabled) function gml_node_seek_all(l_q, l_st, l_c) {
	if (l_st != undefined) ds_list_insert(l_st, 0, l_q);
	var l_r, l_x, l_w, l_i, l_n;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 118/* comment_block_post */: l_r = l_c(l__g.h_x, undefined); break;
		case 113/* comment_line_pre */: l_r = l_c(l__g.h_x, undefined); break;
		case 15/* arg_index */: l_r = l_c(l__g.h_id, undefined); break;
		case 27/* prefix */: l_r = l_c(l__g.h_x, undefined); break;
		case 37/* local_aop */: l_r = l_c(l__g.h_val, undefined); break;
		case 36/* local_set */: l_r = l_c(l__g.h_val, undefined); break;
		case 115/* comment_line_sep */: l_r = l_c(l__g.h_x, undefined); break;
		case 114/* comment_line_post */: l_r = l_c(l__g.h_x, undefined); break;
		case 28/* postfix */: l_r = l_c(l__g.h_x, undefined); break;
		case 32/* to_bool */: l_r = l_c(l__g.h_v, undefined); break;
		case 104/* once */: l_r = l_c(l__g.h_node, undefined); break;
		case 46/* env_aop */: l_r = l_c(l__g.h_val, undefined); break;
		case 45/* env_set */: l_r = l_c(l__g.h_val, undefined); break;
		case 105/* return */: l_r = l_c(l__g.h_v, undefined); break;
		case 33/* from_bool */: l_r = l_c(l__g.h_v, undefined); break;
		case 6/* ensure_array */: l_r = l_c(l__g.h_expr, undefined); break;
		case 117/* comment_block_pre */: l_r = l_c(l__g.h_x, undefined); break;
		case 39/* global_set */: l_r = l_c(l__g.h_val, undefined); break;
		case 96/* wait */: l_r = l_c(l__g.h_time, undefined); break;
		case 111/* throw */: l_r = l_c(l__g.h_x, undefined); break;
		case 40/* global_aop */: l_r = l_c(l__g.h_val, undefined); break;
		case 12/* native_script */: l_r = false; break;
		case 97/* fork */: l_r = false; break;
		case 0/* undefined */: l_r = false; break;
		case 10/* global_ref */: l_r = false; break;
		case 7/* ident */: l_r = false; break;
		case 116/* comment_block */: l_r = false; break;
		case 2/* cstring */: l_r = false; break;
		case 8/* self */: l_r = false; break;
		case 106/* exit */: l_r = false; break;
		case 26/* func_literal */: l_r = false; break;
		case 108/* continue */: l_r = false; break;
		case 35/* local */: l_r = false; break;
		case 3/* enum_ctr */: l_r = false; break;
		case 112/* comment_line */: l_r = false; break;
		case 38/* global */: l_r = false; break;
		case 109/* debugger */: l_r = false; break;
		case 9/* other */: l_r = false; break;
		case 1/* number */: l_r = false; break;
		case 107/* break */: l_r = false; break;
		case 16/* arg_count */: l_r = false; break;
		case 44/* env */: l_r = false; break;
		case 11/* script */: l_r = false; break;
		case 14/* arg_const */: l_r = false; break;
		case 13/* const */: l_r = false; break;
		case 30/* bin_op */:
			switch (l__g.h_o) {
				case 80:
					var l_b = l__g.h_b;
					l_r = l_c(l__g.h_a, undefined) && l_c(l_b, undefined);
					break;
				case 96: l_r = l_c(l__g.h_a, undefined); break;
				default:
					var l_l_b = l__g.h_b;
					l_r = l_c(l__g.h_a, undefined) || l_c(l_l_b, undefined);
			}
			break;
		case 5/* object_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 4/* array_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 91/* var_decl */:
			var l_v = l__g.h_value;
			l_r = l_v != undefined && l_c(l_v, undefined);
			break;
		case 29/* un_op */: l_r = l_c(l__g.h_x, undefined); break;
		case 92/* block */:
			l_w = l__g.h_nodes;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 25/* construct */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_ctr, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 20/* call_script_id */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_index, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 17/* call */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_x, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 22/* call_field */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_inst, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 19/* call_script_at */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_inst, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 24/* call_func_at */:
			var l_m = l__g.h_args;
			if (l_c(l__g.h_x, undefined)) {
				l_r = true;
			} else {
				l_w = l_m;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], undefined)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 23/* call_func */:
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 18/* call_script */:
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 21/* call_script_with_array */:
			var l_y = l__g.h_array;
			l_r = l_c(l__g.h_index, undefined) || l_c(l_y, undefined);
			break;
		case 93/* if_then */:
			var l_b = l__g.h_not;
			var l_a = l__g.h_then;
			l_r = l_c(l__g.h_cond, undefined) || l_b != undefined && l_c(l_a, undefined) && l_c(l_b, undefined);
			break;
		case 94/* ternary */:
			var l_b = l__g.h_not;
			var l_a = l__g.h_then;
			l_r = l_c(l__g.h_cond, undefined) || l_c(l_a, undefined) && l_c(l_b, undefined);
			break;
		case 102/* for */:
			var l_c1 = l__g.h_cond;
			l_r = l_c(l__g.h_pre, undefined) || l_c(l_c1, undefined);
			break;
		case 98/* while */: l_r = l_c(l__g.h_cond, undefined); break;
		case 103/* with */: l_r = l_c(l__g.h_ctx, undefined); break;
		case 100/* do_while */: l_r = l_c(l__g.h_node, undefined); break;
		case 99/* do_until */: l_r = l_c(l__g.h_node, undefined); break;
		case 101/* repeat */: l_r = l_c(l__g.h_times, undefined); break;
		case 95/* switch */:
			var l__d = l__g.h_def;
			var l__cc = l__g.h_list;
			if (l_c(l__g.h_expr, undefined)) {
				l_r = true;
			} else {
				l_x = l__d;
				if (l_x != undefined && l_c(l_x, undefined)) {
					l_n = array_length(l__cc);
					l_i = 0;
					while (l_i < l_n) {
						if (l_c(l_x, undefined)) l_i++; else break;
					}
					l_r = l_i >= l_n;
				} else l_r = false;
			}
			break;
		case 110/* try_catch */:
			var l_e = l__g.h_cat;
			l_r = l_c(l__g.h_node, undefined) || l_c(l_e, undefined);
			break;
		case 31/* set_op */:
			var l_l_b = l__g.h_b;
			l_r = l_c(l__g.h_a, undefined) || l_c(l_l_b, undefined);
			break;
		case 34/* in */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_fd, undefined) || l_c(l_l_val, undefined);
			break;
		case 50/* env1d */: l_r = l_c(l__g.h_k, undefined); break;
		case 51/* env1d_set */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_k, undefined) || l_c(l_l_val, undefined);
			break;
		case 52/* env1d_aop */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_k, undefined) || l_c(l_l_val, undefined);
			break;
		case 53/* alarm */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 54/* alarm_set */:
			var l_l_v = l__g.h_v;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_v, undefined);
			break;
		case 55/* alarm_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_v, undefined);
			break;
		case 56/* index */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined);
			break;
		case 57/* index_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 58/* index_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 59/* index_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 60/* index_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 61/* index2d */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 62/* index2d_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 63/* index2d_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 64/* index2d_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 65/* index2d_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 66/* raw_id */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined);
			break;
		case 67/* raw_id_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 68/* raw_id_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 69/* raw_id_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 70/* raw_id_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 71/* raw_id2d */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 72/* raw_id2d_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 73/* raw_id2d_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 74/* raw_id2d_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 75/* raw_id2d_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 41/* field */: l_r = l_c(l__g.h_x, undefined); break;
		case 42/* field_set */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_val, undefined);
			break;
		case 43/* field_aop */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_val, undefined);
			break;
		case 47/* env_fd */: l_r = l_c(l__g.h_x, undefined); break;
		case 48/* env_fd_set */:
			var l_l_v = l__g.h_v;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_v, undefined);
			break;
		case 49/* env_fd_aop */:
			var l_l_v = l__g.h_v;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_v, undefined);
			break;
		case 76/* ds_list */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined);
			break;
		case 77/* ds_list_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 78/* ds_list_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 79/* ds_list_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 80/* ds_list_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 81/* ds_map */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined);
			break;
		case 82/* ds_map_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 83/* ds_map_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 84/* ds_map_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 85/* ds_map_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined);
			break;
		case 86/* ds_grid */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 87/* ds_grid_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 88/* ds_grid_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 89/* ds_grid_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 90/* ds_grid_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
	}
	if (l_st != undefined) ds_list_delete(l_st, 0);
	return false;
}

if (live_enabled) function gml_node_seek(l_q, l_st, l_c) {
	if (l_st != undefined) ds_list_insert(l_st, 0, l_q);
	var l_r, l_x, l_w, l_i, l_n, l_k, l_l;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 2/* cstring */: l_r = false; break;
		case 3/* enum_ctr */: l_r = false; break;
		case 5/* object_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 6/* ensure_array */: l_r = l_c(l__g.h_expr, l_st); break;
		case 7/* ident */: l_r = false; break;
		case 8/* self */: l_r = false; break;
		case 9/* other */: l_r = false; break;
		case 10/* global_ref */: l_r = false; break;
		case 11/* script */: l_r = false; break;
		case 0/* undefined */: l_r = false; break;
		case 14/* arg_const */: l_r = false; break;
		case 15/* arg_index */: l_r = l_c(l__g.h_id, l_st); break;
		case 16/* arg_count */: l_r = false; break;
		case 17/* call */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_x, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 18/* call_script */:
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 19/* call_script_at */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_inst, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 20/* call_script_id */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_index, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 21/* call_script_with_array */:
			var l_l_array = l__g.h_array;
			l_r = l_c(l__g.h_index, l_st) || l_c(l_l_array, l_st);
			break;
		case 22/* call_field */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_inst, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 23/* call_func */:
			l_w = l__g.h_args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 24/* call_func_at */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_x, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 25/* construct */:
			var l_l_args = l__g.h_args;
			if (l_c(l__g.h_ctr, l_st)) {
				l_r = true;
			} else {
				l_w = l_l_args;
				l_n = array_length(l_w);
				for (l_i = 0; l_i < l_n; l_i++) {
					if (l_c(l_w[l_i], l_st)) break;
				}
				l_r = l_i < l_n;
			}
			break;
		case 26/* func_literal */: l_r = false; break;
		case 27/* prefix */: l_r = l_c(l__g.h_x, l_st); break;
		case 28/* postfix */: l_r = l_c(l__g.h_x, l_st); break;
		case 29/* un_op */: l_r = l_c(l__g.h_x, l_st); break;
		case 30/* bin_op */:
			var l_l_b = l__g.h_b;
			l_r = l_c(l__g.h_a, l_st) || l_c(l_l_b, l_st);
			break;
		case 94/* ternary */:
			var l_l_not = l__g.h_not;
			var l_l_then = l__g.h_then;
			l_r = l_c(l__g.h_cond, l_st) || l_c(l_l_then, l_st) || l_c(l_l_not, l_st);
			break;
		case 32/* to_bool */: l_r = l_c(l__g.h_v, l_st); break;
		case 33/* from_bool */: l_r = l_c(l__g.h_v, l_st); break;
		case 34/* in */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_fd, l_st) || l_c(l_l_val, l_st);
			break;
		case 35/* local */: l_r = false; break;
		case 36/* local_set */: l_r = l_c(l__g.h_val, l_st); break;
		case 37/* local_aop */: l_r = l_c(l__g.h_val, l_st); break;
		case 38/* global */: l_r = false; break;
		case 39/* global_set */: l_r = l_c(l__g.h_val, l_st); break;
		case 41/* field */: l_r = l_c(l__g.h_x, l_st); break;
		case 42/* field_set */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_val, l_st);
			break;
		case 43/* field_aop */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_val, l_st);
			break;
		case 44/* env */: l_r = false; break;
		case 45/* env_set */: l_r = l_c(l__g.h_val, l_st); break;
		case 46/* env_aop */: l_r = l_c(l__g.h_val, l_st); break;
		case 47/* env_fd */: l_r = l_c(l__g.h_x, l_st); break;
		case 48/* env_fd_set */:
			var l_l_v = l__g.h_v;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_v, l_st);
			break;
		case 49/* env_fd_aop */:
			var l_l_v = l__g.h_v;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_v, l_st);
			break;
		case 50/* env1d */: l_r = l_c(l__g.h_k, l_st); break;
		case 51/* env1d_set */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_k, l_st) || l_c(l_l_val, l_st);
			break;
		case 52/* env1d_aop */:
			var l_l_val = l__g.h_val;
			l_r = l_c(l__g.h_k, l_st) || l_c(l_l_val, l_st);
			break;
		case 53/* alarm */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 54/* alarm_set */:
			var l_l_v = l__g.h_v;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_v, l_st);
			break;
		case 55/* alarm_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_v, l_st);
			break;
		case 56/* index */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st);
			break;
		case 57/* index_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 58/* index_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 59/* index_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 60/* index_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 61/* index2d */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 62/* index2d_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 63/* index2d_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 64/* index2d_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 65/* index2d_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 66/* raw_id */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st);
			break;
		case 67/* raw_id_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 68/* raw_id_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 69/* raw_id_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 70/* raw_id_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 71/* raw_id2d */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 72/* raw_id2d_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 73/* raw_id2d_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 74/* raw_id2d_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 75/* raw_id2d_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 76/* ds_list */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st);
			break;
		case 77/* ds_list_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 78/* ds_list_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 79/* ds_list_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 80/* ds_list_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 81/* ds_map */:
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st);
			break;
		case 82/* ds_map_set */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 83/* ds_map_aop */:
			var l_l_v = l__g.h_v;
			var l_l_id = l__g.h_id;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 84/* ds_map_prefix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 85/* ds_map_postfix */:
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st);
			break;
		case 86/* ds_grid */:
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 87/* ds_grid_set */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 88/* ds_grid_aop */:
			var l_l_v = l__g.h_v;
			var l_l_i2 = l__g.h_i2;
			var l_l_i1 = l__g.h_i1;
			l_r = l_c(l__g.h_lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 89/* ds_grid_prefix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 90/* ds_grid_postfix */:
			var l_l_k = l__g.h_k;
			var l_l_i = l__g.h_i;
			l_r = l_c(l__g.h_x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 91/* var_decl */:
			var l_l_value = l__g.h_value;
			l_r = l_l_value != undefined && l_c(l_l_value, l_st);
			break;
		case 92/* block */:
			l_w = l__g.h_nodes;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 93/* if_then */:
			var l_l_not = l__g.h_not;
			var l_l_then = l__g.h_then;
			l_r = l_c(l__g.h_cond, l_st) || l_c(l_l_then, l_st) || l_l_not != undefined && l_c(l_l_not, l_st);
			break;
		case 118/* comment_block_post */: l_r = l_c(l__g.h_x, l_st); break;
		case 31/* set_op */:
			var l_l_b = l__g.h_b;
			l_r = l_c(l__g.h_a, l_st) || l_c(l_l_b, l_st);
			break;
		case 96/* wait */: l_r = l_c(l__g.h_time, l_st); break;
		case 97/* fork */: l_r = false; break;
		case 98/* while */:
			var l_l_node = l__g.h_node;
			l_r = l_c(l__g.h_cond, l_st) || l_c(l_l_node, l_st);
			break;
		case 99/* do_until */:
			var l_l_cond = l__g.h_cond;
			l_r = l_c(l__g.h_node, l_st) || l_c(l_l_cond, l_st);
			break;
		case 100/* do_while */:
			var l_l_cond = l__g.h_cond;
			l_r = l_c(l__g.h_node, l_st) || l_c(l_l_cond, l_st);
			break;
		case 101/* repeat */:
			var l_l_node = l__g.h_node;
			l_r = l_c(l__g.h_times, l_st) || l_c(l_l_node, l_st);
			break;
		case 102/* for */:
			var l_l_loop = l__g.h_loop;
			var l_l_post = l__g.h_post;
			var l_l_cond = l__g.h_cond;
			l_r = l_c(l__g.h_pre, l_st) || l_c(l_l_cond, l_st) || l_c(l_l_post, l_st) || l_c(l_l_loop, l_st);
			break;
		case 103/* with */:
			var l_l_node = l__g.h_node;
			l_r = l_c(l__g.h_ctx, l_st) || l_c(l_l_node, l_st);
			break;
		case 104/* once */: l_r = l_c(l__g.h_node, l_st); break;
		case 105/* return */: l_r = l_c(l__g.h_v, l_st); break;
		case 106/* exit */: l_r = false; break;
		case 107/* break */: l_r = false; break;
		case 108/* continue */: l_r = false; break;
		case 109/* debugger */: l_r = false; break;
		case 110/* try_catch */:
			var l_l_cat = l__g.h_cat;
			l_r = l_c(l__g.h_node, l_st) || l_c(l_l_cat, l_st);
			break;
		case 111/* throw */: l_r = l_c(l__g.h_x, l_st); break;
		case 112/* comment_line */: l_r = false; break;
		case 113/* comment_line_pre */: l_r = l_c(l__g.h_x, l_st); break;
		case 114/* comment_line_post */: l_r = l_c(l__g.h_x, l_st); break;
		case 115/* comment_line_sep */: l_r = l_c(l__g.h_x, l_st); break;
		case 116/* comment_block */: l_r = false; break;
		case 117/* comment_block_pre */: l_r = l_c(l__g.h_x, l_st); break;
		case 40/* global_aop */: l_r = l_c(l__g.h_val, l_st); break;
		case 13/* const */: l_r = false; break;
		case 4/* array_decl */:
			l_w = l__g.h_values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 1/* number */: l_r = false; break;
		case 12/* native_script */: l_r = false; break;
		case 95/* switch */:
			var l_o = l__g.h_def;
			var l_m = l__g.h_list;
			if (l_c(l__g.h_expr, l_st)) {
				l_r = true;
			} else {
				l_n = array_length(l_m);
				for (l_i = 0; l_i < l_n; l_i++) {
					l_w = l_m[l_i].values;
					l_l = array_length(l_w);
					for (l_k = 0; l_k < l_l; l_k++) {
						if (l_c(l_w[l_k], l_st)) break;
					}
					if (l_k < l_l || l_c(l_m[l_i].expr, l_st)) break;
				}
				if (l_i < l_n) l_r = true; else l_r = l_o != undefined && l_c(l_o, l_st);
			}
			break;
	}
	if (l_st != undefined) ds_list_delete(l_st, 0);
	return l_r;
}

#endregion

#region ast.gml_node_tools_ni

if (live_enabled) function ast_gml_node_tools_ni_concat_pos_iter(l_q, l_st) {
	gml_std_haxe_enum_tools_setParameter(l_q, 0, gml_std_haxe_enum_tools_getParameter(l_q, 0).h_concat(ast_gml_node_tools_ni_concat_pos_pos));
	return gml_node_seek(l_q, undefined, ast_gml_node_tools_ni_concat_pos_iter);
}

if (live_enabled) function ast_gml_node_tools_ni_concat_pos_rec(l_q, l_p) {
	ast_gml_node_tools_ni_concat_pos_pos = l_p;
	ast_gml_node_tools_ni_concat_pos_iter(l_q, undefined);
}

#endregion

#region gml.op

if (live_enabled) function gml_op_get_priority(l_op) {
	return (l_op >> 4);
}

if (live_enabled) function gml_op_get_name(l_this1) {
	switch (l_this1) {
		case 1: return "Div";
		case 2: return "Mod";
		case 7: return "priorities";
		case 16: return "Add";
		case 17: return "Sub";
		case 18: return "Cct";
		case 32: return "Shl";
		case 33: return "Shr";
		case 48: return "Or";
		case 49: return "And";
		case 64: return "EQ";
		case 65: return "NE";
		case 66: return "LT";
		case 67: return "LE";
		case 68: return "GT";
		case 69: return "GE";
		case 80: return "BAnd";
		case 96: return "BOr";
		case 50: return "Xor";
		case 3: return "IDiv";
		case 0: return "Mul";
		case -1: return "Set";
		default: return undefined;
	}
}

#endregion

#region gml.pos

if (live_enabled) function gml_pos(l_src, l_row, l_col) constructor {
	var this = self;
	static h_src = undefined;
	static h_row = undefined;
	static h_col = undefined;
	static h_next = undefined;
	static h_copy = function() {
		var this = self;
		var l_r = new gml_pos(self.h_src, self.h_row, self.h_col);
		if (self.h_next != undefined) l_r.h_next = self.h_next.h_copy();
		return l_r;
	}
	static h_concat = function(l_p) {
		var this = self;
		var l_r = l_p.h_copy();
		var l_l = l_r;
		while (l_l.h_next != undefined) {
			l_l = l_l.h_next;
		}
		l_l.h_next = self;
		return l_r;
	}
	static h_to_string = function() {
		var this = self;
		var l_r = self.h_src.h_name + ("[L" + string(self.h_row) + ",c" + string(self.h_col) + "]");
		if (self.h_next != undefined) l_r += ">" + self.h_next.h_to_string();
		return l_r;
	}
	var this = self;
	self.h_next = undefined;
	self.h_src = l_src;
	self.h_row = l_row;
	self.h_col = l_col;
	static __class__ = mt_gml_pos;
}
if (live_enabled) mt_gml_pos.h_constructor = gml_pos;

#endregion

#region gml.script

if (live_enabled) function gml_script(l_src, l_name, l_pos) constructor {
	var this = self;
	static h_name = undefined;
	static h_pos = undefined;
	static h_index = undefined;
	static h_node = undefined;
	static h_source = undefined;
	static h_local_map = undefined;
	static h_locals = undefined;
	static h_arguments = undefined;
	static h_named_args = undefined;
	static h_actions = undefined;
	static h_destroy = function() {
		var this = self;
		if (self.h_actions != undefined) {
			var l_this1 = self.h_actions;
			var l_i = 0;
			for (var l__g1 = ds_list_size(l_this1); l_i < l__g1; l_i++) {
				var l_q = l_this1[|l_i];
				if (l_q.__enumIndex__/* gml_action */ == 62/* switch */) ds_map_destroy(l_q.h_jumptable);
			}
			ds_list_destroy(l_this1);
		}
	}
	static h_seek = function(l_iter, l_stack) {
		var this = self;
		var l__scr = gml_program_seek_script;
		gml_program_seek_script = self;
		l_iter(self.h_node, l_stack);
		gml_program_seek_script = l__scr;
	}
	var this = self;
	self.h_actions = undefined;
	self.h_named_args = undefined;
	self.h_arguments = 0;
	self.h_locals = 0;
	self.h_local_map = new haxe_ds_string_map();
	self.h_source = l_src;
	self.h_name = l_name;
	self.h_pos = l_pos;
	static __class__ = mt_gml_script;
}
if (live_enabled) mt_gml_script.h_constructor = gml_script;

#endregion

#region gml.source

function gml_source(l_name, l_code, l_main, l_opt) constructor {
	var this = self;
	static h_name = undefined;
	static h_code = undefined;
	static h_main = undefined;
	static h_length = undefined;
	static h_opt = undefined;
	static h_tokens = undefined;
	static h_token_count = undefined;
	static h___eof = undefined;
	static h_eof = undefined;
	static h_get_eof = function() {
		var this = self;
		if (live_enabled) {
			if (self.h___eof == undefined) self.h___eof = new gml_pos(self, string_count("\n", self.h_code) + 2, 1);
			return self.h___eof;
		} else return undefined;
	}
	static h_to_string = function() {
		var this = self;
		if (live_enabled) {
			return "GmlSource(\"" + self.h_name + "\")";
		} else return undefined;
	}
	var this = self;
	if (l_opt == undefined) l_opt = false;
	if (false) throw argument[3];
	if (live_enabled) {
		self.h___eof = undefined;
		self.h_token_count = 0;
		self.h_tokens = undefined;
		self.h_name = l_name;
		self.h_code = l_code;
		self.h_opt = l_opt;
		if (l_main == undefined) {
			l_main = l_name;
			var l_i = gml_std_string_pos_last(l_main, "/");
			var l_k = gml_std_string_pos_last(l_main, "\\");
			if (l_i < 0 || l_k > l_i) l_i = l_k;
			l_i = gml_std_string_pos_ext(l_main, ".");
			if (l_i >= 0) l_main = gml_std_string_substring(l_main, 0, l_i);
		}
		self.h_main = l_main;
		self.h_length = string_length(l_code);
	}
	static __class__ = mt_gml_source;
}
if (live_enabled) mt_gml_source.h_constructor = gml_source;

#endregion

#region gml.token

if (live_enabled) function mc_gml_token() constructor {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_token;
}

if (live_enabled) function mc_gml_token_header() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_name", "h_lb"];
	static __enumIndex__ = 0;
}

if (live_enabled) function gml_token_header(l_h_d, l_h_name, l_h_lb) {
	var this = new mc_gml_token_header();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	this.h_lb = l_h_lb;
	return this
}

if (live_enabled) function mc_gml_token_macro() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 1;
}

if (live_enabled) function gml_token_macro(l_h_d) {
	var this = new mc_gml_token_macro();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_hash() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 2;
}

if (live_enabled) function gml_token_hash(l_h_d) {
	var this = new mc_gml_token_hash();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_semico() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 3;
}

if (live_enabled) function gml_token_semico(l_h_d) {
	var this = new mc_gml_token_semico();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_comma() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 4;
}

if (live_enabled) function gml_token_comma(l_h_d) {
	var this = new mc_gml_token_comma();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_period() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 5;
}

if (live_enabled) function gml_token_period(l_h_d) {
	var this = new mc_gml_token_period();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_colon() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 6;
}

if (live_enabled) function gml_token_colon(l_h_d) {
	var this = new mc_gml_token_colon();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_qmark() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 7;
}

if (live_enabled) function gml_token_qmark(l_h_d) {
	var this = new mc_gml_token_qmark();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_at_sign() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 8;
}

if (live_enabled) function gml_token_at_sign(l_h_d) {
	var this = new mc_gml_token_at_sign();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_keyword() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_kw"];
	static __enumIndex__ = 9;
}

if (live_enabled) function gml_token_keyword(l_h_d, l_h_kw) {
	var this = new mc_gml_token_keyword();
	this.h_d = l_h_d;
	this.h_kw = l_h_kw;
	return this
}

if (live_enabled) function mc_gml_token_ident() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 10;
}

if (live_enabled) function gml_token_ident(l_h_d, l_h_id) {
	var this = new mc_gml_token_ident();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_token_env() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_id"];
	static __enumIndex__ = 11;
}

if (live_enabled) function gml_token_env(l_h_d, l_h_id) {
	var this = new mc_gml_token_env();
	this.h_d = l_h_d;
	this.h_id = l_h_id;
	return this
}

if (live_enabled) function mc_gml_token_undefined() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 12;
}

if (live_enabled) function gml_token_undefined(l_h_d) {
	var this = new mc_gml_token_undefined();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_number() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_nu", "h_src"];
	static __enumIndex__ = 13;
}

if (live_enabled) function gml_token_number(l_h_d, l_h_nu, l_h_src) {
	var this = new mc_gml_token_number();
	this.h_d = l_h_d;
	this.h_nu = l_h_nu;
	this.h_src = l_h_src;
	return this
}

if (live_enabled) function mc_gml_token_cstring() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_st"];
	static __enumIndex__ = 14;
}

if (live_enabled) function gml_token_cstring(l_h_d, l_h_st) {
	var this = new mc_gml_token_cstring();
	this.h_d = l_h_d;
	this.h_st = l_h_st;
	return this
}

if (live_enabled) function mc_gml_token_un_op() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_op"];
	static __enumIndex__ = 15;
}

if (live_enabled) function gml_token_un_op(l_h_d, l_h_op) {
	var this = new mc_gml_token_un_op();
	this.h_d = l_h_d;
	this.h_op = l_h_op;
	return this
}

if (live_enabled) function mc_gml_token_in() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 16;
}

if (live_enabled) function gml_token_in(l_h_d) {
	var this = new mc_gml_token_in();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_adjfix() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_inc"];
	static __enumIndex__ = 17;
}

if (live_enabled) function gml_token_adjfix(l_h_d, l_h_inc) {
	var this = new mc_gml_token_adjfix();
	this.h_d = l_h_d;
	this.h_inc = l_h_inc;
	return this
}

if (live_enabled) function mc_gml_token_bin_op() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_op"];
	static __enumIndex__ = 18;
}

if (live_enabled) function gml_token_bin_op(l_h_d, l_h_op) {
	var this = new mc_gml_token_bin_op();
	this.h_d = l_h_d;
	this.h_op = l_h_op;
	return this
}

if (live_enabled) function mc_gml_token_set_op() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_op"];
	static __enumIndex__ = 19;
}

if (live_enabled) function gml_token_set_op(l_h_d, l_h_op) {
	var this = new mc_gml_token_set_op();
	this.h_d = l_h_d;
	this.h_op = l_h_op;
	return this
}

if (live_enabled) function mc_gml_token_par_open() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 20;
}

if (live_enabled) function gml_token_par_open(l_h_d) {
	var this = new mc_gml_token_par_open();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_par_close() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 21;
}

if (live_enabled) function gml_token_par_close(l_h_d) {
	var this = new mc_gml_token_par_close();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_sqb_open() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 22;
}

if (live_enabled) function gml_token_sqb_open(l_h_d) {
	var this = new mc_gml_token_sqb_open();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_sqb_close() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 23;
}

if (live_enabled) function gml_token_sqb_close(l_h_d) {
	var this = new mc_gml_token_sqb_close();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_cub_open() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 24;
}

if (live_enabled) function gml_token_cub_open(l_h_d) {
	var this = new mc_gml_token_cub_open();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_cub_close() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 25;
}

if (live_enabled) function gml_token_cub_close(l_h_d) {
	var this = new mc_gml_token_cub_close();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_token_arg_const() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 26;
}

if (live_enabled) function gml_token_arg_const(l_h_d, l_h_i) {
	var this = new mc_gml_token_arg_const();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_token_comment_post() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_s"];
	static __enumIndex__ = 27;
}

if (live_enabled) function gml_token_comment_post(l_h_d, l_h_s) {
	var this = new mc_gml_token_comment_post();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_token_comment_line() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_s"];
	static __enumIndex__ = 28;
}

if (live_enabled) function gml_token_comment_line(l_h_d, l_h_s) {
	var this = new mc_gml_token_comment_line();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_token_comment_block() : mc_gml_token() constructor {
	static __enumParams__ = ["h_d", "h_s", "h_pl"];
	static __enumIndex__ = 29;
}

if (live_enabled) function gml_token_comment_block(l_h_d, l_h_s, l_h_pl) {
	var this = new mc_gml_token_comment_block();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	this.h_pl = l_h_pl;
	return this
}

#endregion

#region gml

if (live_enabled) function gml_api_print() {
	var l_b = buffer_create(1024, buffer_grow, 1);
	var l_m = gml_sig_list;
	var l_i = 0;
	for (var l__g1 = ds_list_size(l_m); l_i < l__g1; l_i++) {
		buffer_write(l_b, buffer_text, l_m[|l_i]);
		buffer_write(l_b, buffer_u8, 13);
		buffer_write(l_b, buffer_u8, 10);
	}
	buffer_write(l_b, buffer_u8, 0);
	buffer_seek(l_b, buffer_seek_start, 0);
	var l_s = buffer_read(l_b, buffer_string);
	buffer_delete(l_b);
	return l_s;
}

function gml_note_add(l_text) {
	if (live_enabled) {
		if (l_text != "") {
			if (string_pos(chr(10), l_text) > 0) {
				var l__n = chr(10);
				var l__rn = chr(13) + l__n;
				l_text = string_replace_all(l_text, l__rn, l__n);
				l_text = "/**" + l__rn + " * " + string_replace_all(l_text, l__n, l__rn + " * ") + l__rn + " */";
			} else switch (string_char_at(l_text, 1)) {
				case "{": case "}": l_text = "//" + l_text; break;
				case "/": break;
				default: l_text = "/// " + l_text;
			}
		}
		ds_list_add(gml_sig_list, l_text);
	}
}

if (live_enabled) function gml_parse_name(l_s, l_i) {
	var l_c = string_ord_at(l_s, l_i + 1);
	if (l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c == 95) {
		var l_k = l_i;
		while (true) {
			l_i++;
			l_c = string_ord_at(l_s, l_i + 1);
			if (!(l_c == 95 || l_c >= 97 && l_c <= 122 || l_c >= 65 && l_c <= 90 || l_c >= 48 && l_c <= 57)) break;
		}
		return gml_std_string_substring(l_s, l_k, l_i);
	} else throw gml_std_haxe_Exception_thrown("API.parseName: wrong format in " + l_s);
}

if (live_enabled) function gml_func_add(l_signature, l_func) {
	var l_s = l_signature;
	ds_list_add(gml_sig_list, l_s);
	var l_p0 = gml_std_string_pos_ext(l_s, "(") + 1;
	var l_p1 = gml_std_string_pos_ext(l_s, ")");
	var l_argv = gml_std_StringTools_trim(gml_std_string_substring(l_s, l_p0, l_p1));
	var l_flags = gml_std_string_substring(l_s, l_p1 + 1);
	var l_argc, l_arg1;
	var l_arg0 = -1;
	var l_argt;
	var l_rest = gml_type_check_any;
	if (l_argv == "") {
		l_argc = 0;
		l_arg1 = 0;
		l_argt = array_create(0);
	} else {
		var l_args1 = gml_std_string_split(l_argv, ",");
		l_argc = array_length(l_args1);
		l_arg1 = l_argc;
		l_argt = array_create(l_argc);
		var l_tmap = gml_type_check_map;
		var l_i = 0;
		for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
			var l_arg = l_args1[l_i];
			var l_pos = gml_std_string_pos_ext(l_arg, "=");
			var l_opt = false;
			if (l_pos >= 0) {
				l_opt = true;
				l_arg = gml_std_string_substring(l_arg, 0, l_pos);
			} else if (gml_std_string_pos_ext(l_arg, "...") >= 0) {
				l_arg1 = 81;
				l_argc = -1;
				l_opt = true;
			}
			l_pos = gml_std_string_pos_ext(l_arg, ":");
			var l_tfun;
			if (l_pos >= 0) {
				if (gml_std_string_pos_ext(gml_std_string_substring(l_arg, 0, l_pos), "?") >= 0) l_opt = true;
				var l_type = gml_std_StringTools_trim(gml_std_string_substring(l_arg, l_pos + 1));
				if (l_tmap.h_exists(l_type)) {
					var l_tfun1 = l_tmap.h_get(l_type);
					if (gml_std_string_pos_ext(l_arg, "...") >= 0) l_rest = l_tfun1;
					l_argt[@l_i] = l_tfun1;
				} else throw gml_std_haxe_Exception_thrown("\"" + l_type + "\" is not a known type.");
			} else l_argt[@l_i] = gml_type_check_any;
			if (l_opt && l_arg0 < 0) l_arg0 = l_i;
		}
		if (gml_std_string_pos_ext(l_argv, "...") >= 0 || gml_std_string_pos_ext(l_argv, "?") >= 0 || gml_std_string_pos_ext(l_argv, "=") >= 0) l_argc = -1;
	}
	if (l_argc < 0) {
		if (l_arg0 < 0) l_arg0 = 0;
	} else {
		l_arg1 = l_argc;
		l_arg0 = l_argc;
	}
	var l_i = 0;
	var l_inst = 0;
	if (string_ord_at(l_s, l_i + 1) == 58) {
		l_i++;
		l_inst++;
	}
	if (string_ord_at(l_s, l_i + 1) == 58) {
		l_i++;
		l_inst++;
	}
	if (string_ord_at(l_s, l_i + 1) == 58) {
		l_i++;
		l_inst++;
	}
	if (string_ord_at(l_s, l_i + 1) == 36 && string_ord_at(l_s, l_i + 1 + 1) == 123) {
		var l_k = gml_std_string_pos_ext(l_s, "}", l_i + 2);
		if (l_k < 0) throw gml_std_haxe_Exception_thrown("Unclosed $(meta)");
		if (gml_std_string_substring(l_s, l_i + 2, l_k) == "raw") l_inst = -5; else throw gml_std_haxe_Exception_thrown("Unknown meta $(" + gml_std_string_substring(l_s, l_i + 2, l_k) + ")");
		l_i = l_k + 1;
	}
	var l_name = gml_parse_name(l_s, l_i);
	if (l_inst != 0) gml_inst_data.h_set(l_name, l_inst);
	gml_func_eval.h_set(l_name, gml_std_string_pos_ext(l_flags, "#") >= 0);
	gml_func_args.h_set(l_name, l_argt);
	gml_func_rest.h_set(l_name, l_rest);
	gml_func_arg0.h_set(l_name, l_arg0);
	gml_func_arg1.h_set(l_name, l_arg1);
	gml_func_script.h_set(l_name, l_func);
	gml_func_sig.h_set(l_name, l_s);
}

if (live_enabled) function gml_func_copy(l_to, l_from, l_note) {
	if (false) throw argument[2];
	if (!gml_func_script.h_exists(l_from)) throw gml_std_haxe_Exception_thrown("Can't find " + l_from);
	if (l_note != undefined) {
		gml_note_add("// " + gml_std_Std_stringify(l_note));
		var l_sig = gml_func_sig.h_get(l_from);
		var l_pos = gml_std_string_pos_ext(l_sig, l_from);
		l_sig = gml_std_string_substring(l_sig, 0, l_pos) + l_to + gml_std_string_substring(l_sig, l_pos + string_length(l_from));
		ds_list_add(gml_sig_list, l_sig);
	}
	gml_func_eval.h_set(l_to, gml_func_eval.h_get(l_from));
	gml_func_args.h_set(l_to, gml_func_args.h_get(l_from));
	gml_func_rest.h_set(l_to, gml_func_rest.h_get(l_from));
	gml_func_arg0.h_set(l_to, gml_func_arg0.h_get(l_from));
	gml_func_arg1.h_set(l_to, gml_func_arg1.h_get(l_from));
	gml_func_script.h_set(l_to, gml_func_script.h_get(l_from));
	gml_func_sig.h_set(l_to, gml_func_sig.h_get(l_from));
}

if (live_enabled) function gml_var_add(l_s, l_func) {
	ds_list_add(gml_sig_list, l_s);
	var l_flags = 0;
	if (string_ord_at(l_s, 1) == 58) {
		l_s = gml_std_string_substring(l_s, 1);
		l_flags |= 4;
	}
	var l_type = gml_type_check_any;
	var l_pos = gml_std_string_pos_ext(l_s, ":");
	if (l_pos >= 0) {
		var l_tstr = gml_std_string_substring(l_s, l_pos + 1);
		if (gml_type_check_map.h_exists(l_tstr)) {
			l_type = gml_type_check_map.h_get(l_tstr);
			l_s = gml_std_string_substring(l_s, 0, l_pos);
		} else throw gml_std_haxe_Exception_thrown("`" + l_tstr + "` is not a known type.");
	}
	var l_name = gml_parse_name(l_s, 0);
	if (gml_std_string_pos_ext(l_s, "[") >= 0) l_flags |= 2;
	if (gml_std_string_pos_ext(l_s, "*") >= 0) l_flags |= 1;
	gml_var_flags.h_set(l_name, l_flags);
	gml_var_refs.h_set(l_name, l_func);
	gml_var_types.h_set(l_name, l_type);
}

if (live_enabled) function gml_const_add(l_name, l_value) {
	ds_list_add(gml_sig_list, l_name + " = " + gml_value_print(l_value));
	gml_const_map.h_set(l_name, true);
	gml_const_val.h_set(l_name, l_value);
}

if (live_enabled) function gml_asset_add(l_name, l_index) {
	gml_asset_index.h_set(l_name, l_index);
}

#endregion

#region gml_std.haxe.type

if (live_enabled) function gml_std_haxe_type_get(l_obj) {
	if (is_struct(l_obj)) return l_obj.__class__; else return l_obj[0];
}

#endregion

#region gml_std.haxe.class

if (live_enabled) function gml_std_haxe_class(l_id, l_name) constructor {
	var this = self;
	static h_superClass = undefined;
	static h_constructor = undefined;
	static h_marker = undefined;
	static h_index = undefined;
	static h_name = undefined;
	var this = self;
	self.h_superClass = undefined;
	self.h_marker = gml_std_haxe_type_markerValue;
	self.h_index = l_id;
	self.h_name = l_name;
	static __class__ = "class";
}
if (live_enabled) mt_gml_std_haxe_class.h_constructor = gml_std_haxe_class;

#endregion

#region gml_std.haxe.enum

if (live_enabled) function gml_std_haxe_enum(l_id, l_name, l_constructors) constructor {
	var this = self;
	static h_constructors = undefined;
	static h_marker = undefined;
	static h_index = undefined;
	static h_name = undefined;
	var this = self;
	if (false) throw argument[2];
	self.h_marker = gml_std_haxe_type_markerValue;
	self.h_index = l_id;
	self.h_name = l_name;
	self.h_constructors = l_constructors;
	static __class__ = "enum";
}
if (live_enabled) mt_gml_std_haxe_enum.h_constructor = gml_std_haxe_enum;

#endregion

#region gml.seek_adjfix

if (live_enabled) function gml_seek_adjfix_proc(l_q, l_st) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 28/* postfix */:
			var l_b = l__g.h_inc;
			var l_x = l__g.h_x;
			var l_d = l__g.h_d;
			var l_pre;
			if (l_q.__enumIndex__/* gml_node */ == 27/* prefix */) l_pre = true; else l_pre = false;
			var l_o;
			var l_inBlock = gml_node_is_in_block(l_x, l_st[|0]);
			if (l_pre || l_inBlock) {
				var l__g = l_x;
				switch (l__g.__enumIndex__/* gml_node */) {
					case 81/* ds_map */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l__g.h_lx, l__g.h_id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 76/* ds_list */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l__g.h_lx, l__g.h_id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 86/* ds_grid */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l__g.h_lx, l__g.h_i1, l__g.h_i2, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					default:
						if (l_inBlock) {
							l_o = (l_b ? 16 : 17);
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_set_op(l_d, l_o, l_x, gml_node_number(l_d, 1, undefined)));
						}
				}
			}
			break;
		case 27/* prefix */:
			var l_x = l__g.h_x;
			var l_d = l__g.h_d;
			var l_pre;
			if (l_q.__enumIndex__/* gml_node */ == 27/* prefix */) l_pre = true; else l_pre = false;
			var l_o;
			var l_inBlock = gml_node_is_in_block(l_x, l_st[|0]);
			if (l_pre || l_inBlock) {
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 81/* ds_map */:
						l_o = (l__g.h_inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l__g1.h_lx, l__g1.h_id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 76/* ds_list */:
						l_o = (l__g.h_inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l__g1.h_lx, l__g1.h_id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 86/* ds_grid */:
						l_o = (l__g.h_inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l__g1.h_lx, l__g1.h_i1, l__g1.h_i2, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					default:
						if (l_inBlock) {
							l_o = (l__g.h_inc ? 16 : 17);
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_set_op(l_d, l_o, l_x, gml_node_number(l_d, 1, undefined)));
						}
				}
			}
			break;
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_alarms

if (live_enabled) function gml_seek_alarms_check(l_x) {
	var l__g = l_x;
	if (l__g.__enumIndex__/* gml_node */ == 41/* field */) {
		if (l__g.h_fd == "alarm") return l__g.h_x; else return undefined;
	} else return undefined;
}

if (live_enabled) function gml_seek_alarms_proc(l_q, l_st) {
	var l_r;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 66/* raw_id */:
			l_r = gml_seek_alarms_check(l__g.h_x);
			if (l_r != undefined) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm(l__g.h_d, l_r, l__g.h_id));
			break;
		case 56/* index */:
			l_r = gml_seek_alarms_check(l__g.h_x);
			if (l_r != undefined) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm(l__g.h_d, l_r, l__g.h_id));
			break;
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_arguments

if (live_enabled) function gml_seek_arguments_proc(l_q, l_st) {
	gml_node_seek(l_q, l_st, gml_program_seek_func);
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 14/* arg_const */) {
		var l_i = l__g.h_id;
		if (gml_program_seek_script.h_arguments <= l_i) gml_program_seek_script.h_arguments = l_i + 1;
	}
	return false;
}

#endregion

#region gml.seek_calls

if (live_enabled) function gml_seek_calls_proc(l_q, l_st) {
	var l_i, l_n, l_s;
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 17/* call */) {
		var l_w = l__g.h_args;
		var l_x = l__g.h_x;
		var l_d = l__g.h_d;
		var l__g = l_x;
		switch (l__g.__enumIndex__/* gml_node */) {
			case 11/* script */:
				var l_o = l__g.h_ref;
				l_n = l_o.h_arguments;
				l_s = l_o.h_name;
				if (l_n <= 0 || array_length(l_w) == l_n) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script(l_d, l_s, l_w)); else return gml_program_seek_inst.h_error("Wrong number of arguments for `" + l_s + "`", l_d);
				break;
			case 41/* field */:
				var l_s = l__g.h_fd;
				if (gml_func_arg0.h_exists(l_s)) {
					if (gml_inst_data.h_exists(l_s)) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func_at(l_d, l__g.h_x, l_s, l_w)); else return gml_program_seek_inst.h_error("`" + l_s + "` cannot be called on an instance", l__g.h_d);
				} else if (gml_program_seek_inst.h_script_map.h_exists(l_s)) {
					l_n = gml_program_seek_inst.h_script_map.h_get(l_s).h_arguments;
					if (l_n <= 0 || array_length(l_w) == l_n) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script_at(l_d, l__g.h_x, l_s, l_w)); else return gml_program_seek_inst.h_error("Wrong number of arguments for `" + l_s + "`", l_d);
				} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_field(l_d, l__g.h_x, l_s, l_w));
				break;
			case 12/* native_script */:
				var l_s = l__g.h_name;
				var l_n0 = gml_func_arg0.h_get(l_s);
				if (l_n0 != undefined) {
					var l_n1 = gml_func_arg1.h_get(l_s);
					var l_wn = array_length(l_w);
					if (l_wn < l_n0 || l_wn > l_n1) {
						if (l_n0 == l_n1) {
							l_s = "`" + l_s + "` takes " + gml_std_Std_stringify(l_n0) + " argument";
							if (l_n0 != 1) l_s += "s";
						} else if (l_wn < l_n0) {
							l_s = "`" + l_s + "` requires at least " + gml_std_Std_stringify(l_n0) + " argument";
							if (l_n0 != 1) l_s += "s";
						} else {
							l_s = "`" + l_s + "` takes no more than " + gml_std_Std_stringify(l_n1) + " argument";
							if (l_n1 != 1) l_s += "s";
						}
						l_s += ", got " + string(l_wn);
						return gml_program_seek_inst.h_error(l_s, gml_std_haxe_enum_tools_getParameter(l_x, 0));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func(l_d, l_s, l_w));
				} else if (gml_parser_gml23) {
					gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script_id(l_d, l_x, l_w));
				} else return gml_program_seek_inst.h_error("`" + l_s + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
				break;
			case 7/* ident */:
				var l_s1 = l__g.h_id;
				var l_n0 = gml_func_arg0.h_get(l_s1);
				if (l_n0 != undefined) {
					var l_n1 = gml_func_arg1.h_get(l_s1);
					var l_wn = array_length(l_w);
					if (l_wn < l_n0 || l_wn > l_n1) {
						if (l_n0 == l_n1) {
							l_s1 = "`" + l_s1 + "` takes " + gml_std_Std_stringify(l_n0) + " argument";
							if (l_n0 != 1) l_s1 += "s";
						} else if (l_wn < l_n0) {
							l_s1 = "`" + l_s1 + "` requires at least " + gml_std_Std_stringify(l_n0) + " argument";
							if (l_n0 != 1) l_s1 += "s";
						} else {
							l_s1 = "`" + l_s1 + "` takes no more than " + gml_std_Std_stringify(l_n1) + " argument";
							if (l_n1 != 1) l_s1 += "s";
						}
						l_s1 += ", got " + string(l_wn);
						return gml_program_seek_inst.h_error(l_s1, gml_std_haxe_enum_tools_getParameter(l_x, 0));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func(l_d, l_s1, l_w));
				} else if (gml_parser_gml23) {
					gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script_id(l_d, l_x, l_w));
				} else return gml_program_seek_inst.h_error("`" + l_s1 + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
				break;
			default: if (gml_parser_gml23) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script_id(l_d, l_x, l_w)); else return gml_program_seek_inst.h_error("Expression is not callable", gml_std_haxe_enum_tools_getParameter(l_x, 0));
		}
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_enum_fields

if (live_enabled) function gml_seek_enum_fields_proc(l_q, l_st) {
	if (gml_node_seek(l_q, l_st, gml_program_seek_func)) return true;
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 41/* field */) {
		var l_f = l__g.h_fd;
		var l_x = l__g.h_x;
		var l_d = l__g.h_d;
		var l__g = l_x;
		if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
			var l_s = l__g.h_id;
			var l_e = gml_program_seek_inst.h_enum_map.h_get(l_s);
			if (l_e == undefined) l_e = gml_enum_map.h_get(l_s);
			if (l_e != undefined) {
				var l_c = l_e.h_ctr_map.h_get(l_f);
				if (l_c != undefined) {
					gml_std_haxe_enum_tools_setTo(l_q, gml_node_number(l_d, l_c.h_value, undefined));
					return false;
				} else return gml_program_seek_inst.h_error("Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
			}
		}
		if (gml_var_flags.h_exists(l_f)) {
			if ((gml_var_flags.h_get(l_f) & 4) == 0) return gml_program_seek_inst.h_error("`" + l_f + "` is not an instance-specific variable.", l_d);
		}
	}
	return false;
}

#endregion

#region gml.seek_enum_values

if (live_enabled) function gml_seek_enum_values_proc() {
	var l__g = 0;
	var l__g1 = gml_program_seek_inst.h_enum_array;
	while (l__g < array_length(l__g1)) {
		var l_e = l__g1[l__g];
		l__g++;
		var l_next = 0;
		var l__g2 = 0;
		var l__g3 = l_e.h_ctr_list;
		while (l__g2 < array_length(l__g3)) {
			var l_c = l__g3[l__g2];
			l__g2++;
			if (l_c.h_node != undefined) {
				var l_st = ds_list_create();
				var l__seekFunc = gml_program_seek_func;
				gml_program_seek_func = gml_seek_idents_proc;
				gml_program_seek_script = undefined;
				gml_seek_idents_proc(l_c.h_node, l_st);
				gml_program_seek_func = l__seekFunc;
				ds_list_destroy(l_st);
				gml_seek_eval_eval(l_c.h_node);
				var l_v = gml_seek_eval_node_to_value(l_c.h_node);
				if (is_numeric(l_v)) {
					l_c.h_value = floor(l_v);
					l_next = l_c.h_value + 1;
				} else if (l_v != gml_seek_eval_invalid_value) {
					return gml_program_seek_inst.h_error("Enum values should be integer", gml_std_haxe_enum_tools_getParameter(l_c.h_node, 0));
				} else return gml_program_seek_inst.h_error("Enum values should be constant", gml_std_haxe_enum_tools_getParameter(l_c.h_node, 0));
			} else l_c.h_value = l_next++;
		}
	}
	return false;
}

#endregion

#region gml.seek_eval

if (live_enabled) function gml_seek_eval_node_to_value(l_node) {
	var l__g = l_node;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: return undefined;
		case 1/* number */: return l__g.h_value;
		case 2/* cstring */: return l__g.h_value;
		case 13/* const */: return gml_const_val.h_get(l__g.h_id);
		case 12/* native_script */: return l__g.h_id;
		default: return gml_seek_eval_invalid_value;
	}
}

if (live_enabled) function gml_seek_eval_value_to_node(l_val, l_d) {
	if (is_bool(l_val)) {
		return gml_node_number(l_d, (l_val ? 1 : 0), undefined);
	} else if (is_numeric(l_val)) {
		return gml_node_number(l_d, l_val, undefined);
	} else if (is_string(l_val)) {
		return gml_node_cstring(l_d, l_val);
	} else if (l_val == undefined) {
		return gml_node_undefined(l_d);
	} else return undefined;
}

if (live_enabled) function gml_seek_eval_proc(l_q, l_st) {
	var l_f1, l_f2;
	var l_z = true;
	var l_v1, l_v2, l_i, l_n;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: break;
		case 1/* number */: break;
		case 2/* cstring */: break;
		case 13/* const */: break;
		case 30/* bin_op */:
			var l__g3 = l__g.h_o;
			if (l__g3 == 16) {
				var l_b = l__g.h_b;
				var l_a = l__g.h_a;
				var l_d = l__g.h_d;
				if (gml_seek_eval_proc(l_a, l_st)) l_z = false;
				if (gml_seek_eval_proc(l_b, l_st)) l_z = false;
				if (l_z) {
					l_v1 = gml_seek_eval_node_to_value(l_a);
					l_v2 = gml_seek_eval_node_to_value(l_b);
					if (is_string(l_v1)) {
						if (is_string(l_v2)) {
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_cstring(l_d, l_v1 + l_v2));
						} else {
							var l__g = l_b;
							if (l__g.__enumIndex__/* gml_node */ == 30/* bin_op */) {
								if (l__g.h_o == 16) {
									var l__hx_tmp = l__g.h_a;
									if (l__hx_tmp.__enumIndex__/* gml_node */ == 2/* cstring */) {
										gml_std_haxe_enum_tools_setTo(l_q, gml_node_bin_op(l_d, 16, gml_node_cstring(l_d, l_v1 + l__hx_tmp.h_value), l__g.h_b));
									} else {
										gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
										gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
										l_z = false;
									}
								} else {
									gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
									gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
									l_z = false;
								}
							} else {
								gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
								gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
								l_z = false;
							}
						}
					} else if (is_numeric(l_v1)) {
						if (is_numeric(l_v2)) {
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_number(l_d, l_v1 + l_v2, undefined));
						} else {
							gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
							gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
							l_z = false;
						}
					} else if (is_string(l_v2)) {
						var l__g = l_a;
						if (l__g.__enumIndex__/* gml_node */ == 30/* bin_op */) {
							if (l__g.h_o == 16) {
								var l__hx_tmp = l__g.h_b;
								if (l__hx_tmp.__enumIndex__/* gml_node */ == 2/* cstring */) {
									gml_std_haxe_enum_tools_setTo(l_q, gml_node_bin_op(l_d, 16, l__g.h_a, gml_node_cstring(l_d, l__hx_tmp.h_value + l_v2)));
								} else {
									gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
									gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
									l_z = false;
								}
							} else {
								gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
								gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
								l_z = false;
							}
						} else {
							gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
							gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
							l_z = false;
						}
					} else {
						gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
						gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
						l_z = false;
					}
				}
			} else {
				var l_b1 = l__g.h_b;
				var l_a1 = l__g.h_a;
				var l_d = l__g.h_d;
				var l_o = l__g3;
				if (gml_seek_eval_proc(l_a1, l_st)) l_z = false;
				if (gml_seek_eval_proc(l_b1, l_st)) l_z = false;
				if (l_z) {
					l_v1 = gml_seek_eval_node_to_value(l_a1);
					l_v2 = gml_seek_eval_node_to_value(l_b1);
					if (is_numeric(l_v1) && is_numeric(l_v2)) {
						l_f1 = l_v1;
						l_f2 = l_v2;
						switch (l_o) {
							case 16: l_f1 += l_f2; break;
							case 17: l_f1 -= l_f2; break;
							case 0: l_f1 *= l_f2; break;
							case 1: l_f1 /= l_f2; break;
							case 2: l_f1 %= l_f2; break;
							case 3: l_f1 = (l_f1 div l_f2); break;
							case 49: l_f1 = (l_f1 & l_f2); break;
							case 48: l_f1 = (l_f1 | l_f2); break;
							case 50: l_f1 = (l_f1 ^ l_f2); break;
							case 32: l_f1 = (l_f1 << l_f2); break;
							case 33: l_f1 = (l_f1 >> l_f2); break;
							case 64: l_f1 = l_f1 == l_f2; break;
							case 65: l_f1 = l_f1 != l_f2; break;
							case 67: l_f1 = l_f1 <= l_f2; break;
							case 69: l_f1 = l_f1 >= l_f2; break;
							case 66: l_f1 = l_f1 < l_f2; break;
							case 68: l_f1 = l_f1 > l_f2; break;
							case 80: l_f1 = l_f1 && l_f2; break;
							case 96: l_f1 = l_f1 || l_f2; break;
							default:
								gml_seek_eval_error_text = "Can't apply " + gml_op_get_name(l_o);
								gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
								l_z = false;
						}
						if (l_z) gml_std_haxe_enum_tools_setTo(l_q, gml_node_number(l_d, l_f1, undefined));
					} else {
						gml_seek_eval_error_text = "Can't apply " + gml_op_get_name(l_o) + " to " + gml_std_Type_enumConstructor(l_a1) + " and " + gml_std_Type_enumConstructor(l_b1);
						gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
						l_z = false;
					}
				}
			}
			break;
		case 23/* call_func */:
			var l_args1 = l__g.h_args;
			var l_name = l__g.h_funcName;
			l_n = array_length(l_args1);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_seek_eval_proc(l_args1[l_i], l_st)) l_z = false;
			}
			if (l_z && gml_func_eval.h_get(l_name)) {
				var l_evalArgs = array_create(l_n);
				var l_val;
				l_i = 0;
				while (l_i < l_n) {
					l_val = gml_seek_eval_node_to_value(l_args1[l_i]);
					if (l_val != gml_seek_eval_invalid_value) {
						l_evalArgs[@l_i] = l_val;
						l_i++;
					} else break;
				}
				if (l_i >= l_n) {
					var l_th = gml_seek_eval_eval_thread;
					if (l_th == undefined) {
						l_th = new gml_thread(gml_program_seek_inst, gml_seek_eval_eval_actions, array_create(0), array_create(0), undefined, undefined, 0);
						gml_seek_eval_eval_thread = l_th;
					}
					var l_th0 = gml_thread_current;
					gml_thread_current = l_th;
					l_th.h_status = gml_thread_status.running;
					var l_fn = gml_func_script.h_get(l_name);
					l_val = (l_n < 81 ? vm_gml_thread_exec_slice_funcs[l_n](l_fn, l_evalArgs, 0) : vm_gml_thread_exec_slice_error());
					gml_thread_current = l_th0;
					if (l_th.h_status != gml_thread_status.error) {
						var l_next = gml_seek_eval_value_to_node(l_val, gml_std_haxe_enum_tools_getParameter(l_q, 0));
						if (l_next != undefined) {
							gml_std_haxe_enum_tools_setTo(l_q, l_next);
						} else {
							gml_seek_eval_error_text = "Could not translate " + gml_value_print(l_val) + " (" + gml_value_get_type(l_val) + ") compile-time";
							gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
						}
					} else {
						gml_seek_eval_error_text = "Could not evaluate compile-time: " + l_th.h_error_text;
						gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
					}
				}
			}
			break;
		default:
			if (gml_seek_eval_eval_rec) {
				if (gml_node_seek(l_q, l_st, gml_seek_eval_proc)) l_z = false;
			} else {
				gml_seek_eval_error_text = gml_std_Type_enumConstructor(l_q) + " doesn't seem to be a constant expression.";
				gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
				l_z = false;
			}
	}
	return !l_z;
}

if (live_enabled) function gml_seek_eval_eval(l_q) {
	gml_seek_eval_eval_rec = false;
	var l_r = gml_seek_eval_proc(l_q, undefined);
	gml_seek_eval_eval_thread = undefined;
	return l_r;
}

if (live_enabled) function gml_seek_eval_opt() {
	gml_seek_eval_eval_rec = true;
	gml_program_seek_inst.h_seek(gml_seek_eval_proc);
	gml_seek_eval_eval_thread = undefined;
	return false;
}

#endregion

#region gml.seek_fields

if (live_enabled) function gml_seek_fields_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 41/* field */) {
		var l_s = l__g.h_fd;
		var l_x = l__g.h_x;
		var l_d = l__g.h_d;
		if (l_x.__enumIndex__/* gml_node */ == 10/* global_ref */) gml_std_haxe_enum_tools_setTo(l_q, gml_node_global(l_d, l_s));
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_idents

if (live_enabled) function gml_seek_idents_proc(l_q, l_st) {
	var l_d, l_s;
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
		l_d = l__g.h_d;
		l_s = l__g.h_id;
	} else {
		l_d = undefined;
		l_s = undefined;
	}
	if (l_d != undefined) while (true) {
		var l_scr = gml_program_seek_script;
		if (l_scr != undefined) {
			var l_i = l_scr.h_named_args.h_get(l_s);
			if (l_i != undefined) {
				gml_std_haxe_enum_tools_setTo(l_q, gml_node_arg_const(l_d, l_i));
				if (false) continue; else break;
			}
			l_i = l_scr.h_local_map.h_get(l_s);
			if (l_i != undefined) {
				gml_std_haxe_enum_tools_setTo(l_q, gml_node_local(l_d, l_s));
				if (false) continue; else break;
			}
		}
		var l_mcr = gml_program_seek_inst.h_macro_map.h_get(l_s);
		if (l_mcr != undefined) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_clone(l_mcr.h_node));
			ast_gml_node_tools_ni_concat_pos_rec(l_q, l_d);
			gml_seek_idents_proc(l_q, l_st);
			if (false) continue; else break;
		}
		if (gml_const_map.h_get(l_s) == true) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_seek_eval_value_to_node(gml_const_val.h_get(l_s), l_d));
			if (false) continue; else break;
		}
		var l_flags = gml_var_flags.h_get(l_s);
		if (l_flags != undefined) {
			if ((l_flags & 4) != 0) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd(l_d, gml_node_self(l_d), l_s)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env(l_d, l_s));
			if (ds_list_size(l_st) > 0) {
				var l__g = l_st[|0];
				switch (l__g.__enumIndex__/* gml_node */) {
					case 56/* index */:
						var l_k = l__g.h_id;
						var l_d1 = l__g.h_d;
						if ((l_flags & 2) != 0) gml_std_haxe_enum_tools_setTo(l_st[|0], gml_node_env1d(l_d1, l_s, l_k)); else return gml_program_seek_inst.h_error("`" + l_s + "` is not an array.", l_d1);
						break;
					case 61/* index2d */: return gml_program_seek_inst.h_error("`" + l_s + "` is not a 2d array.", l__g.h_d);
					default: if ((l_flags & 2) != 0) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d(l_d, l_s, gml_node_number(l_d, 0, undefined)));
				}
			}
			if (false) continue; else break;
		}
		var l_scr1 = gml_program_seek_inst.h_script_map.h_get(l_s);
		if (l_scr1 != undefined) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_script(l_d, l_scr1));
			if (false) continue; else break;
		}
		var l_fscr = gml_func_script_id.h_get(l_s);
		if (l_fscr != undefined) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_native_script(l_d, l_s, l_fscr));
			if (false) continue; else break;
		}
		if (!false) break;
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_locals

if (live_enabled) function gml_seek_locals_proc(l_q, l_st) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 110/* try_catch */:
			var l_s = l__g.h_cap;
			if (!gml_program_seek_script.h_local_map.h_exists(l_s)) gml_program_seek_script.h_local_map.h_set(l_s, gml_program_seek_script.h_locals++);
			break;
		case 91/* var_decl */:
			var l_s = l__g.h_name;
			if (!gml_program_seek_script.h_local_map.h_exists(l_s)) gml_program_seek_script.h_local_map.h_set(l_s, gml_program_seek_script.h_locals++);
			break;
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_self_fields

if (live_enabled) function gml_seek_self_fields_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
		var l_s = l__g.h_id;
		var l_d = l__g.h_d;
		gml_std_haxe_enum_tools_setTo(l_q, gml_node_field(l_d, gml_node_self(l_d), l_s));
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_set_op

if (live_enabled) function gml_seek_set_op_resolve_set_op_rfn(l_q, l_st) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 58/* index_aop */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.h_x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 62/* index2d_set */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.h_x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 63/* index2d_aop */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.h_x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 57/* index_set */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.h_x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 31/* set_op */:
			var l_v2 = l__g.h_b;
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.h_a)) {
				var l__g1 = l_v2;
				var l_tmp;
				if (l__g1.__enumIndex__/* gml_node */ == 4/* array_decl */) l_tmp = true; else l_tmp = false;
				gml_seek_set_op_resolve_set_op_safe = l_tmp;
				return true;
			}
			break;
	}
	return gml_node_seek_all(l_q, l_st, gml_seek_set_op_resolve_set_op_rfn);
}

if (live_enabled) function gml_seek_set_op_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 31/* set_op */) {
		var l_v = l__g.h_b;
		var l_x = l__g.h_a;
		var l_o = l__g.h_o;
		var l_d = l__g.h_d;
		var l__g = gml_node_unpack(l_x);
		switch (l__g.__enumIndex__/* gml_node */) {
			case 35/* local */:
				var l_s = l__g.h_id;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_local_aop(l_d, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_local_set(l_d, l_s, l_v));
				break;
			case 38/* global */:
				var l_s = l__g.h_id;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_global_aop(l_d, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_global_set(l_d, l_s, l_v));
				break;
			case 14/* arg_const */: break;
			case 15/* arg_index */: break;
			case 41/* field */:
				var l_s = l__g.h_fd;
				var l_x1 = l__g.h_x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_field_aop(l_d, l_x1, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_field_set(l_d, l_x1, l_s, l_v));
				break;
			case 53/* alarm */:
				var l_i = l__g.h_i;
				var l_x1 = l__g.h_x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm_aop(l_d, l_x1, l_i, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm_set(l_d, l_x1, l_i, l_v));
				break;
			case 61/* index2d */:
				var l_xw = l__g.h_x;
				var l_xd = l__g.h_d;
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 56/* index */:
						var l_xi = l__g1.h_id;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_aop(l_xd, l_xw, l_xi, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_set(l_xd, l_xw, l_xi, l_v));
						break;
					case 61/* index2d */:
						var l_i2 = l__g1.h_i2;
						var l_i1 = l__g1.h_i1;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_aop(l_xd, l_xw, l_i1, l_i2, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_set(l_xd, l_xw, l_i1, l_i2, l_v));
						break;
				}
				gml_seek_set_op_resolve_set_op_safe = false;
				gml_seek_set_op_resolve_set_op_xw = l_xw;
				gml_node_seek_all_out(l_q, l_st, gml_seek_set_op_resolve_set_op_rfn, 0);
				if (!gml_seek_set_op_resolve_set_op_safe) gml_std_haxe_enum_tools_setTo(l_q, gml_node_block(l_xd, [gml_node_ensure_array(l_xd, gml_node_clone(l_xw)), gml_node_clone(l_q)]));
				break;
			case 56/* index */:
				var l_xw = l__g.h_x;
				var l_xd = l__g.h_d;
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 56/* index */:
						var l_xi = l__g1.h_id;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_aop(l_xd, l_xw, l_xi, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_set(l_xd, l_xw, l_xi, l_v));
						break;
					case 61/* index2d */:
						var l_i2 = l__g1.h_i2;
						var l_i1 = l__g1.h_i1;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_aop(l_xd, l_xw, l_i1, l_i2, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_set(l_xd, l_xw, l_i1, l_i2, l_v));
						break;
				}
				gml_seek_set_op_resolve_set_op_safe = false;
				gml_seek_set_op_resolve_set_op_xw = l_xw;
				gml_node_seek_all_out(l_q, l_st, gml_seek_set_op_resolve_set_op_rfn, 0);
				if (!gml_seek_set_op_resolve_set_op_safe) gml_std_haxe_enum_tools_setTo(l_q, gml_node_block(l_xd, [gml_node_ensure_array(l_xd, gml_node_clone(l_xw)), gml_node_clone(l_q)]));
				break;
			case 44/* env */:
				var l_s = l__g.h_id;
				var l_f = gml_var_flags.h_get(l_s);
				if ((l_f & 1) == 0) {
					if ((l_f & 2) != 0) {
						var l_k = gml_node_number(l_d, 0, undefined);
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_aop(l_d, l_s, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_set(l_d, l_s, l_k, l_v));
					} else if (l_o != -1) {
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_aop(l_d, l_s, l_o, l_v));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_set(l_d, l_s, l_v));
				} else return gml_program_seek_inst.h_error("`" + l_s + "` is read-only", l__g.h_d);
				break;
			case 47/* env_fd */:
				var l_s = l__g.h_fd;
				if ((gml_var_flags.h_get(l_s) & 1) == 0) {
					if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd_aop(l_d, l__g.h_x, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd_set(l_d, l__g.h_x, l_s, l_v));
				} else return gml_program_seek_inst.h_error("`" + l_s + "` is read-only", l__g.h_d);
				break;
			case 50/* env1d */:
				var l_s = l__g.h_id;
				if ((gml_var_flags.h_get(l_s) & 1) == 0) {
					if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_aop(l_d, l_s, l__g.h_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_set(l_d, l_s, l__g.h_k, l_v));
				} else return gml_program_seek_inst.h_error("`" + l_s + "` is read-only", l__g.h_d);
				break;
			case 76/* ds_list */:
				var l_k = l__g.h_id;
				var l_x1 = l__g.h_lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_set(l_d, l_x1, l_k, l_v));
				break;
			case 81/* ds_map */:
				var l_k = l__g.h_id;
				var l_x1 = l__g.h_lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_set(l_d, l_x1, l_k, l_v));
				break;
			case 86/* ds_grid */:
				var l_k = l__g.h_i2;
				var l_i = l__g.h_i1;
				var l_x1 = l__g.h_lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l_x1, l_i, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_set(l_d, l_x1, l_i, l_k, l_v));
				break;
			case 66/* raw_id */:
				var l_k = l__g.h_id;
				var l_x1 = l__g.h_x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id_set(l_d, l_x1, l_k, l_v));
				break;
			case 71/* raw_id2d */:
				var l_k = l__g.h_i2;
				var l_i = l__g.h_i1;
				var l_x1 = l__g.h_x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id2d_aop(l_d, l_x1, l_i, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id2d_set(l_d, l_x1, l_i, l_k, l_v));
				break;
			default: return gml_program_seek_inst.h_error("Expression is not settable", gml_std_haxe_enum_tools_getParameter(l_x, 0));
		}
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml_std.gml.internal.ArrayImpl

if (live_enabled) function gml_std_gml_internal_ArrayImpl_push(l_arr, l_val) {
	var l_i = array_length(l_arr);
	l_arr[@l_i] = l_val;
	return l_i;
}

if (live_enabled) function gml_std_gml_internal_ArrayImpl_indexOf(l_arr, l_v, l_i) {
	if (l_i == undefined) l_i = 0;
	if (false) throw argument[2];
	var l_len = array_length(l_arr);
	if (l_i < 0) {
		l_i += l_len;
		if (l_i < 0) l_i = 0;
	}
	while (l_i < l_len) {
		if (l_arr[l_i] == l_v) return l_i;
		l_i++;
	}
	return -1;
}

if (live_enabled) function gml_std_gml_internal_ArrayImpl_join(l_arr, l_sep) {
	var l_len = array_length(l_arr);
	if (l_len == 0) return "";
	var l_buf = gml_std_gml_internal_ArrayImpl_join_buf;
	if (l_buf == undefined) {
		l_buf = buffer_create(1024, buffer_grow, 1);
		gml_std_gml_internal_ArrayImpl_join_buf = l_buf;
	}
	buffer_seek(l_buf, buffer_seek_start, 0);
	buffer_write(l_buf, buffer_text, gml_std_Std_stringify(l_arr[0]));
	var l_i = 1;
	for (var l__g1 = l_len; l_i < l__g1; l_i++) {
		buffer_write(l_buf, buffer_text, l_sep);
		buffer_write(l_buf, buffer_text, gml_std_Std_stringify(l_arr[l_i]));
	}
	buffer_write(l_buf, buffer_u8, 0);
	buffer_seek(l_buf, buffer_seek_start, 0);
	return buffer_read(l_buf, buffer_string);
}

if (live_enabled) function gml_std_gml_internal_ArrayImpl_slice(l_arr, l_pos, l_end) {
	if (false) throw argument[2];
	var l_len = array_length(l_arr);
	if (l_pos < 0) {
		l_pos += l_len;
		if (l_pos < 0) l_pos = 0;
	}
	if (l_end == undefined || l_end > l_len) l_end = l_len;
	var l_len = l_end - l_pos;
	var l_out = array_create(l_len);
	array_copy(l_out, 0, l_arr, l_pos, l_len);
	return l_out;
}

if (live_enabled) function gml_std_gml_internal_ArrayImpl_copy(l_arr) {
	var l_out;
	var l_len = array_length(l_arr);
	if (l_len > 0) {
		l_out = [];
		array_copy(l_out, 0, l_arr, 0, l_len);
	} else l_out = [];
	return l_out;
}

#endregion

#region haxe._dynamic_access.dynamic_access_impl_

if (live_enabled) function haxe__dynamic_access_dynamic_access_impl__copy(l_this1) {
	var l_fields = variable_struct_get_names(l_this1);
	var l_r = { }
	var l_i = 0;
	for (var l__g1 = array_length(l_fields); l_i < l__g1; l_i++) {
		var l_fd = l_fields[l_i];
		variable_struct_set(l_r, l_fd, variable_struct_get(l_this1, l_fd));
	}
	return l_r;
}

#endregion

#region gml_std.haxe.Exception

if (live_enabled) function gml_std_haxe_Exception_new(l_message, l_previous, l_native) {
	var this = self;
	if (false) throw argument[2];
	self.h_native = (l_native != undefined ? l_native : self);
}

if (live_enabled) function gml_std_haxe_Exception(l_message, l_previous, l_native) constructor {
	var this = self;
	static h_native = undefined;
	static h_unwrap = method(undefined, gml_std_haxe_Exception_h_unwrap);
	switch (argument_count) {
		case 1: method(self, gml_std_haxe_Exception_new)(argument[0]); break;
		case 2: method(self, gml_std_haxe_Exception_new)(argument[0], argument[1]); break;
		case 3: method(self, gml_std_haxe_Exception_new)(argument[0], argument[1], argument[2]); break;
		default: show_error("Expected 1..3 arguments.", true);
	}
	static __class__ = mt_gml_std_haxe_Exception;
}
if (live_enabled) mt_gml_std_haxe_Exception.h_constructor = gml_std_haxe_Exception;

if (live_enabled) function gml_std_haxe_Exception_isNativeException(l_value) {
	if (is_struct(l_value)) {
		var l_c = variable_struct_get(l_value, "__class__");
		if (l_c == undefined) return false;
		if (l_c == mt_gml_std_haxe_Exception) return true;
		if (!variable_struct_exists(l_value, "superClass")) return false;
		for (l_c = l_c.superClass; is_struct(l_c); l_c = l_c.superClass) {
			if (l_c == mt_gml_std_haxe_Exception) return true;
		}
	}
	return false;
}

if (live_enabled) function gml_std_haxe_Exception_caught(l_value) {
	if (gml_std_haxe_Exception_isNativeException(l_value)) return l_value;
	return new gml_std_haxe_ValueException(l_value);
}

if (live_enabled) function gml_std_haxe_Exception_thrown(l_value) {
	if (gml_std_haxe_Exception_isNativeException(l_value)) return l_value.h_native;
	return new gml_std_haxe_ValueException(l_value);
}

if (live_enabled) function gml_std_haxe_Exception_h_unwrap() {
	var this = self;
	return self.h_native;
}

#endregion

#region gml_std.haxe.ValueException

if (live_enabled) function gml_std_haxe_ValueException(l_value, l_previous, l_native) constructor {
	var this = self;
	static h_value = undefined;
	static h_unwrap = function() {
		var this = self;
		return self.h_value;
	}
	static h_native = undefined;
	var this = self;
	if (false) throw argument[2];
	method(self, gml_std_haxe_Exception_new)(string(l_value), l_previous, l_native);
	self.h_value = l_value;
	static __class__ = mt_gml_std_haxe_ValueException;
}
if (live_enabled) mt_gml_std_haxe_ValueException.h_constructor = gml_std_haxe_ValueException;

#endregion

#region haxe.ds.basic_map

if (live_enabled) function haxe_ds_basic_map_new() {
	var this = self;
	self.h_cached_keys = undefined;
	self.h_blanks = 0;
	self.h_obj = { }
}

if (live_enabled) function haxe_ds_basic_map() constructor {
	var this = self;
	static h_obj = undefined;
	static h_blanks = undefined;
	static h_cached_keys = undefined;
	static h_clear = method(undefined, haxe_ds_basic_map_h_clear);
	static h_exists = method(undefined, haxe_ds_basic_map_h_exists);
	static h_get = method(undefined, haxe_ds_basic_map_h_get);
	static h_set = method(undefined, haxe_ds_basic_map_h_set);
	method(self, haxe_ds_basic_map_new)();
	static __class__ = mt_haxe_ds_basic_map;
}
if (live_enabled) mt_haxe_ds_basic_map.h_constructor = haxe_ds_basic_map;

if (live_enabled) function haxe_ds_basic_map_h_clear() {
	var this = self;
	var l_obj = self.h_obj;
	var l_keys = variable_struct_get_names(l_obj);
	var l_keyCount = array_length(l_keys);
	if (self.h_blanks == l_keyCount) return 0;
	var l_blank = haxe_ds_basic_map_blank;
	var l_i = -1;
	while (++l_i < l_keyCount) {
		variable_struct_set(l_obj, l_keys[l_i], l_blank);
	}
	self.h_blanks = l_keyCount;
}

if (live_enabled) function haxe_ds_basic_map_h_exists(l_key) {
	var this = self;
	if (variable_struct_exists(self.h_obj, l_key)) {
		if (self.h_blanks > 0) return variable_struct_get(self.h_obj, l_key) != haxe_ds_basic_map_blank; else return true;
	} else return false;
}

if (live_enabled) function haxe_ds_basic_map_h_get(l_key) {
	var this = self;
	var l_val = variable_struct_get(self.h_obj, l_key);
	if (l_val != haxe_ds_basic_map_blank) return l_val; else return undefined;
}

if (live_enabled) function haxe_ds_basic_map_h_set(l_key, l_val) {
	var this = self;
	if (self.h_blanks > 0) {
		var l_cachedKeys = self.h_cached_keys;
		if (l_cachedKeys != undefined) {
			if (variable_struct_exists(self.h_obj, l_key)) {
				if (variable_struct_get(self.h_obj, l_key) == haxe_ds_basic_map_blank) self.h_blanks--;
			} else l_cachedKeys[@array_length(l_cachedKeys)] = l_key;
		} else if (variable_struct_get(self.h_obj, l_key) == haxe_ds_basic_map_blank) {
			self.h_blanks--;
		}
	}
	variable_struct_set(self.h_obj, l_key, l_val);
}

#endregion

#region haxe.ds.string_map

if (live_enabled) function haxe_ds_string_map() constructor {
	var this = self;
	static h_obj = undefined;
	static h_blanks = undefined;
	static h_cached_keys = undefined;
	static h_clear = method(undefined, haxe_ds_basic_map_h_clear);
	static h_exists = method(undefined, haxe_ds_basic_map_h_exists);
	static h_get = method(undefined, haxe_ds_basic_map_h_get);
	static h_set = method(undefined, haxe_ds_basic_map_h_set);
	var this = self;
	method(self, haxe_ds_basic_map_new)();
	static __class__ = mt_haxe_ds_string_map;
}
if (live_enabled) mt_haxe_ds_string_map.h_constructor = haxe_ds_string_map;

#endregion

#region haxe.iterators.array_iterator

if (live_enabled) function haxe_iterators_array_iterator(l_array1) constructor {
	var this = self;
	static h_array = undefined;
	static h_current = undefined;
	static h_has_next = function() {
		var this = self;
		return self.h_current < array_length(self.h_array);
	}
	static h_next = function() {
		var this = self;
		return self.h_array[self.h_current++];
	}
	var this = self;
	self.h_current = 0;
	self.h_array = l_array1;
	static __class__ = mt_haxe_iterators_array_iterator;
}
if (live_enabled) mt_haxe_iterators_array_iterator.h_constructor = haxe_iterators_array_iterator;

#endregion

#region live

if (live_enabled) function live_async_http_0(l_map) {
	var l_i, l_n, l_s, l_list, l_names, l_srcMap;
	live_is_ready = true;
	live_request_guid = l_map[?"guid"];
	if (l_map[?"version"] == undefined || l_map[?"version"] < 105) throw gml_std_haxe_Exception_thrown("Outdated GMLive server detected! Please update the included files from the extension.");
	l_list = l_map[?"shaders"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i++) {
		l_s = l_list[|l_i];
		gml_asset_add(l_s, asset_get_index(l_s));
	}
	l_list = l_map[?"scripts"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i += 2) {
		var l_scrName = l_list[|l_i];
		var l_scrFunc = asset_get_index(l_scrName);
		if (l_scrFunc == -1) l_scrFunc = asset_get_index(l_scrName);
		gml_func_add(l_list[|l_i + 1], l_scrFunc);
		gml_func_script_id.h_set(l_scrName, l_scrFunc);
	}
	l_list = l_map[?"globals"];
	l_n = ds_list_size(l_list);
	if (l_n > 0) {
		var l_buf = buffer_create(1024, buffer_grow, 1);
		buffer_seek(l_buf, buffer_seek_start, 0);
		buffer_write(l_buf, buffer_text, "globalvar ");
		buffer_write(l_buf, buffer_text, l_list[|0]);
		for (l_i = 1; l_i < l_n; l_i++) {
			buffer_write(l_buf, buffer_text, ", ");
			buffer_write(l_buf, buffer_text, l_list[|l_i]);
		}
		buffer_write(l_buf, buffer_string, ";");
		buffer_seek(l_buf, buffer_seek_start, 0);
		live_live_globals = new gml_source("globalvar", buffer_read(l_buf, buffer_string), "globalvar", true);
		buffer_delete(l_buf);
	} else live_live_globals = undefined;
	l_srcMap = live_live_macros;
	l_srcMap.h_clear();
	l_list = l_map[?"macros"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i += 2) {
		l_s = l_list[|l_i];
		var l_s1 = "macro:" + l_s;
		l_srcMap.h_set(l_s, new gml_source(l_s1, "#macro " + l_s + " " + gml_std_Std_stringify(l_list[|l_i + 1]), l_s1, true));
	}
	l_srcMap = live_live_enums;
	l_srcMap.h_clear();
	l_list = l_map[?"enums"];
	l_names = l_map[?"enumnames"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i++) {
		l_s = l_list[|l_i];
		l_s = l_names[|l_i];
		l_srcMap.h_set(l_s, new gml_source("enum " + l_s, l_list[|l_i], "enum " + l_s, true));
	}
	live_log("Ready!");
}

if (live_enabled) function live_async_http_1(l_map) {
	var l_list = l_map[?"files"];
	var l_n = ds_list_size(l_list);
	var l_name;
	var l_i = -1;
	while (++l_i < l_n) {
		var l_fmap = l_list[|l_i];
		var l_ident = l_fmap[?"ident"];
		var l_code = l_fmap[?"code"];
		l_name = l_fmap[?"name"];
		live_update_script(l_name, l_ident, l_code);
	}
	l_list = l_map[?"sprites"];
	if (l_list != undefined) {
		l_n = ds_list_size(l_list);
		l_i = -1;
		while (++l_i < l_n) {
			var l_sup = l_list[|l_i];
			l_name = l_sup[?"name"];
			var l_spr = asset_get_index(l_name);
			if (l_spr == -1) {
				live_log("Error: can't find sprite " + l_name + " for reload.");
				continue;
			}
			var l_sx = l_sup[?"xorig"];
			var l_sy = l_sup[?"yorig"];
			var l_frames = l_sup[?"frames"];
			var l_out = -1;
			var l_tmp = live_temp_path + ".png";
			var l_i1 = 0;
			for (var l__g1 = ds_list_size(l_frames); l_i1 < l__g1; l_i1++) {
				var l_tb = buffer_base64_decode(l_frames[|l_i1]);
				if (l_tb == -1) {
					live_log("Error: couldn't decode base64 for " + l_name + ".");
					continue;
				}
				buffer_save(l_tb, l_tmp);
				buffer_delete(l_tb);
				var l_ts = sprite_add(l_tmp, 1, false, false, l_sx, l_sy);
				if (l_ts == -1) {
					live_log("Error: couldn't load image " + string(l_i1) + " for " + l_name + ".");
					continue;
				}
				if (l_i1 != 0) sprite_merge(l_out, l_ts); else l_out = l_ts;
			}
			if (l_out != -1) {
				sprite_assign(l_spr, l_out);
				sprite_collision_mask(l_spr, l_sup[?"sepMasks"], l_sup[?"bboxMode"], l_sup[?"bboxLeft"], l_sup[?"bboxTop"], l_sup[?"bboxRight"], l_sup[?"bboxBottom"], l_sup[?"colKind"], l_sup[?"colTolerance"]);
				sprite_delete(l_out);
				live_log("Reloaded " + l_name + ".");
			}
			file_delete(l_tmp);
		}
	}
	l_list = l_map[?"shadersUpd"];
	if (l_list != undefined) {
		l_n = ds_list_size(l_list);
		l_i = -1;
		while (++l_i < l_n) {
			var l_sup = l_list[|l_i];
			l_name = l_sup[?"name"];
			live_shader_updated(asset_get_index(l_name), l_sup[?"vertex"], l_sup[?"fragment"]);
			live_log("Reloaded " + l_name + ".");
		}
	}
	l_list = l_map[?"rooms"];
	if (l_list != undefined) {
		l_n = ds_list_size(l_list);
		l_i = -1;
		while (++l_i < l_n) {
			var l_ru = l_list[|l_i];
			var l_rq = asset_get_index(l_ru[?"name"]);
			live_live_room_data[?l_rq] = l_ru[?"json"];
			live_room_updated(l_rq);
		}
	}
}

if (live_enabled) function live_async_http_check(l_e) {
	return l_e[?"id"] == live_request_id && l_e[?"status"] <= 0;
}

function live_async_http(l_e) {
	if (false) throw argument[0];
	if (live_enabled) {
		if (l_e == undefined) l_e = async_load;
		if (!live_async_http_check(l_e)) return 0;
		live_request_id = undefined;
		if (l_e[?"status"] < 0 || l_e[?"result"] == undefined) return 0;
		var l_json = l_e[?"result"];
		var l_map = json_decode(l_json);
		if (l_map == -1 || ds_map_exists(l_map, "default")) {
			if (string_char_at(l_json, 1) == "{" && string_char_at(l_json, string_length(l_json) - 1 + 1) == "]") l_json += "}";
			l_map = json_decode(l_json);
			if (l_map == -1 || ds_map_exists(l_map, "default")) {
				live_log("Invalid JSON response (" + gml_std_Std_stringify(string_length(l_json) / 1000) + " KB)");
				return 0;
			}
		}
		var l_list, l_i, l_n, l_s, l_srcs;
		if (live_request_guid == undefined) live_async_http_0(l_map);
		live_async_http_1(l_map);
		ds_map_destroy(l_map);
	}
}

#endregion

#region live_shader

if (live_enabled) function live_shader_updated_default(l__, l__1, l__2) {
	throw gml_std_haxe_Exception_thrown("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation");
}

function shader_set_live(l_sh, l_live1) {
	if (live_enabled) {
		var l_i;
		if (l_live1) {
			if (ds_map_exists(live_shader_live_shaders, l_sh)) return 0;
			live_shader_live_shaders[?l_sh] = true;
			l_i = ds_list_find_index(live_shader_live_shaders_stop, l_sh);
			if (l_i >= 0) ds_list_delete(live_shader_live_shaders_stop, l_i);
			ds_list_add(live_shader_live_shaders_start, l_sh);
		} else {
			if (!ds_map_exists(live_shader_live_shaders, l_sh)) return 0;
			ds_map_delete(live_shader_live_shaders, l_sh);
			l_i = ds_list_find_index(live_shader_live_shaders_start, l_sh);
			if (l_i >= 0) ds_list_delete(live_shader_live_shaders_start, l_i);
			ds_list_add(live_shader_live_shaders_stop, l_sh);
		}
	}
}

#endregion

#region gml.action

if (live_enabled) function mc_gml_action() constructor {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_action;
}

if (live_enabled) function mc_gml_action_discard() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 0;
}

if (live_enabled) function gml_action_discard(l_h_d) {
	var this = new mc_gml_action_discard();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_dup() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 1;
}

if (live_enabled) function gml_action_dup(l_h_d) {
	var this = new mc_gml_action_dup();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_dup2x() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 2;
}

if (live_enabled) function gml_action_dup2x(l_h_d) {
	var this = new mc_gml_action_dup2x();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_dup_in() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_z"];
	static __enumIndex__ = 3;
}

if (live_enabled) function gml_action_dup_in(l_h_d, l_h_z) {
	var this = new mc_gml_action_dup_in();
	this.h_d = l_h_d;
	this.h_z = l_h_z;
	return this
}

if (live_enabled) function mc_gml_action_undefined() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 4;
}

if (live_enabled) function gml_action_undefined(l_h_d) {
	var this = new mc_gml_action_undefined();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_number() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_f"];
	static __enumIndex__ = 5;
}

if (live_enabled) function gml_action_number(l_h_d, l_h_f) {
	var this = new mc_gml_action_number();
	this.h_d = l_h_d;
	this.h_f = l_h_f;
	return this
}

if (live_enabled) function mc_gml_action_cstring() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_s"];
	static __enumIndex__ = 6;
}

if (live_enabled) function gml_action_cstring(l_h_d, l_h_s) {
	var this = new mc_gml_action_cstring();
	this.h_d = l_h_d;
	this.h_s = l_h_s;
	return this
}

if (live_enabled) function mc_gml_action_array_decl() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_size"];
	static __enumIndex__ = 7;
}

if (live_enabled) function gml_action_array_decl(l_h_d, l_h_size) {
	var this = new mc_gml_action_array_decl();
	this.h_d = l_h_d;
	this.h_size = l_h_size;
	return this
}

if (live_enabled) function mc_gml_action_object_decl() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_keys", "h_sig"];
	static __enumIndex__ = 8;
}

if (live_enabled) function gml_action_object_decl(l_h_d, l_h_keys, l_h_sig) {
	var this = new mc_gml_action_object_decl();
	this.h_d = l_h_d;
	this.h_keys = l_h_keys;
	this.h_sig = l_h_sig;
	return this
}

if (live_enabled) function mc_gml_action_const() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_v"];
	static __enumIndex__ = 9;
}

if (live_enabled) function gml_action_const(l_h_d, l_h_v) {
	var this = new mc_gml_action_const();
	this.h_d = l_h_d;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_action_self() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 10;
}

if (live_enabled) function gml_action_self(l_h_d) {
	var this = new mc_gml_action_self();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_other() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 11;
}

if (live_enabled) function gml_action_other(l_h_d) {
	var this = new mc_gml_action_other();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_local() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 12;
}

if (live_enabled) function gml_action_local(l_h_d, l_h_i) {
	var this = new mc_gml_action_local();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_local_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 13;
}

if (live_enabled) function gml_action_local_set(l_h_d, l_h_i) {
	var this = new mc_gml_action_local_set();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_local_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_i"];
	static __enumIndex__ = 14;
}

if (live_enabled) function gml_action_local_aop(l_h_d, l_h_o, l_h_i) {
	var this = new mc_gml_action_local_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_global() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 15;
}

if (live_enabled) function gml_action_global(l_h_d, l_h_fd) {
	var this = new mc_gml_action_global();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_global_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 16;
}

if (live_enabled) function gml_action_global_set(l_h_d, l_h_fd) {
	var this = new mc_gml_action_global_set();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_global_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_fd"];
	static __enumIndex__ = 17;
}

if (live_enabled) function gml_action_global_aop(l_h_d, l_h_o, l_h_fd) {
	var this = new mc_gml_action_global_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_field() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 18;
}

if (live_enabled) function gml_action_field(l_h_d, l_h_fd) {
	var this = new mc_gml_action_field();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_field_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 19;
}

if (live_enabled) function gml_action_field_set(l_h_d, l_h_fd) {
	var this = new mc_gml_action_field_set();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_field_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_fd"];
	static __enumIndex__ = 20;
}

if (live_enabled) function gml_action_field_aop(l_h_d, l_h_o, l_h_fd) {
	var this = new mc_gml_action_field_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_index() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 21;
}

if (live_enabled) function gml_action_index(l_h_d) {
	var this = new mc_gml_action_index();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_index_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 22;
}

if (live_enabled) function gml_action_index_set(l_h_d) {
	var this = new mc_gml_action_index_set();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_index_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o"];
	static __enumIndex__ = 23;
}

if (live_enabled) function gml_action_index_aop(l_h_d, l_h_o) {
	var this = new mc_gml_action_index_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_action_index2d() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 24;
}

if (live_enabled) function gml_action_index2d(l_h_d) {
	var this = new mc_gml_action_index2d();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_index2d_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 25;
}

if (live_enabled) function gml_action_index2d_set(l_h_d) {
	var this = new mc_gml_action_index2d_set();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_index2d_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o"];
	static __enumIndex__ = 26;
}

if (live_enabled) function gml_action_index2d_aop(l_h_d, l_h_o) {
	var this = new mc_gml_action_index2d_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_action_env() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_f"];
	static __enumIndex__ = 27;
}

if (live_enabled) function gml_action_env(l_h_d, l_h_f) {
	var this = new mc_gml_action_env();
	this.h_d = l_h_d;
	this.h_f = l_h_f;
	return this
}

if (live_enabled) function mc_gml_action_env_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_f", "h_ch"];
	static __enumIndex__ = 28;
}

if (live_enabled) function gml_action_env_set(l_h_d, l_h_f, l_h_ch) {
	var this = new mc_gml_action_env_set();
	this.h_d = l_h_d;
	this.h_f = l_h_f;
	this.h_ch = l_h_ch;
	return this
}

if (live_enabled) function mc_gml_action_env_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_f"];
	static __enumIndex__ = 29;
}

if (live_enabled) function gml_action_env_aop(l_h_d, l_h_o, l_h_f) {
	var this = new mc_gml_action_env_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_f = l_h_f;
	return this
}

if (live_enabled) function mc_gml_action_env1d() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_f"];
	static __enumIndex__ = 30;
}

if (live_enabled) function gml_action_env1d(l_h_d, l_h_f) {
	var this = new mc_gml_action_env1d();
	this.h_d = l_h_d;
	this.h_f = l_h_f;
	return this
}

if (live_enabled) function mc_gml_action_env1d_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_f", "h_ch"];
	static __enumIndex__ = 31;
}

if (live_enabled) function gml_action_env1d_set(l_h_d, l_h_f, l_h_ch) {
	var this = new mc_gml_action_env1d_set();
	this.h_d = l_h_d;
	this.h_f = l_h_f;
	this.h_ch = l_h_ch;
	return this
}

if (live_enabled) function mc_gml_action_env1d_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_f"];
	static __enumIndex__ = 32;
}

if (live_enabled) function gml_action_env1d_aop(l_h_d, l_h_o, l_h_f) {
	var this = new mc_gml_action_env1d_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_f = l_h_f;
	return this
}

if (live_enabled) function mc_gml_action_ds_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_argc", "h_get", "h_set", "h_out"];
	static __enumIndex__ = 33;
}

if (live_enabled) function gml_action_ds_aop(l_h_d, l_h_o, l_h_argc, l_h_get, l_h_set, l_h_out) {
	var this = new mc_gml_action_ds_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_argc = l_h_argc;
	this.h_get = l_h_get;
	this.h_set = l_h_set;
	this.h_out = l_h_out;
	return this
}

if (live_enabled) function mc_gml_action_arg_const() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 34;
}

if (live_enabled) function gml_action_arg_const(l_h_d, l_h_i) {
	var this = new mc_gml_action_arg_const();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_arg_const_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 35;
}

if (live_enabled) function gml_action_arg_const_set(l_h_d, l_h_i) {
	var this = new mc_gml_action_arg_const_set();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_arg_const_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o", "h_i"];
	static __enumIndex__ = 36;
}

if (live_enabled) function gml_action_arg_const_aop(l_h_d, l_h_o, l_h_i) {
	var this = new mc_gml_action_arg_const_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_arg_index() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 37;
}

if (live_enabled) function gml_action_arg_index(l_h_d) {
	var this = new mc_gml_action_arg_index();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_arg_index_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 38;
}

if (live_enabled) function gml_action_arg_index_set(l_h_d) {
	var this = new mc_gml_action_arg_index_set();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_arg_index_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o"];
	static __enumIndex__ = 39;
}

if (live_enabled) function gml_action_arg_index_aop(l_h_d, l_h_o) {
	var this = new mc_gml_action_arg_index_aop();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_action_arg_count() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 40;
}

if (live_enabled) function gml_action_arg_count(l_h_d) {
	var this = new mc_gml_action_arg_count();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_add_int() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 41;
}

if (live_enabled) function gml_action_add_int(l_h_d, l_h_i) {
	var this = new mc_gml_action_add_int();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_equ_op() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 42;
}

if (live_enabled) function gml_action_equ_op(l_h_d) {
	var this = new mc_gml_action_equ_op();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_neq_op() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 43;
}

if (live_enabled) function gml_action_neq_op(l_h_d) {
	var this = new mc_gml_action_neq_op();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_add_op() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 44;
}

if (live_enabled) function gml_action_add_op(l_h_d) {
	var this = new mc_gml_action_add_op();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_concat() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 45;
}

if (live_enabled) function gml_action_concat(l_h_d) {
	var this = new mc_gml_action_concat();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_bin_op() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o"];
	static __enumIndex__ = 46;
}

if (live_enabled) function gml_action_bin_op(l_h_d, l_h_o) {
	var this = new mc_gml_action_bin_op();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_action_un_op() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_o"];
	static __enumIndex__ = 47;
}

if (live_enabled) function gml_action_un_op(l_h_d, l_h_o) {
	var this = new mc_gml_action_un_op();
	this.h_d = l_h_d;
	this.h_o = l_h_o;
	return this
}

if (live_enabled) function mc_gml_action_in() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_not"];
	static __enumIndex__ = 48;
}

if (live_enabled) function gml_action_in(l_h_d, l_h_not) {
	var this = new mc_gml_action_in();
	this.h_d = l_h_d;
	this.h_not = l_h_not;
	return this
}

if (live_enabled) function mc_gml_action_call_script() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_script", "h_argc"];
	static __enumIndex__ = 49;
}

if (live_enabled) function gml_action_call_script(l_h_d, l_h_script, l_h_argc) {
	var this = new mc_gml_action_call_script();
	this.h_d = l_h_d;
	this.h_script = l_h_script;
	this.h_argc = l_h_argc;
	return this
}

if (live_enabled) function mc_gml_action_call_script_id() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_argc"];
	static __enumIndex__ = 50;
}

if (live_enabled) function gml_action_call_script_id(l_h_d, l_h_argc) {
	var this = new mc_gml_action_call_script_id();
	this.h_d = l_h_d;
	this.h_argc = l_h_argc;
	return this
}

if (live_enabled) function mc_gml_action_call_script_with_array() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 51;
}

if (live_enabled) function gml_action_call_script_with_array(l_h_d) {
	var this = new mc_gml_action_call_script_with_array();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_call_script_at() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_script", "h_argc"];
	static __enumIndex__ = 52;
}

if (live_enabled) function gml_action_call_script_at(l_h_d, l_h_script, l_h_argc) {
	var this = new mc_gml_action_call_script_at();
	this.h_d = l_h_d;
	this.h_script = l_h_script;
	this.h_argc = l_h_argc;
	return this
}

if (live_enabled) function mc_gml_action_call_func() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_func", "h_argc", "h_args", "h_rest", "h_inst", "h_out"];
	static __enumIndex__ = 53;
}

if (live_enabled) function gml_action_call_func(l_h_d, l_h_func, l_h_argc, l_h_args, l_h_rest, l_h_inst, l_h_out) {
	var this = new mc_gml_action_call_func();
	this.h_d = l_h_d;
	this.h_func = l_h_func;
	this.h_argc = l_h_argc;
	this.h_args = l_h_args;
	this.h_rest = l_h_rest;
	this.h_inst = l_h_inst;
	this.h_out = l_h_out;
	return this
}

if (live_enabled) function mc_gml_action_call_field() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_field", "h_argc"];
	static __enumIndex__ = 54;
}

if (live_enabled) function gml_action_call_field(l_h_d, l_h_field, l_h_argc) {
	var this = new mc_gml_action_call_field();
	this.h_d = l_h_d;
	this.h_field = l_h_field;
	this.h_argc = l_h_argc;
	return this
}

if (live_enabled) function mc_gml_action_construct() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_argc"];
	static __enumIndex__ = 55;
}

if (live_enabled) function gml_action_construct(l_h_d, l_h_argc) {
	var this = new mc_gml_action_construct();
	this.h_d = l_h_d;
	this.h_argc = l_h_argc;
	return this
}

if (live_enabled) function mc_gml_action_func_literal() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_name"];
	static __enumIndex__ = 56;
}

if (live_enabled) function gml_action_func_literal(l_h_d, l_h_name) {
	var this = new mc_gml_action_func_literal();
	this.h_d = l_h_d;
	this.h_name = l_h_name;
	return this
}

if (live_enabled) function mc_gml_action_jump() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 57;
}

if (live_enabled) function gml_action_jump(l_h_d, l_h_p) {
	var this = new mc_gml_action_jump();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_jump_if() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 58;
}

if (live_enabled) function gml_action_jump_if(l_h_d, l_h_p) {
	var this = new mc_gml_action_jump_if();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_jump_unless() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 59;
}

if (live_enabled) function gml_action_jump_unless(l_h_d, l_h_p) {
	var this = new mc_gml_action_jump_unless();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_bool_and() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 60;
}

if (live_enabled) function gml_action_bool_and(l_h_d, l_h_p) {
	var this = new mc_gml_action_bool_and();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_bool_or() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 61;
}

if (live_enabled) function gml_action_bool_or(l_h_d, l_h_p) {
	var this = new mc_gml_action_bool_or();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_switch() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_jumptable", "h_p"];
	static __enumIndex__ = 62;
}

if (live_enabled) function gml_action_switch(l_h_d, l_h_jumptable, l_h_p) {
	var this = new mc_gml_action_switch();
	this.h_d = l_h_d;
	this.h_jumptable = l_h_jumptable;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_switch_case() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 63;
}

if (live_enabled) function gml_action_switch_case(l_h_d, l_h_p) {
	var this = new mc_gml_action_switch_case();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_repeat_jump() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 64;
}

if (live_enabled) function gml_action_repeat_jump(l_h_d, l_h_p) {
	var this = new mc_gml_action_repeat_jump();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_repeat_pre() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 65;
}

if (live_enabled) function gml_action_repeat_pre(l_h_d, l_h_p) {
	var this = new mc_gml_action_repeat_pre();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_with_pre() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 66;
}

if (live_enabled) function gml_action_with_pre(l_h_d) {
	var this = new mc_gml_action_with_pre();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_with_next() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 67;
}

if (live_enabled) function gml_action_with_next(l_h_d, l_h_p) {
	var this = new mc_gml_action_with_next();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_with_post() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 68;
}

if (live_enabled) function gml_action_with_post(l_h_d) {
	var this = new mc_gml_action_with_post();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_break() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_lp"];
	static __enumIndex__ = 69;
}

if (live_enabled) function gml_action_break(l_h_d, l_h_lp) {
	var this = new mc_gml_action_break();
	this.h_d = l_h_d;
	this.h_lp = l_h_lp;
	return this
}

if (live_enabled) function mc_gml_action_continue() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_lp"];
	static __enumIndex__ = 70;
}

if (live_enabled) function gml_action_continue(l_h_d, l_h_lp) {
	var this = new mc_gml_action_continue();
	this.h_d = l_h_d;
	this.h_lp = l_h_lp;
	return this
}

if (live_enabled) function mc_gml_action_return() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 71;
}

if (live_enabled) function gml_action_return(l_h_d) {
	var this = new mc_gml_action_return();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_result() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 72;
}

if (live_enabled) function gml_action_result(l_h_d) {
	var this = new mc_gml_action_result();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_try() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_hdl"];
	static __enumIndex__ = 73;
}

if (live_enabled) function gml_action_try(l_h_d, l_h_hdl) {
	var this = new mc_gml_action_try();
	this.h_d = l_h_d;
	this.h_hdl = l_h_hdl;
	return this
}

if (live_enabled) function mc_gml_action_catch() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_v"];
	static __enumIndex__ = 74;
}

if (live_enabled) function gml_action_catch(l_h_d, l_h_v) {
	var this = new mc_gml_action_catch();
	this.h_d = l_h_d;
	this.h_v = l_h_v;
	return this
}

if (live_enabled) function mc_gml_action_finally() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_p"];
	static __enumIndex__ = 75;
}

if (live_enabled) function gml_action_finally(l_h_d, l_h_p) {
	var this = new mc_gml_action_finally();
	this.h_d = l_h_d;
	this.h_p = l_h_p;
	return this
}

if (live_enabled) function mc_gml_action_throw() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 76;
}

if (live_enabled) function gml_action_throw(l_h_d) {
	var this = new mc_gml_action_throw();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_wait() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 77;
}

if (live_enabled) function gml_action_wait(l_h_d) {
	var this = new mc_gml_action_wait();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_fork() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_out"];
	static __enumIndex__ = 78;
}

if (live_enabled) function gml_action_fork(l_h_d, l_h_out) {
	var this = new mc_gml_action_fork();
	this.h_d = l_h_d;
	this.h_out = l_h_out;
	return this
}

if (live_enabled) function mc_gml_action_ensure_array_local() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_i"];
	static __enumIndex__ = 79;
}

if (live_enabled) function gml_action_ensure_array_local(l_h_d, l_h_i) {
	var this = new mc_gml_action_ensure_array_local();
	this.h_d = l_h_d;
	this.h_i = l_h_i;
	return this
}

if (live_enabled) function mc_gml_action_ensure_array_global() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 80;
}

if (live_enabled) function gml_action_ensure_array_global(l_h_d, l_h_fd) {
	var this = new mc_gml_action_ensure_array_global();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_ensure_array_field() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_fd"];
	static __enumIndex__ = 81;
}

if (live_enabled) function gml_action_ensure_array_field(l_h_d, l_h_fd) {
	var this = new mc_gml_action_ensure_array_field();
	this.h_d = l_h_d;
	this.h_fd = l_h_fd;
	return this
}

if (live_enabled) function mc_gml_action_alarm() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 82;
}

if (live_enabled) function gml_action_alarm(l_h_d) {
	var this = new mc_gml_action_alarm();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_alarm_set() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d"];
	static __enumIndex__ = 83;
}

if (live_enabled) function gml_action_alarm_set(l_h_d) {
	var this = new mc_gml_action_alarm_set();
	this.h_d = l_h_d;
	return this
}

if (live_enabled) function mc_gml_action_alarm_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["h_d", "h_op"];
	static __enumIndex__ = 84;
}

if (live_enabled) function gml_action_alarm_aop(l_h_d, l_h_op) {
	var this = new mc_gml_action_alarm_aop();
	this.h_d = l_h_d;
	this.h_op = l_h_op;
	return this
}

#endregion

#region live

if (live_enabled) function live_script_get_index(l_name) {
	return asset_get_index(l_name);
}

if (live_enabled) function live_log_impl(l_v) {
	show_debug_message(l_v);
}

if (live_enabled) function live_log(l_s) {
	live_log_script("[live][" + date_datetime_string(gml_std_Date_now().h_date) + "] " + l_s);
}

if (live_enabled) function live_update_script_impl_add_source(l_name, l_acc, l_found, l_m) {
	l_found.h_set(l_name, true);
	var l_tokenCount = l_m.h_token_count;
	if (l_tokenCount < 0) return 0;
	var l_tokens = l_m.h_tokens;
	if (l_tokens == undefined) {
		l_tokens = gml_parser_run(l_m);
		if (l_tokens == undefined) {
			l_m.h_token_count = -1;
			return 0;
		}
		l_tokenCount = gml_parser_tokens_found;
		l_m.h_tokens = l_tokens;
		l_m.h_token_count = l_tokenCount;
	}
	ds_list_add(l_acc, l_m);
	live_update_script_impl_index_rec(l_tokens, l_tokenCount, l_acc, l_found);
}

if (live_enabled) function live_update_script_impl_index_rec(l_tokens, l_tokensLen, l_acc, l_found) {
	var l_tokensLen1 = l_tokensLen - 1;
	var l_tokensPos = -1;
	var l_macros = live_live_macros;
	var l_enums = live_live_enums;
	while (++l_tokensPos < l_tokensLen) {
		var l_tk = l_tokens[l_tokensPos];
		var l_id;
		if (l_tk.__enumIndex__/* gml_token */ == 10/* ident */) l_id = l_tk.h_id; else continue;
		if (l_found.h_exists(l_id)) continue;
		var l_src = l_macros.h_get(l_id);
		if (l_src != undefined) {
			live_update_script_impl_add_source(l_id, l_acc, l_found, l_src);
			continue;
		}
		l_src = l_enums.h_get(l_id);
		if (l_src != undefined) {
			if (l_tokensPos > 0) {
				if (l_tokens[l_tokensPos - 1].__enumIndex__/* gml_token */ == 5/* period */) continue;
			}
			if (l_tokensPos < l_tokensLen1) {
				var l__g3 = l_tokens[l_tokensPos + 1];
				if (l__g3.__enumIndex__/* gml_token */ == 5/* period */) var l__g4 = l__g3.h_d; else continue;
			}
			live_update_script_impl_add_source(l_id, l_acc, l_found, l_src);
			continue;
		}
		l_found.h_set(l_id, true);
	}
}

function live_update_script_impl(l_name, l_ident, l_code) {
	if (live_enabled) {
		var l_found = live_async_http_1_found;
		var l_acc = live_async_http_1_acc;
		var l_data = live_live_map.h_get(l_ident);
		if (l_data == undefined) {
			l_data = { program: undefined, ident: l_ident }
			live_live_map.h_set(l_ident, l_data);
		}
		var l_source = new gml_source(l_name, l_code, l_name);
		var l_tokens = gml_parser_run(l_source);
		if (l_tokens == undefined) {
			live_log("Error in " + l_name + ":");
			live_log(gml_parser_error_text);
			return 0;
		}
		l_found.h_clear();
		ds_list_clear(l_acc);
		if (live_live_globals != undefined) ds_list_add(l_acc, live_live_globals);
		l_source.h_tokens = l_tokens;
		l_source.h_token_count = gml_parser_tokens_found;
		live_update_script_impl_index_rec(l_tokens, l_source.h_token_count, l_acc, l_found);
		ds_list_add(l_acc, l_source);
		var l_srci = ds_list_size(l_acc);
		var l_srcs = array_create(l_srci);
		while (--l_srci >= 0) {
			l_srcs[@l_srci] = l_acc[|l_srci];
		}
		var l_pg = new gml_program(l_srcs);
		if (!l_pg.h_is_ready) {
			live_log("Error in " + l_name + ":");
			live_log(l_pg.h_error_text);
			l_pg.h_destroy();
			return 0;
		}
		if (l_pg.h_error_text != undefined) {
			live_log("Warning in " + l_name + ":");
			live_log(l_pg.h_error_text);
		}
		l_pg.h_tag = l_name;
		l_pg.h_live_ident = l_ident;
		live_log("Reloaded " + l_name + ".");
		if (l_data.program != undefined) l_data.program.h_destroy();
		l_data.program = l_pg;
	}
}

function live_call() {
	if (false) throw argument[argument_count - 1];
	if (live_enabled) {
		var l_def = 0;
		if (live_request_guid == undefined) {
			live_name = undefined;
			return false;
		} else {
			var l_origin;
			if (live_name != undefined) {
				l_origin = live_name;
				live_name = undefined;
			} else {
				var l_stack = debug_get_callstack();
				l_origin = l_stack[1];
			}
			var l_data = live_live_map.h_get(l_origin);
			if (l_data == undefined) {
				var l_co = gml_std_string_pos_ext(l_origin, ":");
				if (l_co >= 0) {
					var l_oclip = gml_std_string_substr(l_origin, 0, l_co);
					l_data = live_live_map.h_get(l_oclip);
					if (l_data == undefined && gml_std_string_substr(l_oclip, 0, 11) == "gml_Script_") {
						l_oclip = gml_std_string_substring(l_oclip, 11);
						l_data = live_live_map.h_get(l_oclip);
					}
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				} else if (gml_std_string_substr(l_origin, 0, 11) == "gml_Script_") {
					l_data = live_live_map.h_get(gml_std_string_substring(l_origin, 11));
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				}
			}
			if (l_data == undefined) {
				return false;
			} else {
				var l_pg = l_data.program;
				if (l_pg == undefined) {
					return false;
				} else {
					live_custom_self = self;
					live_custom_other = other;
					var l_scriptName = l_pg.h_tag;
					var l_argc = argument_count;
					var l_vals = array_create(l_argc);
					while (--l_argc >= 0) {
						l_vals[@l_argc] = argument[l_argc];
					}
					var l_th = l_pg.h_call_v(l_scriptName, l_vals, false);
					if (l_th == undefined) {
						live_result = l_def;
						live_log("`" + ((l_scriptName == undefined ? "null" : gml_std_Std_stringify(l_scriptName))) + "` is missing from the live program for some reason (?)");
						return false;
					} else if (l_th.h_status == gml_thread_status.done) {
						live_result = l_th.h_result;
						return true;
					} else if (l_th.h_status == gml_thread_status.error) {
						live_result = l_def;
						live_log("Runtime error: " + l_th.h_get_error());
						return true;
					} else return false;
				}
			}
		}
	} else return false;
}

function live_defcall() {
	if (false) throw argument[argument_count - 1];
	if (live_enabled) {
		var l_argc = argument_count - 1;
		var l_def = argument[l_argc];
		if (live_request_guid == undefined) {
			live_name = undefined;
			return false;
		} else {
			var l_origin;
			if (live_name != undefined) {
				l_origin = live_name;
				live_name = undefined;
			} else {
				var l_stack = debug_get_callstack();
				l_origin = l_stack[1];
			}
			var l_data = live_live_map.h_get(l_origin);
			if (l_data == undefined) {
				var l_co = gml_std_string_pos_ext(l_origin, ":");
				if (l_co >= 0) {
					var l_oclip = gml_std_string_substr(l_origin, 0, l_co);
					l_data = live_live_map.h_get(l_oclip);
					if (l_data == undefined && gml_std_string_substr(l_oclip, 0, 11) == "gml_Script_") {
						l_oclip = gml_std_string_substring(l_oclip, 11);
						l_data = live_live_map.h_get(l_oclip);
					}
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				} else if (gml_std_string_substr(l_origin, 0, 11) == "gml_Script_") {
					l_data = live_live_map.h_get(gml_std_string_substring(l_origin, 11));
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				}
			}
			if (l_data == undefined) {
				return false;
			} else {
				var l_pg = l_data.program;
				if (l_pg == undefined) {
					return false;
				} else {
					live_custom_self = self;
					live_custom_other = other;
					var l_scriptName = l_pg.h_tag;
					var l_vals = array_create(l_argc);
					while (--l_argc >= 0) {
						l_vals[@l_argc] = argument[l_argc];
					}
					var l_th = l_pg.h_call_v(l_scriptName, l_vals, false);
					if (l_th == undefined) {
						live_result = l_def;
						live_log("`" + ((l_scriptName == undefined ? "null" : gml_std_Std_stringify(l_scriptName))) + "` is missing from the live program for some reason (?)");
						return false;
					} else if (l_th.h_status == gml_thread_status.done) {
						live_result = l_th.h_result;
						return true;
					} else if (l_th.h_status == gml_thread_status.error) {
						live_result = l_def;
						live_log("Runtime error: " + l_th.h_get_error());
						return true;
					} else return false;
				}
			}
		}
	} else return false;
}

function live_call_ext(l_args1) {
	if (live_enabled) {
		var l_def = 0;
		if (live_request_guid == undefined) {
			live_name = undefined;
			return false;
		} else {
			var l_origin;
			if (live_name != undefined) {
				l_origin = live_name;
				live_name = undefined;
			} else {
				var l_stack = debug_get_callstack();
				l_origin = l_stack[1];
			}
			var l_data = live_live_map.h_get(l_origin);
			if (l_data == undefined) {
				var l_co = gml_std_string_pos_ext(l_origin, ":");
				if (l_co >= 0) {
					var l_oclip = gml_std_string_substr(l_origin, 0, l_co);
					l_data = live_live_map.h_get(l_oclip);
					if (l_data == undefined && gml_std_string_substr(l_oclip, 0, 11) == "gml_Script_") {
						l_oclip = gml_std_string_substring(l_oclip, 11);
						l_data = live_live_map.h_get(l_oclip);
					}
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				} else if (gml_std_string_substr(l_origin, 0, 11) == "gml_Script_") {
					l_data = live_live_map.h_get(gml_std_string_substring(l_origin, 11));
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				}
			}
			if (l_data == undefined) {
				return false;
			} else {
				var l_pg = l_data.program;
				if (l_pg == undefined) {
					return false;
				} else {
					live_custom_self = self;
					live_custom_other = other;
					var l_scriptName = l_pg.h_tag;
					var l_th = l_pg.h_call_v(l_scriptName, gml_value_list_copy(l_args1), false);
					if (l_th == undefined) {
						live_result = l_def;
						live_log("`" + ((l_scriptName == undefined ? "null" : gml_std_Std_stringify(l_scriptName))) + "` is missing from the live program for some reason (?)");
						return false;
					} else if (l_th.h_status == gml_thread_status.done) {
						live_result = l_th.h_result;
						return true;
					} else if (l_th.h_status == gml_thread_status.error) {
						live_result = l_def;
						live_log("Runtime error: " + l_th.h_get_error());
						return true;
					} else return false;
				}
			}
		}
	} else return false;
}

function live_defcall_ext(l_args1, l_def) {
	if (live_enabled) {
		if (live_request_guid == undefined) {
			live_name = undefined;
			return false;
		} else {
			var l_origin;
			if (live_name != undefined) {
				l_origin = live_name;
				live_name = undefined;
			} else {
				var l_stack = debug_get_callstack();
				l_origin = l_stack[1];
			}
			var l_data = live_live_map.h_get(l_origin);
			if (l_data == undefined) {
				var l_co = gml_std_string_pos_ext(l_origin, ":");
				if (l_co >= 0) {
					var l_oclip = gml_std_string_substr(l_origin, 0, l_co);
					l_data = live_live_map.h_get(l_oclip);
					if (l_data == undefined && gml_std_string_substr(l_oclip, 0, 11) == "gml_Script_") {
						l_oclip = gml_std_string_substring(l_oclip, 11);
						l_data = live_live_map.h_get(l_oclip);
					}
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				} else if (gml_std_string_substr(l_origin, 0, 11) == "gml_Script_") {
					l_data = live_live_map.h_get(gml_std_string_substring(l_origin, 11));
					if (l_data != undefined) live_live_map.h_set(l_origin, l_data);
				}
			}
			if (l_data == undefined) {
				return false;
			} else {
				var l_pg = l_data.program;
				if (l_pg == undefined) {
					return false;
				} else {
					live_custom_self = self;
					live_custom_other = other;
					var l_scriptName = l_pg.h_tag;
					var l_th = l_pg.h_call_v(l_scriptName, gml_value_list_copy(l_args1), false);
					if (l_th == undefined) {
						live_result = l_def;
						live_log("`" + ((l_scriptName == undefined ? "null" : gml_std_Std_stringify(l_scriptName))) + "` is missing from the live program for some reason (?)");
						return false;
					} else if (l_th.h_status == gml_thread_status.done) {
						live_result = l_th.h_result;
						return true;
					} else if (l_th.h_status == gml_thread_status.error) {
						live_result = l_def;
						live_log("Runtime error: " + l_th.h_get_error());
						return true;
					} else return false;
				}
			}
		}
	} else return false;
}

function sprite_set_live(l_spr, l_live1) {
	if (live_enabled) {
		var l_i;
		if (l_live1) {
			if (ds_map_exists(live_live_sprites, l_spr)) return 0;
			live_live_sprites[?l_spr] = true;
			l_i = ds_list_find_index(live_live_sprites_stop, l_spr);
			if (l_i >= 0) ds_list_delete(live_live_sprites_stop, l_i);
			ds_list_add(live_live_sprites_start, l_spr);
		} else {
			if (!ds_map_exists(live_live_sprites, l_spr)) return 0;
			ds_map_delete(live_live_sprites, l_spr);
			l_i = ds_list_find_index(live_live_sprites_start, l_spr);
			if (l_i >= 0) ds_list_delete(live_live_sprites_start, l_i);
			ds_list_add(live_live_sprites_stop, l_spr);
		}
	}
}

function room_set_live(l_rm, l_enable) {
	if (live_enabled) {
		var l_i;
		if (l_enable) {
			if (ds_map_exists(live_live_rooms, l_rm)) return 0;
			live_live_rooms[?l_rm] = true;
			l_i = ds_list_find_index(live_live_rooms_stop, l_rm);
			if (l_i >= 0) ds_list_delete(live_live_rooms_stop, l_i);
			ds_list_add(live_live_rooms_start, l_rm);
		} else {
			if (!ds_map_exists(live_live_rooms, l_rm)) return 0;
			ds_map_delete(live_live_rooms, l_rm);
			ds_map_delete(live_live_room_data, l_rm);
			l_i = ds_list_find_index(live_live_rooms_start, l_rm);
			if (l_i >= 0) ds_list_delete(live_live_rooms_start, l_i);
			ds_list_add(live_live_rooms_stop, l_rm);
		}
	}
}

function room_goto_live(l_rm) {
	if (live_enabled) {
		if (ds_map_exists(live_live_rooms, l_rm) && ds_map_exists(live_live_room_data, l_rm)) {
			live_live_room = l_rm;
			if (!room_exists(live_blank_room)) throw gml_std_haxe_Exception_thrown("Please add a completely empty room, add live_room_start(); to it's Creation Code, and assign it to live_blank_room in obj_gmlive's create event.");
			room_goto(live_blank_room);
			return 0;
		}
		room_goto(l_rm);
	}
}

if (live_enabled) function live_room_updated_impl(l_rm) {
	room_goto_live(l_rm);
}

function live_execute_string(l_gml_code) {
	if (false) throw argument[argument_count - 1];
	if (live_enabled) {
		var l_pg = new gml_program([new gml_source("execute_string", l_gml_code, "execute_string")]);
		var l_ok;
		live_custom_self = self;
		live_custom_other = other;
		if (l_pg.h_error_text == undefined) {
			var l_argc = (argument_count - 1);
			var l_argv = array_create(l_argc);
			var l_i = 0;
			var l__ = 0;
			for (var l__g1 = l_argc; l__ < l__g1; l__++) {
				l_argv[@l_i] = argument[l_i + 1];
				l_i++;
			}
			var l_th = l_pg.h_call_v("execute_string", l_argv, false);
			if (l_th.h_status == 3) {
				l_ok = true;
				live_result = l_th.h_result;
			} else {
				l_ok = false;
				live_result = l_th.h_error_text;
				if (live_result == undefined) live_result = "(unknown error)";
			}
		} else {
			l_ok = false;
			live_result = l_pg.h_error_text;
		}
		l_pg.h_destroy();
		return l_ok;
	} else return false;
}

function live_snippet_create(l_gml_code, l_name) {
	if (l_name == undefined) l_name = "snippet";
	if (false) throw argument[1];
	if (live_enabled) {
		var l_pg = new gml_program([new gml_source(l_name, l_gml_code, "snippet")]);
		if (l_pg.h_error_text == undefined) {
			return l_pg;
		} else {
			live_result = l_pg.h_error_text;
			l_pg.h_destroy();
			return undefined;
		}
	} else return undefined;
}

function live_snippet_destroy(l_snippet) {
	if (live_enabled) {
		if (l_snippet.h_script_array != undefined) l_snippet.h_destroy(); else throw gml_std_haxe_Exception_thrown("This snippet is already destroyed");
	}
}

function live_snippet_call(l_snippet) {
	if (false) throw argument[argument_count - 1];
	if (live_enabled) {
		var l_argc = (argument_count - 1);
		var l_argv = array_create(l_argc);
		var l_i = 0;
		var l__ = 0;
		for (var l__g1 = l_argc; l__ < l__g1; l__++) {
			l_argv[@l_i] = argument[l_i + 1];
			l_i++;
		}
		live_custom_self = self;
		live_custom_other = other;
		var l_th = l_snippet.h_call_v("snippet", l_argv, false);
		if (l_th == undefined) {
			live_result = "(script missing)";
			return false;
		} else if (l_th.h_status == 3) {
			live_result = l_th.h_result;
			return true;
		} else {
			live_result = l_th.h_error_text;
			if (live_result == undefined) live_result = "(unknown error)";
			return false;
		}
	} else return false;
}

function live_update() {
	if (live_enabled) {
		if (live_request_url == undefined) return 0;
		if (live_request_id == undefined) {
			var l_now = current_time;
			if (l_now > live_request_time) {
				live_request_time = l_now + live_request_rate * 1000;
				var l_url;
				if (live_request_guid == undefined) {
					l_url = live_request_url + "/init?password=" + live_request_password + "&version=" + string(105) + "&config=" + os_get_config() + "&runtime=" + GM_runtime_version;
				} else {
					l_url = live_request_url + "/update?guid=" + ((live_request_guid == undefined ? "null" : live_request_guid));
					var l_sl = live_live_sprites_stop;
					var l_sln = ds_list_size(l_sl);
					if (l_sln > 0) {
						l_url += "&sprites" + string(0) + "=" + sprite_get_name(l_sl[|0]);
						var l_i = 1;
						for (var l__g1 = l_sln; l_i < l__g1; l_i++) {
							l_url += "+" + sprite_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl = live_live_sprites_start;
					var l_sln = ds_list_size(l_sl);
					if (l_sln > 0) {
						l_url += "&sprites" + string(1) + "=" + sprite_get_name(l_sl[|0]);
						var l_i = 1;
						for (var l__g1 = l_sln; l_i < l__g1; l_i++) {
							l_url += "+" + sprite_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl = live_shader_live_shaders_stop;
					var l_sln = ds_list_size(l_sl);
					if (l_sln > 0) {
						l_url += "&shaders" + string(0) + "=" + shader_get_name(l_sl[|0]);
						var l_i = 1;
						for (var l__g1 = l_sln; l_i < l__g1; l_i++) {
							l_url += "+" + shader_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl = live_shader_live_shaders_start;
					var l_sln = ds_list_size(l_sl);
					if (l_sln > 0) {
						l_url += "&shaders" + string(1) + "=" + shader_get_name(l_sl[|0]);
						var l_i = 1;
						for (var l__g1 = l_sln; l_i < l__g1; l_i++) {
							l_url += "+" + shader_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_rl = live_live_rooms_stop;
					var l_rln = ds_list_size(l_rl);
					if (l_rln > 0) {
						l_url += "&rooms" + string(0) + "=" + room_get_name(l_rl[|0]);
						var l_i = 1;
						for (var l__g1 = l_rln; l_i < l__g1; l_i++) {
							l_url += "+" + room_get_name(l_rl[|l_i]);
						}
						ds_list_clear(l_rl);
					}
					var l_rl = live_live_rooms_start;
					var l_rln = ds_list_size(l_rl);
					if (l_rln > 0) {
						l_url += "&rooms" + string(1) + "=" + room_get_name(l_rl[|0]);
						var l_i = 1;
						for (var l__g1 = l_rln; l_i < l__g1; l_i++) {
							l_url += "+" + room_get_name(l_rl[|l_i]);
						}
						ds_list_clear(l_rl);
					}
				}
				live_request_id = http_get(l_url);
			}
		}
	}
}

function live_init(l_updateRate, l_url, l_password) {
	if (live_enabled) {
		if (l_url != undefined) {
			var l_url_last = string_length(l_url) - 1;
			if (string_ord_at(l_url, l_url_last + 1) == 47) l_url = gml_std_string_substring(l_url, 0, l_url_last);
		}
		live_log("Initializing...");
		live_request_rate = l_updateRate;
		live_request_url = l_url;
		live_request_password = l_password;
		var l_srs = asset_get_index("shader_replace_simple");
		if (l_srs != -1) live_shader_updated = l_srs;
		live_log("Indexing assets...");
		var l_s;
		for (var l_i = 0; sprite_exists(l_i); l_i++) {
			gml_asset_add(sprite_get_name(l_i), l_i);
		}
		for (l_i = 0; font_exists(l_i); l_i++) {
			gml_asset_add(font_get_name(l_i), l_i);
		}
		for (l_i = 0; object_exists(l_i); l_i++) {
			gml_asset_add(object_get_name(l_i), l_i);
		}
		for (l_i = 0; audio_exists(l_i); l_i++) {
			gml_asset_add(audio_get_name(l_i), l_i);
		}
		for (l_i = 0; l_i < 1024 && string_ord_at(tileset_get_name(l_i), 1) != 60; l_i++) {
			gml_asset_add(tileset_get_name(l_i), l_i);
		}
		for (l_i = 0; room_exists(l_i); l_i++) {
			gml_asset_add(room_get_name(l_i), l_i);
		}
		for (l_i = 0; path_exists(l_i); l_i++) {
			gml_asset_add(path_get_name(l_i), l_i);
		}
		for (l_i = 0; timeline_exists(l_i); l_i++) {
			gml_asset_add(timeline_get_name(l_i), l_i);
		}
		for (l_i = 0; l_i < 256; l_i++) {
			l_s = audio_group_name(l_i);
			if (l_s == "<undefined>" || l_s == "" || l_s == undefined) break;
			gml_asset_add(l_s, l_i);
		}
		if (l_url == undefined) for (l_i = 0; script_exists(l_i); l_i++) {
			l_s = script_get_name(l_i);
			gml_func_add(l_s + "(...)", l_i);
			gml_func_script_id.h_set(l_s, l_i);
		}
		live_log("Indexed OK!");
	}
}

if (live_enabled) function live_preinit_project_fake_call() {
	live_name = undefined;
	return false;
}

if (live_enabled) function live_preinit_project_lf(l_write, l_val) {
	if (l_write) {
		live_name = l_val;
		return l_val;
	} else return live_name;
}

if (live_enabled) function live_preinit_project() {
	gml_var_add("live_name", live_preinit_project_lf);
	gml_const_add("live_result", false);
	gml_func_add("live_call(...):", live_preinit_project_fake_call);
	gml_func_add("live_defcall(...):", live_preinit_project_fake_call);
	gml_func_add("live_call_ext(...):", live_preinit_project_fake_call);
	gml_func_add("live_defcall_ext(...):", live_preinit_project_fake_call);
	gml_func_add("live_method(self, func):", live_method);
	gml_func_add("live_execute_string(:string):", live_execute_string);
	gml_func_add("live_snippet_create(:string, :string=\"snippet\"):", live_snippet_create);
	gml_func_add("live_snippet_call(snip, ...rest):", live_snippet_call);
	gml_func_add("live_snippet_destroy(snip):", live_snippet_destroy);
	gml_func_add("sprite_set_live(spr:index, status:bool)", sprite_set_live);
	gml_func_add("shader_set_live(sh:index, status:bool)", sprite_set_live);
	gml_func_add("room_set_live(rm:index, status:bool)", sprite_set_live);
	gml_func_add("room_goto_live(rm:index)", room_goto_live);
}

#endregion

#region live.room_loader

if (live_enabled) function live_room_loader_run_cc(l_ccRaw, l_ccPath) {
	var l_ccProgram = new gml_program([new gml_source(l_ccPath, l_ccRaw, l_ccPath)]);
	var l_ccError = l_ccProgram.h_error_text;
	if (l_ccError == undefined) {
		var l_ccThread = l_ccProgram.h_call_v(l_ccPath, array_create(0));
		if (l_ccThread.h_status != gml_thread_status.done) {
			l_ccError = l_ccThread.h_error_text;
			if (l_ccError == undefined) l_ccError = l_ccPath + ": unknown execution error";
		}
	}
	l_ccProgram.h_destroy();
	if (l_ccError != undefined) live_log(l_ccError);
}

if (live_enabled) function live_room_loader_init_physics(l_phs) {
	if (l_phs == undefined) return 0;
	if (l_phs[?"PhysicsWorld"]) {
		live_room_loader_use_physics = true;
		physics_world_create(l_phs[?"PhysicsWorldPixToMeters"]);
		physics_world_gravity(l_phs[?"PhysicsWorldGravityX"], l_phs[?"PhysicsWorldGravityY"]);
	} else live_room_loader_use_physics = false;
}

if (live_enabled) function live_room_loader_anim_speed(l_val, l_type) {
	if (l_type == "0") return l_val / room_speed; else return l_val;
}

if (live_enabled) function live_room_loader_run_yy_inst_cc(l_inst, l_qinst) {
	with (l_inst) {
		var l_rname = l_qinst[?"name"];
		event_perform(14, 0);
		var l_rcc = l_qinst[?"propertyCode"];
		if (l_rcc != undefined && l_rcc != "") live_room_loader_run_cc(l_rcc, l_rname + ":Properties");
		event_perform(ev_create, 0);
		l_rcc = l_qinst[?"creationCode"];
		if (l_rcc != undefined && l_rcc != "") live_room_loader_run_cc(l_rcc, l_rname + ":CreationCode");
	}
}

if (live_enabled) function live_room_loader_add_layer(l_ql) {
	var l_ql_depth = l_ql[?"depth"];
	var l_ql_name = l_ql[?"name"];
	var l_rl, l_i, l_n, l_f, l_s, l_aval, l_rx, l_ry;
	switch (l_ql[?"modelName"]) {
		case "GMRLayer":
			l_rl = layer_get_id(l_ql_name);
			if (l_rl == -1) {
				l_rl = layer_create(l_ql_depth, l_ql_name);
				if (l_ql[?"visible"] != undefined) layer_set_visible(l_rl, l_ql[?"visible"]);
			}
			var l_sublayers = l_ql[?"layers"];
			var l_i = ds_list_size(l_sublayers);
			while (--l_i >= 0) {
				live_room_loader_add_layer(l_sublayers[|l_i]);
			}
			break;
		case "GMRBackgroundLayer":
			if (live_room_loader_apply_backgrounds) {
				l_rl = layer_get_id(l_ql_name);
				if (l_rl == -1) {
					l_rl = layer_create(l_ql_depth, l_ql_name);
					if (l_ql[?"visible"] != undefined) layer_set_visible(l_rl, l_ql[?"visible"]);
				}
				var l_qb = l_ql;
				l_s = l_qb[?"sprite"];
				var l_rb = layer_background_create(l_rl, (l_s != undefined ? asset_get_index(l_s) : -1));
				l_aval = l_qb[?"color"];
				if (l_aval != undefined) {
					layer_background_blend(l_rb, (l_aval & 16777215));
					layer_background_alpha(l_rb, ((l_aval >> 24) / 255));
				}
				l_aval = l_qb[?"htiled"];
				if (l_aval != undefined) layer_background_htiled(l_rb, l_aval); else layer_background_htiled(l_rb, true);
				l_aval = l_qb[?"vtiled"];
				if (l_aval != undefined) layer_background_vtiled(l_rb, l_aval); else layer_background_vtiled(l_rb, true);
				l_aval = l_qb[?"stretch"];
				if (l_aval != undefined) layer_background_stretch(l_rb, l_aval); else layer_background_stretch(l_rb, false);
				l_aval = l_qb[?"animationFPS"];
				if (l_aval != undefined) layer_background_speed(l_rb, live_room_loader_anim_speed(l_aval, l_qb[?"animationSpeedType"]));
				l_aval = l_qb[?"x"];
				if (l_aval == undefined) l_aval = 0;
				layer_x(l_rl, live_room_loader_room_x + l_aval);
				l_aval = l_qb[?"y"];
				if (l_aval == undefined) l_aval = 0;
				layer_y(l_rl, live_room_loader_room_y + l_aval);
			}
			break;
		case "GMRTileLayer":
			if (live_room_loader_apply_tiles) {
				l_rl = layer_get_id(l_ql_name);
				if (l_rl == -1) {
					l_rl = layer_create(l_ql_depth, l_ql_name);
					if (l_ql[?"visible"] != undefined) layer_set_visible(l_rl, l_ql[?"visible"]);
				}
				var l_qt = l_ql;
				var l_qtt = l_qt[?"tiles"];
				var l_qtw = l_qtt[?"SerialiseWidth"];
				var l_qth = l_qtt[?"SerialiseHeight"];
				var l_rt = layer_tilemap_create(l_rl, live_room_loader_room_x + l_qt[?"x"], live_room_loader_room_y + l_qt[?"y"], asset_get_index(l_qt[?"tileset"]), l_qtw, l_qth);
				var l_qtd = l_qtt[?"TileSerialiseData"];
				var l_qti = 0;
				var l_y = 0;
				for (var l__g1 = l_qth; l_y < l__g1; l_y++) {
					var l_x = 0;
					for (var l__g3 = l_qtw; l_x < l__g3; l_x++) {
						tilemap_set(l_rt, l_qtd[|l_qti++], l_x, l_y);
					}
				}
			}
			break;
		case "GMRInstanceLayer":
			if (live_room_loader_apply_instances) {
				l_rl = layer_get_id(l_ql_name);
				if (l_rl == -1) {
					l_rl = layer_create(l_ql_depth, l_ql_name);
					if (l_ql[?"visible"] != undefined) layer_set_visible(l_rl, l_ql[?"visible"]);
				}
				var l_qi = l_ql;
				l_rx = live_room_loader_room_x;
				l_ry = live_room_loader_room_y;
				var l_instances = l_qi[?"instances"];
				l_n = ds_list_size(l_instances);
				var l_base = live_blank_object;
				if (l_n != 0) {
					if (!object_exists(l_base)) throw gml_std_haxe_Exception_thrown("Please add a blank object and set live_blank_object to point at it in obj_gmlive's create event.");
				}
				var l_lco = live_room_loader_object_cache;
				l_i = -1;
				while (++l_i < l_n) {
					var l_qinst = l_instances[|l_i];
					var l_rnext = instance_create_layer((l_rx + l_qinst[?"x"]), (l_ry + l_qinst[?"y"]), l_rl, l_base);
					var l_qid = l_qinst[?"name"];
					live_room_loader_inst_map_yy[?l_qid] = l_qinst;
					live_room_loader_inst_map_gml[?l_qid] = l_rnext;
					with (l_rnext) {
						gml_const_add(l_qinst[?"name"], self);
						l_aval = l_qinst[?"rotation"];
						if (l_aval != undefined) self.image_angle = l_aval;
						l_aval = l_qinst[?"scaleX"];
						if (l_aval != undefined) self.image_xscale = l_aval;
						l_aval = l_qinst[?"scaleY"];
						if (l_aval != undefined) self.image_yscale = l_aval;
						l_aval = l_qinst[?"imageIndex"];
						if (l_aval != undefined) self.image_index = l_aval;
						l_aval = l_qinst[?"imageSpeed"];
						if (l_aval != undefined) self.image_speed = l_aval;
						l_f = l_qinst[?"color"];
						if (l_f != undefined) {
							self.image_blend = (l_f & 16777215);
							self.image_alpha = (l_f >> 24) / 255;
						}
						l_s = l_qinst[?"obj"];
						var l_id = l_lco[?l_s];
						if (l_id == undefined) {
							l_id = asset_get_index(l_s);
							l_lco[?l_s] = l_id;
						}
						instance_change(l_id, false);
					}
				}
			}
			break;
		case "GMRAssetLayer":
			if (live_room_loader_apply_sprites) {
				l_rl = layer_get_id(l_ql_name);
				if (l_rl == -1) {
					l_rl = layer_create(l_ql_depth, l_ql_name);
					if (l_ql[?"visible"] != undefined) layer_set_visible(l_rl, l_ql[?"visible"]);
				}
				var l_sprites = l_ql[?"assets"];
				l_n = ds_list_size(l_sprites);
				var l_lcs = live_room_loader_sprite_cache;
				l_rx = live_room_loader_room_x;
				l_ry = live_room_loader_room_y;
				l_i = -1;
				while (++l_i < l_n) {
					var l_qspr = l_sprites[|l_i];
					l_s = l_qspr[?"sprite"];
					var l_rspr = l_rx + l_qspr[?"x"];
					var l_rspr1 = l_ry + l_qspr[?"y"];
					var l_id = l_lcs[?l_s];
					if (l_id == undefined) {
						l_id = asset_get_index(l_s);
						l_lcs[?l_s] = l_id;
					}
					var l_rspr2 = layer_sprite_create(l_rl, l_rspr, l_rspr1, l_id);
					l_aval = l_qspr[?"frameIndex"];
					if (l_aval != undefined) layer_sprite_index(l_rspr2, l_aval);
					l_aval = l_qspr[?"scaleX"];
					if (l_aval != undefined) layer_sprite_xscale(l_rspr2, l_aval);
					l_aval = l_qspr[?"scaleY"];
					if (l_aval != undefined) layer_sprite_yscale(l_rspr2, l_aval);
					l_aval = l_qspr[?"rotation"];
					if (l_aval != undefined) layer_sprite_angle(l_rspr2, l_aval);
					l_f = l_qspr[?"color"];
					if (l_f != undefined) {
						layer_sprite_blend(l_rspr2, (l_f & 16777215));
						layer_sprite_alpha(l_rspr2, ((l_f >> 24) / 255));
					}
					if (l_qspr[?"userdefined_animFPS"]) layer_sprite_speed(l_rspr2, live_room_loader_anim_speed(l_qspr[?"animationFPS"], l_qspr[?"animationSpeedType"]));
				}
			}
			break;
	}
}

if (live_enabled) function live_room_loader_run_impl2(l_rm) {
	live_log("Loading " + l_rm[?"name"] + "...");
	ds_map_clear(live_room_loader_inst_map_gml);
	ds_map_clear(live_room_loader_inst_map_yy);
	if (live_room_loader_apply_settings) {
		room_width = l_rm[?"roomSettings"][?"Width"];
		room_height = l_rm[?"roomSettings"][?"Height"];
		live_room_loader_init_physics(l_rm[?"physicsSettings"]);
	}
	var l_aval;
	var l_lrs = l_rm[?"layers"];
	var l_lrk = ds_list_size(l_lrs);
	while (--l_lrk >= 0) {
		live_room_loader_add_layer(l_lrs[|l_lrk]);
	}
	var l__g_list = l_rm[?"instanceCreationOrderIDs"];
	var l__g_index = 0;
	while (l__g_index < ds_list_size(l__g_list)) {
		var l_id = l__g_list[|l__g_index++];
		var l_qinst = live_room_loader_inst_map_yy[?l_id];
		if (l_qinst == undefined) {
			live_log(l_id + " is in instanceCreationOrderIDs but no instance exists.");
			continue;
		}
		live_room_loader_run_yy_inst_cc(live_room_loader_inst_map_gml[?l_id], l_qinst);
	}
	ds_map_clear(live_room_loader_inst_map_gml);
	ds_map_clear(live_room_loader_inst_map_yy);
	if (live_room_loader_apply_views) {
		l_aval = l_rm[?"viewSettings"][?"enableViews"];
		if (l_aval != undefined) view_enabled = l_aval; else view_enabled = false;
		var l_qvs = l_rm[?"views"];
		if (l_qvs != undefined) {
			var l_i = 0;
			for (var l__g1 = ds_list_size(l_qvs); l_i < l__g1; l_i++) {
				var l_qv = l_qvs[|l_i];
				if (l_qv == undefined) continue;
				var l_rv = l_i;
				l_aval = l_qv[?"visible"];
				if (l_aval != undefined) view_visible[l_rv] = l_aval; else view_visible[l_rv] = false;
				l_aval = l_qv[?"xport"];
				if (l_aval != undefined) view_xport[l_rv] = l_aval; else view_xport[l_rv] = 0;
				l_aval = l_qv[?"yport"];
				if (l_aval != undefined) view_yport[l_rv] = l_aval; else view_yport[l_rv] = 0;
				l_aval = l_qv[?"wport"];
				if (l_aval != undefined) view_wport[l_rv] = l_aval; else view_wport[l_rv] = 1024;
				l_aval = l_qv[?"hport"];
				if (l_aval != undefined) view_hport[l_rv] = l_aval; else view_hport[l_rv] = 768;
				var l_rc = view_camera[l_rv];
				var l_vx, l_vy;
				l_vx = l_qv[?"xview"];
				if (l_vx == undefined) l_vx = 0;
				l_vy = l_qv[?"yview"];
				if (l_vy == undefined) l_vy = 0;
				camera_set_view_pos(l_rc, live_room_loader_room_x + l_vx, live_room_loader_room_y + l_vy);
				l_vx = l_qv[?"wview"];
				if (l_vx == undefined) l_vx = 1024;
				l_vy = l_qv[?"hview"];
				if (l_vy == undefined) l_vy = 768;
				camera_set_view_size(l_rc, l_vx, l_vy);
				l_aval = l_qv[?"obj"];
				if (l_aval != undefined) camera_set_view_target(l_rc, asset_get_index(l_aval));
				l_vx = l_qv[?"hspeed"];
				if (l_vx == undefined) l_vx = -1;
				l_vy = l_qv[?"vspeed"];
				if (l_vy == undefined) l_vy = -1;
				camera_set_view_speed(l_rc, l_vx, l_vy);
				l_vx = l_qv[?"hborder"];
				if (l_vx == undefined) l_vx = 32;
				l_vy = l_qv[?"vborder"];
				if (l_vy == undefined) l_vy = 32;
				camera_set_view_border(l_rc, l_vx, l_vy);
			}
		}
	}
	var l_s = l_rm[?"creationCode"];
	if (l_s != undefined && l_s != "") live_room_loader_run_cc(l_s, l_rm[?"name"] + ":CreationCode");
}

function live_room_start() {
	if (live_enabled) {
		var l_rq = live_live_room;
		if (!room_exists(l_rq)) throw gml_std_haxe_Exception_thrown("No live room was specified.");
		var l_rd = live_live_room_data[?l_rq];
		if (l_rd == undefined) {
			live_log("Warning: no live data had been received yet for " + room_get_name(l_rq) + ", transitioning to the regular version.");
			room_goto(l_rq);
			return 0;
		}
		var l_rm2 = json_decode(l_rd);
		live_room_loader_run_impl2(l_rm2);
		ds_map_destroy(l_rm2);
	}
}

#endregion

#region gml.link

if (live_enabled) function gml_link(l_value, l_next) constructor {
	var this = self;
	static h_value = undefined;
	static h_next = undefined;
	var this = self;
	self.h_value = l_value;
	self.h_next = l_next;
	//
}

#endregion

#region gml.stack

if (live_enabled) function gml_stack_push(l_this1, l_v) {
	var l_i = l_this1[0] + 1;
	if (l_i >= array_length(l_this1)) l_this1[@array_length(l_this1) * 2] = 0;
	l_this1[@l_i] = l_v;
	l_this1[@0] = l_i;
}

if (live_enabled) function gml_stack_pop(l_this1) {
	var l_i = l_this1[0];
	var l_r = l_this1[l_i];
	l_this1[@l_i] = 0;
	l_this1[@0] = l_i - 1;
	return l_r;
}

if (live_enabled) function gml_stack_pop_multi(l_this1, l_n) {
	var l_arr = [];
	var l_k = l_this1[0] - l_n;
	array_copy(l_arr, 0, l_this1, l_k + 1, l_n);
	array_copy(l_this1, l_k + 1, gml_stack_fill_value_arr, 0, l_n);
	l_this1[@0] = l_k;
	return l_arr;
}

if (live_enabled) function gml_stack_discard(l_this1) {
	var l_i = l_this1[0];
	l_this1[@l_i] = 0;
	l_this1[@0] = l_i - 1;
}

if (live_enabled) function gml_stack_discard_multi(l_this1, l_n) {
	var l_i = l_this1[0] - l_n;
	array_copy(l_this1, l_i + 1, gml_stack_fill_value_arr, 0, l_n);
	l_this1[@0] = l_i;
}

#endregion

#region gml.action_list

if (live_enabled) function gml_action_list_print_action_get_func_name(l_func) {
	if (is_method(l_func)) return script_get_name(method_get_index(l_func));
	if (is_numeric(l_func) && script_exists(l_func)) return script_get_name(l_func);
	return gml_std_Std_stringify(l_func);
}

if (live_enabled) function gml_action_list_print_action(l_act) {
	var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
	var l_r = "L" + string(l_pos.h_row) + "\tc" + string(l_pos.h_col) + "\t" + gml_std_Type_enumConstructor(l_act);
	switch (l_act.__enumIndex__/* gml_action */) {
		case 49/* call_script */: return l_r + "(" + l_act.h_script.h_name + ", " + string(l_act.h_argc) + ")";
		case 8/* object_decl */: return l_r + "(" + gml_std_gml_internal_ArrayImpl_join(l_act.h_keys, ",") + ")";
		case 28/* env_set */: return l_r + "(\"" + gml_action_list_print_action_get_func_name(l_act.h_f) + "\", \"" + gml_action_list_print_action_get_func_name(l_act.h_ch) + "\")";
		case 27/* env */: return l_r + "(\"" + gml_action_list_print_action_get_func_name(l_act.h_f) + "\")";
		case 53/* call_func */:
			var l_args1 = l_act.h_args;
			l_r += "(\"" + gml_action_list_print_action_get_func_name(l_act.h_func) + "\", " + string(l_act.h_argc) + ", [";
			var l_sep = false;
			var l__g = 0;
			while (l__g < array_length(l_args1)) {
				var l_f = l_args1[l__g];
				l__g++;
				if (l_sep) l_r += ","; else l_sep = true;
				l_r += script_get_name(l_f);
			}
			l_r += "], " + script_get_name(l_act.h_rest) + (", " + gml_std_Std_stringify(l_act.h_inst) + ", " + (string(l_act.h_out)) + ")");
			return l_r;
	}
	var l_argc = gml_std_haxe_enum_tools_getParameterCount(l_act);
	if (l_argc > 1) {
		l_r += "(";
		var l_k = 1;
		for (var l__g1 = l_argc; l_k < l__g1; l_k++) {
			if (l_k > 1) l_r += ", ";
			var l_v = gml_std_haxe_enum_tools_getParameter(l_act, l_k);
			if (is_numeric(l_v)) {
				l_r += gml_std_Std_stringify(l_v);
			} else if (is_string(l_v)) {
				l_r += "\"" + gml_std_Std_stringify(l_v) + "\"";
			} else if (l_v == undefined) {
				l_r += "null";
			} else l_r += gml_std_Std_stringify(l_v);
		}
		l_r += ")";
	}
	return l_r;
}

if (live_enabled) function gml_action_list_print(l_this1) {
	var l_r = "";
	var l_i = 0;
	for (var l__g1 = ds_list_size(l_this1); l_i < l__g1; l_i++) {
		var l_act = l_this1[|l_i];
		if (l_i > 0) l_r += "\n";
		l_r += string(l_i) + "\t" + gml_action_list_print_action(l_act);
	}
	return l_r;
}

#endregion

#region gml

if (live_enabled) function gml_object_init() {
	var l_n = 0;
	var l_i;
	while (object_exists(l_n)) {
		l_n++;
	}
	var l_names = array_create(l_n);
	var l_fields = array_create(l_n);
	var l_children = array_create(l_n);
	var l_access = array_create(l_n);
	for (l_i = 0; l_i < l_n; l_i++) {
		l_children[@l_i] = array_create(0);
		l_names[@l_i] = ds_list_create();
		l_access[@l_i] = -1;
		l_fields[@l_i] = new haxe_ds_string_map();
	}
	for (l_i = 0; l_i < l_n; l_i++) {
		var l_obj = l_i;
		for (var l_par = object_get_parent(l_obj); object_exists(l_par); l_par = object_get_parent(l_par)) {
			gml_std_gml_internal_ArrayImpl_push(l_children[l_par], l_obj);
		}
	}
	gml_object_children = l_children;
	gml_object_access = l_access;
	gml_object_field_names = l_names;
	return l_fields;
}

function gml_object_field(l_object1, l_field, l_func) {
	if (live_enabled) {
		var l_fds = gml_object_fields[l_object1];
		if (!l_fds.h_exists(l_field)) ds_list_add(gml_object_field_names[l_object1], l_field);
		l_fds.h_set(l_field, l_func);
		var l_children = gml_object_children[l_object1];
		var l_i = 0;
		for (var l__g1 = array_length(l_children); l_i < l__g1; l_i++) {
			var l_child = l_children[l_i];
			var l_m = gml_object_fields[l_child];
			if (!l_m.h_exists(l_field)) {
				l_m.h_set(l_field, l_func);
				ds_list_add(gml_object_field_names[l_child], l_field);
			}
		}
	}
}

function gml_object_setup(l_object1, l_access) {
	if (live_enabled) {
		var l_acc = gml_object_access;
		l_acc[@l_object1] = l_access;
		var l_children = gml_object_children[l_object1];
		var l_i = 0;
		for (var l__g1 = array_length(l_children); l_i < l__g1; l_i++) {
			l_acc[@l_children[l_i]] = l_access;
		}
	}
}

#endregion

#region vm._gml_class.gml_class_impl_

function gml_class_else(l_q, l_inst) {
	if (live_enabled) {
		var l_c = l_inst;
		switch (l_q/* gml_class */) {
			case 2/* has_field */: return false;
			case 0/* get_field */: case 1/* set_field */:
				gml_thread_error("Object `" + l_c[1, 0](6/* gml_class.print */, l_c) + "` has no fields.");
				return 0;
			case 3/* add_index */: case 4/* get_length */:
				gml_thread_error("Object `" + l_c[1, 0](6/* gml_class.print */, l_c) + "` is not an array.");
				return 0;
			case 5/* typeof */: case 6/* print */: return script_get_name(l_c[1, 0]);
		}
	} else return undefined;
}

#endregion

#region gml.thread_scope

if (live_enabled) function gml_thread_scope(l_actions, l_offset, l_args1, l_locals, l_self1, l_other1, l_next) constructor {
	var this = self;
	static h_actions = undefined;
	static h_offset = undefined;
	static h_args = undefined;
	static h_locals = undefined;
	static h_stack = undefined;
	static h_inst = undefined;
	static h_with = undefined;
	static h_xhdl = undefined;
	static h_program = undefined;
	static h_next = undefined;
	var this = self;
	self.h_xhdl = undefined;
	self.h_with = undefined;
	self.h_stack = array_create(16);
	self.h_actions = l_actions;
	self.h_offset = l_offset;
	self.h_args = l_args1;
	self.h_locals = l_locals;
	self.h_inst = [2, l_other1, l_self1];
	self.h_next = l_next;
	static __class__ = mt_gml_thread_scope;
}
if (live_enabled) mt_gml_thread_scope.h_constructor = gml_thread_scope;

#endregion

#region gml.thread

if (live_enabled) function gml_thread(l_program, l_actions, l_args1, l_locals, l_self1, l_other1, l_offset) constructor {
	var this = self;
	static h_result = undefined;
	static h_status = undefined;
	static h_callback = undefined;
	static h_scope = undefined;
	static h_wait_time = undefined;
	static h_time_tag = undefined;
	static h_error_text = undefined;
	static h_error_pos = undefined;
	static h_get_error = function() {
		var this = self;
		return self.h_error_text;
	}
	static h_get_error_ptr = function() {
		var this = self;
		if (self.h_error_pos != undefined) return self.h_error_pos.h_to_string(); else return "?";
	}
	static h_stack_error = function(l_pos, l_e) {
		var this = self;
		var l_text;
		if (is_struct(l_e) && variable_struct_exists(l_e, "stacktrace")) {
			l_text = l_e.message;
			var l_st = l_e.stacktrace;
			var l_i = 0;
			for (var l__g1 = array_length(l_st); l_i < l__g1; l_i++) {
				var l_js = l_st[l_i];
				if (gml_std_StringTools_startsWith(l_js, "gml_Script_vm_group_")) {
					l_text += "\n called from vm:" + gml_std_string_substring(l_js, string_length("gml_Script_vm_group_"));
				} else if (gml_std_StringTools_startsWith(l_js, "gml_Script_") || gml_std_StringTools_startsWith(l_js, "gml_Object_")) {
					l_text += "\n called from game:" + gml_std_string_substring(l_js, string_length("gml_Script_"));
				} else l_text += "\n called from " + l_js;
			}
		} else l_text = gml_std_Std_stringify(l_e);
		var l_s = "[error] " + l_text + "\n called from " + l_pos.h_to_string();
		var l_q = self.h_scope;
		if (l_q != undefined) for (l_q = self.h_scope.h_next; l_q != undefined; l_q = l_q.h_next) {
			var l_p = l_q.h_offset;
			l_s += "\n called from " + gml_std_haxe_enum_tools_getParameter(l_q.h_actions[|(l_p > 0 ? l_p - 1 : 0)], 0).h_to_string();
		}
		return l_s;
	}
	static h_proc_error = function(l_text, l_act) {
		var this = self;
		var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
		self.h_error_text = self.h_stack_error(l_pos, l_text);
		self.h_error_pos = l_pos;
		self.h_status = gml_thread_status.error;
		return false;
	}
	static h_proc_error2 = function(l_e, l_act) {
		var this = self;
		var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
		self.h_error_text = self.h_stack_error(l_pos, l_e);
		self.h_error_pos = l_pos;
		self.h_status = gml_thread_status.error;
		return 1/* gml_thread_proc_result.error */;
	}
	static h_exec = function() {
		var this = self;
		var l__gthis = self;
		var l_previous = gml_thread_current;
		gml_thread_current = self;
		var l_stack;
		var l_scope = self.h_scope;
		var l_actions, l_pos, l_len;
		l_actions = l_scope.h_actions;
		l_len = ds_list_size(l_actions);
		l_stack = l_scope.h_stack;
		var l_allowExceptions = gml_thread_allow_exceptions;
		var l__callback;
		self.h_status = gml_thread_status.running;
		while (true) {
			var l_proc, l_act;
			while (l_scope.h_offset < l_len) {
				var l_pos = l_scope.h_offset;
				l_act = l_actions[|l_pos];
				l_scope.h_offset = l_pos + 1;
				if (l_allowExceptions) {
					var l_ar = vm_v2_gml_thread_v2_handlers[l_act.__enumIndex__](l__gthis, l_act);
					if (l_ar == 1/* gml_thread_proc_result.error */ || l__gthis.h_status == gml_thread_status.error) {
						break;
					} else if (l_ar == 3/* gml_thread_proc_result.sync_scope */) {
						l_scope = l__gthis.h_scope;
						l_actions = l_scope.h_actions;
						l_len = ds_list_size(l_actions);
						l_stack = l_scope.h_stack;
					}
				} else try {
					var l_ar1 = vm_v2_gml_thread_v2_handlers[l_act.__enumIndex__](l__gthis, l_act);
					if (l_ar1 == 1/* gml_thread_proc_result.error */ || l__gthis.h_status == gml_thread_status.error) {
						break;
					} else if (l_ar1 == 3/* gml_thread_proc_result.sync_scope */) {
						l_scope = l__gthis.h_scope;
						l_actions = l_scope.h_actions;
						l_len = ds_list_size(l_actions);
						l_stack = l_scope.h_stack;
					}
				} catch (l__g) {
					self.h_proc_error(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act);
					break;
				}
			}
			if (self.h_status == gml_thread_status.error) {
				l_proc = false;
				while (l_scope != undefined) {
					if (l_scope.h_xhdl != undefined) {
						l_scope.h_offset = l_scope.h_xhdl.h_value;
						self.h_status = gml_thread_status.running;
						break;
					} else {
						l_scope = l_scope.h_next;
						l_proc = true;
					}
				}
				if (l_scope == undefined) {
					self.h_result = undefined;
					l__callback = self.h_callback;
					if (l__callback != undefined) l__callback(self);
					break;
				} else if (l_proc) {
					if (l_scope.h_with != undefined) gml_with_scope_destroy(l_scope.h_with);
					l_actions = l_scope.h_actions;
					l_len = ds_list_size(l_actions);
					l_stack = l_scope.h_stack;
				}
			} else if (l_scope.h_offset >= l_len && self.h_status == gml_thread_status.running) {
				if (l_scope.h_with != undefined) gml_with_scope_destroy(l_scope.h_with);
				if (l_stack[0] > 0) self.h_result = l_stack[l_stack[0]]; else self.h_result = 0;
				l_scope = l_scope.h_next;
				if (l_scope != undefined) {
					self.h_scope = l_scope;
					l_actions = l_scope.h_actions;
					l_len = ds_list_size(l_actions);
					l_stack = l_scope.h_stack;
				} else {
					self.h_status = gml_thread_status.done;
					l__callback = self.h_callback;
					if (l__callback != undefined) l__callback(self);
					break;
				}
			} else break;
		}
		self.h_scope = l_scope;
		gml_thread_current = l_previous;
	}
	static h_fork = function() {
		var this = self;
		var l_q = self.h_scope;
		var l_q_inst = l_q.h_inst;
		var l_r = new gml_thread(l_q.h_program, l_q.h_actions, gml_value_list_copy(l_q.h_args), gml_value_list_copy(l_q.h_locals), l_q_inst[l_q_inst[0]], l_q_inst[l_q_inst[0] - 1], l_q.h_offset);
		l_r.h_callback = self.h_callback;
		var l_n = l_r.h_scope;
		l_n.h_inst = gml_std_gml_internal_ArrayImpl_copy(l_q_inst);
		l_n.h_stack = gml_std_gml_internal_ArrayImpl_copy(l_q.h_stack);
		l_n.h_with = gml_with_scope_copy(l_q.h_with);
		return l_r;
	}
	var this = self;
	if (l_offset == undefined) l_offset = 0;
	if (false) throw argument[6];
	self.h_error_pos = undefined;
	self.h_error_text = undefined;
	self.h_time_tag = undefined;
	self.h_callback = undefined;
	self.h_status = gml_thread_status.none;
	self.h_result = undefined;
	if (l_self1 == undefined) l_self1 = live_custom_self;
	if (l_other1 == undefined) l_other1 = live_custom_other;
	self.h_scope = new gml_thread_scope(l_actions, l_offset, l_args1, l_locals, l_self1, l_other1, undefined);
	self.h_scope.h_program = l_program;
	//
}

if (live_enabled) function gml_thread_error(l_text) {
	throw gml_std_haxe_Exception_thrown(l_text);
}

#endregion

#region vm.gml_thread_exec_slice

if (live_enabled) function vm_gml_thread_exec_slice_error() {
	gml_thread_error("Calls only support up to " + string(81) + " arguments at this time");
	return undefined;
}

if (live_enabled) function vm_gml_thread_exec_slice_init() {
	return [vm_gml_thread_exec_slice_with0, vm_gml_thread_exec_slice_with1, vm_gml_thread_exec_slice_with2, vm_gml_thread_exec_slice_with3, vm_gml_thread_exec_slice_with4, vm_gml_thread_exec_slice_with5, vm_gml_thread_exec_slice_with6, vm_gml_thread_exec_slice_with7, vm_gml_thread_exec_slice_with8, vm_gml_thread_exec_slice_with9, vm_gml_thread_exec_slice_with10, vm_gml_thread_exec_slice_with11, vm_gml_thread_exec_slice_with12, vm_gml_thread_exec_slice_with13, vm_gml_thread_exec_slice_with14, vm_gml_thread_exec_slice_with15, vm_gml_thread_exec_slice_with16, vm_gml_thread_exec_slice_with17, vm_gml_thread_exec_slice_with18, vm_gml_thread_exec_slice_with19, vm_gml_thread_exec_slice_with20, vm_gml_thread_exec_slice_with21, vm_gml_thread_exec_slice_with22, vm_gml_thread_exec_slice_with23, vm_gml_thread_exec_slice_with24, vm_gml_thread_exec_slice_with25, vm_gml_thread_exec_slice_with26, vm_gml_thread_exec_slice_with27, vm_gml_thread_exec_slice_with28, vm_gml_thread_exec_slice_with29, vm_gml_thread_exec_slice_with30, vm_gml_thread_exec_slice_with31, vm_gml_thread_exec_slice_with32, vm_gml_thread_exec_slice_with33, vm_gml_thread_exec_slice_with34, vm_gml_thread_exec_slice_with35, vm_gml_thread_exec_slice_with36, vm_gml_thread_exec_slice_with37, vm_gml_thread_exec_slice_with38, vm_gml_thread_exec_slice_with39, vm_gml_thread_exec_slice_with40, vm_gml_thread_exec_slice_with41, vm_gml_thread_exec_slice_with42, vm_gml_thread_exec_slice_with43, vm_gml_thread_exec_slice_with44, vm_gml_thread_exec_slice_with45, vm_gml_thread_exec_slice_with46, vm_gml_thread_exec_slice_with47, vm_gml_thread_exec_slice_with48, vm_gml_thread_exec_slice_with49, vm_gml_thread_exec_slice_with50, vm_gml_thread_exec_slice_with51, vm_gml_thread_exec_slice_with52, vm_gml_thread_exec_slice_with53, vm_gml_thread_exec_slice_with54, vm_gml_thread_exec_slice_with55, vm_gml_thread_exec_slice_with56, vm_gml_thread_exec_slice_with57, vm_gml_thread_exec_slice_with58, vm_gml_thread_exec_slice_with59, vm_gml_thread_exec_slice_with60, vm_gml_thread_exec_slice_with61, vm_gml_thread_exec_slice_with62, vm_gml_thread_exec_slice_with63, vm_gml_thread_exec_slice_with64, vm_gml_thread_exec_slice_with65, vm_gml_thread_exec_slice_with66, vm_gml_thread_exec_slice_with67, vm_gml_thread_exec_slice_with68, vm_gml_thread_exec_slice_with69, vm_gml_thread_exec_slice_with70, vm_gml_thread_exec_slice_with71, vm_gml_thread_exec_slice_with72, vm_gml_thread_exec_slice_with73, vm_gml_thread_exec_slice_with74, vm_gml_thread_exec_slice_with75, vm_gml_thread_exec_slice_with76, vm_gml_thread_exec_slice_with77, vm_gml_thread_exec_slice_with78, vm_gml_thread_exec_slice_with79, vm_gml_thread_exec_slice_with80];
}

if (live_enabled) function vm_gml_thread_exec_slice_with0(l_f, l_w, l_i) {
	return l_f();
}

if (live_enabled) function vm_gml_thread_exec_slice_with1(l_f, l_w, l_i) {
	return l_f(l_w[l_i]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with2(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with3(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with4(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with5(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with6(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with7(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with8(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with9(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with10(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with11(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with12(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with13(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with14(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with15(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with16(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with17(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with18(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with19(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with20(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with21(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with22(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with23(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with24(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with25(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with26(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with27(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with28(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with29(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with30(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with31(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with32(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with33(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with34(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with35(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with36(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with37(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with38(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with39(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with40(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with41(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with42(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with43(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with44(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with45(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with46(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with47(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with48(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with49(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with50(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with51(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with52(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with53(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with54(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with55(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with56(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with57(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with58(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with59(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with60(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with61(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with62(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with63(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with64(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with65(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with66(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with67(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with68(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with69(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with70(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with71(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with72(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with73(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with74(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with75(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with76(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with77(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with78(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with79(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78]);
}

if (live_enabled) function vm_gml_thread_exec_slice_with80(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78], l_w[l_i + 79]);
}

#endregion

#region gml.type_check

if (live_enabled) function gml_type_check_init() {
	var l_r = new haxe_ds_string_map();
	l_r.h_set("any", gml_type_check_any);
	l_r.h_set("bool", gml_type_check_number);
	l_r.h_set("number", gml_type_check_number);
	l_r.h_set("?number", gml_type_check_z_number);
	l_r.h_set("float", gml_type_check_number);
	l_r.h_set("?float", gml_type_check_z_number);
	l_r.h_set("real", gml_type_check_number);
	l_r.h_set("?real", gml_type_check_z_number);
	l_r.h_set("color", gml_type_check_number);
	l_r.h_set("date", gml_type_check_number);
	l_r.h_set("int", gml_type_check_int);
	l_r.h_set("index", gml_type_check_index);
	l_r.h_set("id", gml_type_check_index);
	l_r.h_set("sprite", gml_type_check_index);
	l_r.h_set("background", gml_type_check_index);
	l_r.h_set("sound", gml_type_check_index);
	l_r.h_set("font", gml_type_check_index);
	l_r.h_set("script", gml_type_check_index);
	l_r.h_set("shader", gml_type_check_index);
	l_r.h_set("timeline", gml_type_check_index);
	l_r.h_set("object", gml_type_check_index);
	l_r.h_set("room", gml_type_check_index);
	l_r.h_set("buffer", gml_type_check_index);
	l_r.h_set("list", gml_type_check_index);
	l_r.h_set("grid", gml_type_check_index);
	l_r.h_set("string", gml_type_check_string);
	l_r.h_set("?string", gml_type_check_z_string);
	l_r.h_set("array", gml_type_check_array);
	l_r.h_set("?array", gml_type_check_z_array);
	l_r.h_set("sprite", gml_type_check_index);
	l_r.h_set("background", gml_type_check_index);
	l_r.h_set("sound", gml_type_check_index);
	l_r.h_set("font", gml_type_check_index);
	l_r.h_set("path", gml_type_check_index);
	l_r.h_set("timeline", gml_type_check_index);
	l_r.h_set("script", gml_type_check_index);
	l_r.h_set("object", gml_type_check_index);
	l_r.h_set("room", gml_type_check_index);
	return l_r;
}

if (live_enabled) function gml_type_check_any(l_v) {
	return "";
}

if (live_enabled) function gml_type_check_number(l_v) {
	if (is_numeric(l_v)) return "";
	return "Expected a number";
}

if (live_enabled) function gml_type_check_int(l_v) {
	if (is_real(l_v) && l_v % 1 == 0) return "";
	if (is_numeric(l_v)) return "";
	if (is_string(l_v)) return "";
	return "Expected an integer";
}

if (live_enabled) function gml_type_check_index(l_v) {
	if (is_real(l_v) && l_v % 1 == 0) return "";
	if (is_numeric(l_v)) return "";
	if (is_string(l_v)) return "";
	return "Expected an index";
}

if (live_enabled) function gml_type_check_string(l_v) {
	if (is_string(l_v)) return "";
	if (is_numeric(l_v)) return "";
	return "Expected a string";
}

if (live_enabled) function gml_type_check_array(l_v) {
	if (is_array(l_v)) return "";
	return "Expected an array";
}

if (live_enabled) function gml_type_check_z_number(l_v) {
	if (l_v == undefined || is_numeric(l_v)) return "";
	if (is_string(l_v)) return "";
	return "Expected a number or null";
}

if (live_enabled) function gml_type_check_z_string(l_v) {
	if (l_v == undefined || is_string(l_v)) return "";
	if (is_numeric(l_v)) return "";
	return "Expected a string or null";
}

if (live_enabled) function gml_type_check_z_array(l_v) {
	if (l_v == undefined || is_array(l_v)) return "";
	return "Expected an array or null";
}

#endregion

#region gml.value

if (live_enabled) function gml_value_get_type(l_this1) {
	if (l_this1 == undefined) {
		return "undefined";
	} else if (is_numeric(l_this1)) {
		return "number";
	} else if (is_string(l_this1)) {
		return "string";
	} else if (is_array(l_this1)) {
		if (array_length_2d(l_this1, 2) == 1) {
			return "lwobject";
		} else if (array_height_2d(l_this1) == 2) {
			var l_this2 = l_this1;
			return l_this2[1, 0](5/* gml_class.typeof */, l_this2);
		} else if (is_array(l_this1)) {
			return "array";
		} else return "ref";
	} else return typeof(l_this1);
}

if (live_enabled) function gml_value_print_rec(l_v, l_z) {
	var l_r, l_i, l_n, l_w;
	var l_id = gml_value_print_num++;
	if (l_v == undefined) {
		return "undefined";
	} else if (is_numeric(l_v)) {
		l_r = string_format(l_v, 0, 15);
		l_n = string_pos(".", l_r);
		if (l_n > 0) {
			for (l_i = string_byte_length(l_r); l_i > l_n; l_i--) {
				if (string_byte_at(l_r, l_i) != 48) return string_copy(l_r, 1, l_i);
			}
			return string_copy(l_r, 1, l_n - 1);
		} else return l_r;
	} else if (is_string(l_v)) {
		return "\"" + l_v + "\"";
	} else if (is_array(l_v)) {
		l_r = gml_value_print_refs[?l_v];
		if (l_r != undefined) return l_r;
		gml_value_print_refs[?l_v] = "@" + string(l_id);
		if (array_length_2d(l_v, 2) == 1) {
			l_w = l_v;
			l_n = array_length_2d(l_w, 1);
			if (l_n > 0) {
				if (++l_z <= 8) {
					l_r = "{ " + gml_std_Std_stringify(l_w[1, 0]) + ": " + gml_value_print_rec(l_w[0, 0], l_z);
					for (l_i = 1; l_i < l_n; l_i++) {
						l_r += ", " + gml_std_Std_stringify(l_w[1, l_i]) + ": " + gml_value_print_rec(l_w[0, l_i], l_z);
					}
					return l_r + " }";
				} else return "{...}";
			} else return "{ }";
		} else if (array_height_2d(l_v) == 2) {
			if (is_array(l_v[1, 0])) {
				l_r = gml_std_haxe_type_get(l_v).h_name + "(";
				l_w = l_v;
				l_n = array_length(l_w);
				if (l_n > 0) {
					if (++l_z <= 8) {
						l_r += gml_value_print_rec(l_w[0], l_z);
						for (l_i = 1; l_i < l_n; l_i++) {
							l_r += ", " + gml_value_print_rec(l_w[l_i], l_z);
						}
					} else l_r += "...";
				}
				return l_r + ")";
			} else {
				var l_this1 = l_v;
				return l_this1[1, 0](6/* gml_class.print */, l_this1);
			}
		} else {
			l_n = array_length(l_v);
			if (l_n > 0) {
				if (++l_z <= 8) {
					l_r = "[" + gml_value_print_rec(l_v[0], l_z);
					for (l_i = 1; l_i < l_n; l_i++) {
						l_r += ", " + gml_value_print_rec(l_v[l_i], l_z);
					}
					return l_r + "]";
				} else return "[...]";
			} else return "[]";
		}
	} else if (instanceof(l_v) == "instance") {
		var l_q = l_v;
		return "instance#" + string(l_q.id) + "(" + object_get_name(l_q.object_index) + ")";
	} else return gml_std_Std_stringify(l_v);
}

if (live_enabled) function gml_value_print(l_this1) {
	ds_map_clear(gml_value_print_refs);
	gml_value_print_num = 0;
	var l_r = gml_value_print_rec(l_this1, 0);
	ds_map_clear(gml_value_print_refs);
	return l_r;
}

if (live_enabled) function gml_value_dump(l_this1) {
	return "`" + gml_value_print(l_this1) + "` (" + gml_value_get_type(l_this1) + ")";
}

#endregion

#region gml.value_list

if (live_enabled) function gml_value_list_copy(l_this1) {
	var l_n = array_length(l_this1);
	var l_r = array_create(l_n);
	array_copy(l_r, 0, l_this1, 0, l_n);
	return l_r;
}

#endregion

#region gml.with_scope

if (live_enabled) function gml_with_scope(l_data, l_nxt) constructor {
	var this = self;
	static h_index = undefined;
	static h_length = undefined;
	static h_array = undefined;
	static h_next = undefined;
	static h_data = undefined;
	var this = self;
	self.h_index = 0;
	self.h_data = l_data;
	self.h_length = l_data.length;
	self.h_array = l_data.items;
	self.h_next = l_nxt;
	static __class__ = mt_gml_with_scope;
}
if (live_enabled) mt_gml_with_scope.h_constructor = gml_with_scope;

if (live_enabled) function gml_with_scope_copy(l_q) {
	if (l_q == undefined) return undefined;
	var l_q_data = l_q.h_data;
	l_q_data.refc++;
	var l_r = new gml_with_scope(l_q_data, gml_with_scope_copy(l_q.h_next));
	l_r.h_index = l_q.h_index;
	return l_r;
}

if (live_enabled) function gml_with_scope_destroy(l_q) {
	while (l_q != undefined) {
		vm__gml_with_data_gml_with_data_impl__destroy(l_q.h_data);
		l_q = l_q.h_next;
	}
}

#endregion

#region vm._gml_with_data.gml_with_data_impl_

if (live_enabled) function vm__gml_with_data_gml_with_data_impl__init() {
	var l_pools = array_create(5, undefined);
	l_pools[@0] = ds_stack_create();
	l_pools[@1] = ds_stack_create();
	l_pools[@2] = ds_stack_create();
	l_pools[@3] = ds_stack_create();
	l_pools[@4] = ds_stack_create();
	return l_pools;
}

if (live_enabled) function vm__gml_with_data_gml_with_data_impl__alloc(l_size) {
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
	if (l_sln >= 5) return array_create(l_size);
	var l_pool = vm__gml_with_data_gml_with_data_impl__pools[l_sln];
	if (ds_stack_empty(l_pool)) return array_create((power(10, l_sln) | 0)); else return ds_stack_pop(l_pool);
}

if (live_enabled) function vm__gml_with_data_gml_with_data_impl__destroy(l_this1) {
	if (--l_this1.refc != 0) return 0;
	var l_size = l_this1.length;
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
	if (l_sln >= 5) return 0;
	ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln], l_this1.items);
}

#endregion

#region vm.impl.gml_thread_construct

if (live_enabled) function vm_impl_gml_thread_construct_error() {
	gml_thread_error("Calls only support up to " + string(81) + " arguments at this time");
	return undefined;
}

if (live_enabled) function vm_impl_gml_thread_construct_init() {
	return [vm_impl_gml_thread_construct_with0, vm_impl_gml_thread_construct_with1, vm_impl_gml_thread_construct_with2, vm_impl_gml_thread_construct_with3, vm_impl_gml_thread_construct_with4, vm_impl_gml_thread_construct_with5, vm_impl_gml_thread_construct_with6, vm_impl_gml_thread_construct_with7, vm_impl_gml_thread_construct_with8, vm_impl_gml_thread_construct_with9, vm_impl_gml_thread_construct_with10, vm_impl_gml_thread_construct_with11, vm_impl_gml_thread_construct_with12, vm_impl_gml_thread_construct_with13, vm_impl_gml_thread_construct_with14, vm_impl_gml_thread_construct_with15, vm_impl_gml_thread_construct_with16, vm_impl_gml_thread_construct_with17, vm_impl_gml_thread_construct_with18, vm_impl_gml_thread_construct_with19, vm_impl_gml_thread_construct_with20, vm_impl_gml_thread_construct_with21, vm_impl_gml_thread_construct_with22, vm_impl_gml_thread_construct_with23, vm_impl_gml_thread_construct_with24, vm_impl_gml_thread_construct_with25, vm_impl_gml_thread_construct_with26, vm_impl_gml_thread_construct_with27, vm_impl_gml_thread_construct_with28, vm_impl_gml_thread_construct_with29, vm_impl_gml_thread_construct_with30, vm_impl_gml_thread_construct_with31, vm_impl_gml_thread_construct_with32, vm_impl_gml_thread_construct_with33, vm_impl_gml_thread_construct_with34, vm_impl_gml_thread_construct_with35, vm_impl_gml_thread_construct_with36, vm_impl_gml_thread_construct_with37, vm_impl_gml_thread_construct_with38, vm_impl_gml_thread_construct_with39, vm_impl_gml_thread_construct_with40, vm_impl_gml_thread_construct_with41, vm_impl_gml_thread_construct_with42, vm_impl_gml_thread_construct_with43, vm_impl_gml_thread_construct_with44, vm_impl_gml_thread_construct_with45, vm_impl_gml_thread_construct_with46, vm_impl_gml_thread_construct_with47, vm_impl_gml_thread_construct_with48, vm_impl_gml_thread_construct_with49, vm_impl_gml_thread_construct_with50, vm_impl_gml_thread_construct_with51, vm_impl_gml_thread_construct_with52, vm_impl_gml_thread_construct_with53, vm_impl_gml_thread_construct_with54, vm_impl_gml_thread_construct_with55, vm_impl_gml_thread_construct_with56, vm_impl_gml_thread_construct_with57, vm_impl_gml_thread_construct_with58, vm_impl_gml_thread_construct_with59, vm_impl_gml_thread_construct_with60, vm_impl_gml_thread_construct_with61, vm_impl_gml_thread_construct_with62, vm_impl_gml_thread_construct_with63, vm_impl_gml_thread_construct_with64, vm_impl_gml_thread_construct_with65, vm_impl_gml_thread_construct_with66, vm_impl_gml_thread_construct_with67, vm_impl_gml_thread_construct_with68, vm_impl_gml_thread_construct_with69, vm_impl_gml_thread_construct_with70, vm_impl_gml_thread_construct_with71, vm_impl_gml_thread_construct_with72, vm_impl_gml_thread_construct_with73, vm_impl_gml_thread_construct_with74, vm_impl_gml_thread_construct_with75, vm_impl_gml_thread_construct_with76, vm_impl_gml_thread_construct_with77, vm_impl_gml_thread_construct_with78, vm_impl_gml_thread_construct_with79, vm_impl_gml_thread_construct_with80];
}

if (live_enabled) function vm_impl_gml_thread_construct_with0(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c();
}

if (live_enabled) function vm_impl_gml_thread_construct_with1(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with2(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with3(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with4(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with5(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with6(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with7(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with8(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with9(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with10(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with11(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with12(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with13(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with14(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with15(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with16(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with17(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with18(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with19(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with20(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with21(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with22(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with23(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with24(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with25(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with26(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with27(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with28(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with29(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with30(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with31(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with32(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with33(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with34(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with35(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with36(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with37(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with38(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with39(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with40(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with41(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with42(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with43(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with44(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with45(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with46(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with47(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with48(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with49(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with50(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with51(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with52(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with53(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with54(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with55(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with56(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with57(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with58(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with59(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with60(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with61(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with62(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with63(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with64(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with65(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with66(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with67(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with68(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with69(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with70(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with71(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with72(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with73(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with74(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with75(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with76(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with77(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with78(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with79(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78]);
}

if (live_enabled) function vm_impl_gml_thread_construct_with80(l_f, l_w, l_i) {
	var l_c=l_f;
	return new l_c(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78], l_w[l_i + 79]);
}

#endregion

#region vm_group_alarm

if (live_enabled) function vm_group_alarm_on_alarm(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z].alarm[l_st[l_z + 1]];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_alarm_on_alarm_set(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	l_st[l_z].alarm[l_st[l_z + 1]] = l_st[l_z + 2];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_alarm_on_alarm_aop(l_th, l_act) {
	var l_o = l_act.h_op;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_v;
	try {
		l_v = l_a.alarm[l_i]
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 2])
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_a.alarm[l_i] = (l_v | 0);
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_arg

if (live_enabled) function vm_group_arg_on_arg_count(l_th, l_act) {
	var l_q = l_th.h_scope;
	gml_stack_push(l_q.h_stack, array_length(l_q.h_args));
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_const(l_th, l_act) {
	var l_i = l_act.h_i;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_args1 = l_q.h_args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_i1 = l_st[0] + 1;
		if (l_i1 >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
		l_st[@l_i1] = l_args1[l_i];
		l_st[@0] = l_i1;
	} else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_const_set(l_th, l_act) {
	var l_i = l_act.h_i;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_args1 = l_q.h_args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_i1 = l_st[0];
		var l_r = l_st[l_i1];
		l_st[@l_i1] = 0;
		l_st[@0] = l_i1 - 1;
		l_args1[@l_i] = l_r;
	} else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_const_aop(l_th, l_act) {
	var l_i = l_act.h_i;
	var l_o = l_act.h_o;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_args1 = l_q.h_args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_arg = l_args1[l_i];
		var l_i1 = l_st[0];
		var l_val = l_st[l_i1];
		l_st[@l_i1] = 0;
		l_st[@0] = l_i1 - 1;
		try {
			l_val = vm_group_op_funcs[l_o](l_arg, l_val)
		} catch (l__g) {
			return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
		}
		l_args1[@l_i] = l_val;
	} else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_index(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_v;
	var l_z = l_st[0];
	var l_k = l_st[l_z];
	if (is_numeric(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.h_args;
		if (l_i >= 0 && l_i < array_length(l_args1)) l_st[@l_z] = l_args1[l_i]; else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.h_proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_index_set(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_v, l_k;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_k = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (is_numeric(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.h_args;
		if (l_i >= 0 && l_i < array_length(l_args1)) l_args1[@l_i] = l_v; else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.h_proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_arg_on_arg_index_aop(l_th, l_act) {
	var l_o = l_act.h_o;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_v, l_k;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_k = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (is_numeric(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.h_args;
		if (l_i >= 0 && l_i < array_length(l_args1)) {
			try {
				l_v = vm_group_op_funcs[l_o](l_args1[l_i], l_v)
			} catch (l__g) {
				return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
			}
			l_args1[@l_i] = l_v;
		} else return l_th.h_proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.h_proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_array

if (live_enabled) function vm_group_array_on_index(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	var l_a = l_st[l_z];
	l_st[@l_z] = l_a[l_st[l_z + 1]];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_array_on_index_set(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	l_st[l_z][@l_st[l_z + 1]] = l_st[l_z + 2];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_array_on_index_aop(l_th, l_act) {
	var l_o = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_v;
	try {
		l_v = l_a[l_i]
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 2])
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_a[@l_i] = l_v;
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_array_on_index2d(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_a;
	var l_z = l_st[0] - 2;
	l_st[@0] = l_z;
	l_a = l_st[l_z];
	l_st[@l_z] = l_a[l_st[l_z + 1], l_st[l_z + 2]];
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_array_on_index2d_set(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 3;
	l_st[@0] = (l_z - 1);
	array_set_2D(l_st[l_z], l_st[l_z + 1], l_st[l_z + 2], l_st[l_z + 3]);
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	l_st[@l_z + 3] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_array_on_index2d_aop(l_th, l_act) {
	var l_o = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 3;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_k = l_st[l_z + 2];
	var l_v;
	try {
		l_v = l_a[l_i, l_k]
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 3])
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_a[@l_i, l_k] = l_v;
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	l_st[@l_z + 3] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_call

if (live_enabled) function vm_group_call_check_func_args(l_th, l_act, l_argChecks, l_restCheck, l_array1, l_arrOffset, l_argc) {
	var l_argChecks_len = array_length(l_argChecks);
	var l_i = 0;
	for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
		var l_err;
		if (l_i < l_argChecks_len) l_err = l_argChecks[l_i](l_array1[l_arrOffset + l_i]); else l_err = l_restCheck(l_array1[l_arrOffset + l_i]);
		if (l_err != "") return l_th.h_proc_error(l_err, l_act);
	}
	return true;
}

if (live_enabled) function vm_group_call_call_func(l_th, l_act, l_func, l_instFlags, l_array1, l_arrOffset, l_argc) {
	var l_inst = l_th.h_scope.h_inst;
	var l_v1 = undefined;
	var l_notFound;
	var l_status = 0/* gml_thread_proc_result.ok */;
	var l_qn0, l_qn1, l_qc0, l_qc1;
	switch (l_instFlags) {
		case 3:
			l_qn0 = l_inst[l_inst[0]];
			l_qn1 = l_inst[l_inst[0] - 1];
			l_notFound = true;
			with (l_qn1) {
				with (l_qn0) {
					l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
					l_notFound = false;
					break;
				}
				break;
			}
			if (l_notFound) return l_th.h_proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + ("` (" + gml_value_get_type(l_inst[l_inst[0]]) + ") does not exist."), l_act);
			break;
		case 2:
			l_qn0 = l_inst[l_inst[0]];
			l_qn1 = l_inst[l_inst[0] - 1];
			l_notFound = true;
			with (l_qn1) {
				with (l_qn0) {
					l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
					l_notFound = false;
					break;
				}
				break;
			}
			if (l_notFound) return l_th.h_proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + ("` (" + gml_value_get_type(l_inst[l_inst[0]]) + ") does not exist."), l_act);
			break;
		case 1:
			l_qn0 = l_inst[l_inst[0]];
			l_notFound = true;
			with (l_qn0) {
				l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
				l_notFound = false;
				break;
			}
			if (l_notFound) return l_th.h_proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + ("` (" + gml_value_get_type(l_inst[l_inst[0]]) + ") does not exist."), l_act);
			break;
		case -5:
			l_th.h_result = undefined;
			l_status = l_func(l_array1, l_arrOffset, l_argc);
			break;
		case -6:
			l_notFound = true;
			with (l_inst[l_inst[0]]) {
				l_v1 = (l_argc < 81 ? vm_impl_gml_thread_construct_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_impl_gml_thread_construct_error());
				l_notFound = false;
			}
			if (l_notFound) l_v1 = (l_argc < 81 ? vm_impl_gml_thread_construct_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_impl_gml_thread_construct_error());
			break;
		default: l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
	}
	if (l_th.h_status != gml_thread_status.error) {
		vm_group_call_call_func_result = l_v1;
		vm_group_call_call_func_status = l_status;
		return true;
	} else return false;
}

if (live_enabled) function vm_group_call_call_value(l_th, l_act, l_v1, l_argArray, l_argOffset, l_n) {
	if (is_method(l_v1)) {
		if (vm_group_call_call_func(l_th, l_act, l_v1, 3, l_argArray, l_argOffset, l_n)) {
			l_th.h_result = vm_group_call_call_func_result;
			return vm_group_call_call_func_status;
		} else return 1/* gml_thread_proc_result.error */;
	} else if (is_numeric(l_v1)) {
		if (script_exists(l_v1)) {
			if (vm_group_call_call_func(l_th, l_act, l_v1, 3, l_argArray, l_argOffset, l_n)) {
				l_th.h_result = vm_group_call_call_func_result;
				return vm_group_call_call_func_status;
			} else return 1/* gml_thread_proc_result.error */;
		} else return l_th.h_proc_error2("Trying to call invalid script index " + gml_value_print(l_v1), l_act);
	} else return l_th.h_proc_error2("Script index must be a number, got " + gml_value_dump(l_v1), l_act);
}

if (live_enabled) function vm_group_call_on_call_script(l_th, l_act) {
	var l_n = l_act.h_argc;
	var l_scr = l_act.h_script;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_args1 = [];
	var l_k = l_st[0] - l_n;
	array_copy(l_args1, 0, l_st, l_k + 1, l_n);
	array_copy(l_st, l_k + 1, gml_stack_fill_value_arr, 0, l_n);
	l_st[@0] = l_k;
	if (array_length(l_args1) < l_scr.h_arguments) array_resize(l_args1, l_scr.h_arguments);
	var l_inst = l_q.h_inst;
	var l_nq = new gml_thread_scope(l_scr.h_actions, 0, l_args1, array_create(l_scr.h_locals), l_inst[l_inst[0]], l_inst[l_inst[0] - 1], l_q);
	l_nq.h_program = l_q.h_program;
	l_th.h_scope = l_nq;
	return 3/* gml_thread_proc_result.sync_scope */;
}

if (live_enabled) function vm_group_call_on_call_script_id(l_th, l_act) {
	var l_n = l_act.h_argc;
	var l_stack = l_th.h_scope.h_stack;
	var l_r = vm_group_call_call_value(l_th, l_act, l_stack[l_stack[0] - l_n], l_stack, (l_stack[0] - l_n + 1), l_n);
	gml_stack_discard_multi(l_stack, l_n + 1);
	return l_r;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_call_on_call_field(l_th, l_act) {
	var l_n = l_act.h_argc;
	var l_s = l_act.h_field;
	var l_stack = l_th.h_scope.h_stack;
	var l_ctx = l_stack[l_stack[0] - l_n];
	var l_argOffset = l_stack[0] - l_n + 1;
	var l_val;
	var l_notFound = true;
	if (is_numeric(l_ctx) && l_ctx >= 100000) {
		l_val = variable_instance_get(l_ctx, l_s);
		if (l_val != undefined || variable_instance_exists(l_ctx, l_s)) {
			l_notFound = false;
		} else if (variable_instance_exists(l_ctx, "id")) {
			return l_th.h_proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
		}
	} else with (l_ctx) {
		l_val = variable_instance_get(self, l_s);
		if (l_val != undefined || variable_instance_exists(self, l_s)) {
			l_notFound = false;
			break;
		} else return l_th.h_proc_error2("`" + gml_std_Std_stringify(self) + "` (" + object_get_name(self.object_index) + ") does not have a variable `" + l_s + "`", l_act);
	}
	if (l_notFound) {
		if (is_numeric(l_ctx) && object_exists(l_ctx)) return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	}
	if (is_method(l_val)) {
		if (method_get_self(l_val) == undefined) l_val = method(l_ctx, l_val);
	}
	var l_r = vm_group_call_call_value(l_th, l_act, l_val, l_stack, l_argOffset, l_n);
	gml_stack_discard_multi(l_stack, l_n + 1);
	return l_r;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_call_on_construct(l_th, l_act) {
	var l__argc = l_act.h_argc;
	var l_args1 = gml_stack_pop_multi(l_th.h_scope.h_stack, l__argc + 1);
	var l_v1 = l_args1[0];
	if (is_numeric(l_v1)) {
		if (!script_exists((l_v1 | 0))) return l_th.h_proc_error2(gml_value_print(l_v1) + " is not a valid script index.", l_act);
	} else if (!is_method(l_v1)) {
		return l_th.h_proc_error2(gml_value_print(l_v1) + " (" + gml_value_get_type(l_v1) + ") is not a callable type.", l_act);
	}
	if (vm_group_call_call_func(l_th, l_act, l_v1, -6, l_args1, 1, l__argc)) {
		l_th.h_result = vm_group_call_call_func_result;
		return vm_group_call_call_func_status;
	} else return 1/* gml_thread_proc_result.error */;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_call_on_call_script_with_array(l_th, l_act) {
	var l_stack = l_th.h_scope.h_stack;
	var l_v1, l_arr;
	var l_z = l_stack[0] - 1;
	l_stack[@0] = (l_z - 1);
	l_v1 = l_stack[l_z];
	l_arr = l_stack[l_z + 1];
	l_stack[@l_z] = 0;
	l_stack[@l_z + 1] = 0;
	if (is_array(l_arr)) return vm_group_call_call_value(l_th, l_act, l_v1, l_arr, 0, array_length(l_arr)); else return l_th.h_proc_error2("Expected an array with arguments, got " + gml_value_dump(l_arr), l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_call_on_call_func(l_th, l_act) {
	var l__out = l_act.h_out;
	var l__inst = l_act.h_inst;
	var l__restCheck = l_act.h_rest;
	var l__argChecks = l_act.h_args;
	var l__argc = l_act.h_argc;
	var l__func = l_act.h_func;
	var l_stack = l_th.h_scope.h_stack;
	var l_k = l_stack[0] - l__argc;
	l_stack[@0] = l_k;
	l_k++;
	if (vm_group_call_check_func_args(l_th, l_act, l__argChecks, l__restCheck, l_stack, l_k, l__argc) && vm_group_call_call_func(l_th, l_act, l__func, l__inst, l_stack, l_k, l__argc)) {
		if (l__out) {
			var l_i = l_stack[0] + 1;
			if (l_i >= array_length(l_stack)) l_stack[@array_length(l_stack) * 2] = 0;
			l_stack[@l_i] = vm_group_call_call_func_result;
			l_stack[@0] = l_i;
		}
		return vm_group_call_call_func_status;
	} else return 1/* gml_thread_proc_result.error */;
	return 0/* gml_thread_proc_result.ok */;
}

function live_method(l_newSelf, l_func) {
	if (live_enabled) {
		if (is_method(l_func)) {
			var l_meta = method_get_self(l_func);
			if (variable_struct_exists(l_meta, "live:self")) {
				var l_nmeta = haxe__dynamic_access_dynamic_access_impl__copy(l_meta);
				variable_struct_set(l_nmeta, "live:self", l_newSelf);
				return method(l_nmeta, l_func);
			}
		}
		return method(l_newSelf, l_func);
	} else return undefined;
}

if (live_enabled) function vm_group_call_on_func_literal_lf() {
	if (false) throw argument[argument_count - 1];
	var l_meta = self;
	var l_ctx = variable_struct_get(l_meta, "live:context");
	if (l_ctx == undefined) throw gml_std_haxe_Exception_thrown("It would appear that you've re-bound a GMLive function to a different scope. Please use live_method() rather than method() to do so.");
	var l_argc = argument_count;
	var l_args1 = array_create(l_argc);
	var l_i = 0;
	for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
		l_args1[@l_i] = argument[l_i];
	}
	var l_livedata = live_live_map.h_get(l_ctx);
	if (l_livedata == undefined) throw gml_std_haxe_Exception_thrown("Trying to call a nonexistent GMLive program: " + l_ctx);
	var l_pg = l_livedata.program;
	if (l_pg == undefined) {
		live_log("Trying to call a broken GMLive program " + l_ctx + ", returning undefined");
		return undefined;
	}
	live_custom_self = variable_struct_get(l_meta, "live:self");
	live_custom_other = self;
	var l_th = l_pg.h_call_v(variable_struct_get(l_meta, "live:function"), l_args1, false);
	if (l_th == undefined) return undefined;
	if (l_th.h_status == gml_thread_status.done) {
		return l_th.h_result;
	} else if (l_th.h_status == gml_thread_status.error) {
		live_log("Runtime error: " + l_th.h_get_error());
		return undefined;
	} else return undefined;
}

if (live_enabled) function vm_group_call_on_func_literal(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_meta = { }
	var l_this1 = l_q.h_inst;
	variable_struct_set(l_meta, "live:self", l_this1[l_this1[0]]);
	variable_struct_set(l_meta, "live:context", l_th.h_scope.h_program.h_live_ident);
	variable_struct_set(l_meta, "live:function", l_act.h_name);
	gml_stack_push(l_q.h_stack, method(l_meta, vm_group_call_on_func_literal_lf));
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_ensure

if (live_enabled) function vm_group_ensure_on_ensure_array_local(l_th, l_act) {
	var l_i = l_act.h_i;
	var l_locals = l_th.h_scope.h_locals;
	if (!is_array(l_locals[l_i])) l_locals[@l_i] = array_create(0);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_ensure_on_ensure_array_global(l_th, l_act) {
	var l_s = l_act.h_fd;
	if (!is_array(variable_global_get(l_s))) variable_global_set(l_s, []);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_ensure_on_ensure_array_field(l_th, l_act) {
	var l_field = l_act.h_fd;
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	var l_o = l_r;
	if (!is_array(variable_instance_get(l_o, l_field))) variable_instance_set(l_o, l_field, []);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_env

if (live_enabled) function vm_group_env_on_env(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_v = l_act.h_f(false, undefined);
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_v;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_env_on_env_set(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	l_act.h_f(true, l_r);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_env_on_env_aop(l_th, l_act) {
	var l_fn = l_act.h_f;
	var l_op = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_ev;
	try {
		l_ev = l_fn(false, undefined)
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	var l_i = l_st[0];
	var l_sv = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	try {
		l_ev = vm_group_op_funcs[l_op](l_ev, l_sv)
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_fn(true, l_ev);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_env_on_env1d(l_th, l_act) {
	var l_fn = l_act.h_f;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0];
	var l_i = l_st[l_z];
	if (is_numeric(l_i)) l_st[@l_z] = l_fn(false, undefined, (l_i | 0)); else return l_th.h_proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_env_on_env1d_set(l_th, l_act) {
	var l_fn = l_act.h_f;
	var l_st = l_th.h_scope.h_stack;
	var l_i, l_v;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_i = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (is_numeric(l_i)) l_fn(true, l_v, (l_i | 0)); else return l_th.h_proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_env_on_env1d_aop(l_th, l_act) {
	var l_fn = l_act.h_f;
	var l_o = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_i, l_v;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_i = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (!is_numeric(l_i)) return l_th.h_proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	var l_ev;
	try {
		l_ev = l_fn(false, undefined, (l_i | 0))
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	try {
		l_ev = vm_group_op_funcs[l_o](l_ev, l_v)
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_fn(true, l_ev, (l_i | 0));
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_field

if (live_enabled) function vm_group_field_on_field(l_th, l_act) {
	var l_s = l_act.h_fd;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0];
	var l_ctx = l_st[l_z];
	var l_val;
	if (is_numeric(l_ctx) && l_ctx >= 100000) {
		l_val = variable_instance_get(l_ctx, l_s);
		if (l_val != undefined || variable_instance_exists(l_ctx, l_s)) {
			l_st[@l_z] = l_val;
			return 0/* gml_thread_proc_result.ok */;
		}
		if (variable_instance_exists(l_ctx, "id")) return l_th.h_proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
	} else with (l_ctx) {
		l_val = variable_instance_get(self, l_s);
		if (l_val != undefined || variable_instance_exists(self, l_s)) {
			l_st[@l_z] = l_val;
			return 0/* gml_thread_proc_result.ok */;
		}
		return l_th.h_proc_error2("`" + gml_value_print(self) + "` (" + object_get_name(self.object_index) + ") does not have a variable `" + l_s + "`", l_act);
	}
	if (is_numeric(l_ctx) && object_exists(l_ctx)) return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_field_on_field_set(l_th, l_act) {
	var l_s = l_act.h_fd;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	var l_ctx = l_st[l_z];
	var l_val = l_st[l_z + 1];
	var l_checkExists;
	if (is_numeric(l_ctx) && l_ctx >= 100000) {
		try {
			l_checkExists = l_ctx.id
		} catch (l__g) {
			var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.h_proc_error2(l_x, l_act);
		}
		variable_instance_set(l_ctx, l_s, l_val);
		l_st[@l_z] = 0;
		l_st[@l_z + 1] = 0;
		return 0/* gml_thread_proc_result.ok */;
	} else with (l_ctx) {
		variable_instance_set(self, l_s, l_val);
		l_st[@l_z] = 0;
		l_st[@l_z + 1] = 0;
		return 0/* gml_thread_proc_result.ok */;
	}
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (is_numeric(l_ctx) && object_exists(l_ctx)) return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_field_on_field_aop(l_th, l_act) {
	var l_s = l_act.h_fd;
	var l_o = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	var l_ctx = l_st[l_z];
	var l_val = l_st[l_z + 1];
	var l_checkExists, l_cur;
	if (is_numeric(l_ctx) && l_ctx >= 100000) {
		try {
			l_checkExists = l_ctx.id
		} catch (l__g) {
			var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.h_proc_error2(l_x, l_act);
		}
		l_cur = variable_instance_get(l_ctx, l_s);
		if (l_cur != undefined || variable_instance_exists(l_ctx, l_s)) {
			try {
				l_cur = vm_group_op_funcs[l_o](l_cur, l_val)
			} catch (l__g) {
				var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
				l_st[@l_z] = 0;
				l_st[@l_z + 1] = 0;
				return l_th.h_proc_error2(l_x, l_act);
			}
			variable_instance_set(l_ctx, l_s, l_cur);
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return 0/* gml_thread_proc_result.ok */;
		} else {
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.h_proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
		}
	} else {
		l_checkExists = false;
		with (l_ctx) {
			l_cur = variable_instance_get(self, l_s);
			if (l_cur != undefined || variable_instance_exists(l_ctx, l_s)) {
				try {
					l_cur = vm_group_op_funcs[l_o](l_cur, l_val)
				} catch (l__g) {
					var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
					l_st[@l_z] = 0;
					l_st[@l_z + 1] = 0;
					return l_th.h_proc_error2(l_x, l_act);
				}
				variable_instance_set(self, l_s, l_cur);
				l_checkExists = true;
			} else if (is_numeric(l_ctx)) {
				l_st[@l_z] = 0;
				l_st[@l_z + 1] = 0;
				return l_th.h_proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
			} else {
				l_st[@l_z] = 0;
				l_st[@l_z + 1] = 0;
				return l_th.h_proc_error2("`" + gml_value_print(l_ctx) + "` (" + typeof(l_ctx) + ") does not have a variable `" + l_s + "`", l_act);
			}
		}
		if (l_checkExists) {
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return 0/* gml_thread_proc_result.ok */;
		}
	}
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (is_numeric(l_ctx) && object_exists(l_ctx)) return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_field_on_in(l_th, l_act) {
	var l_not = l_act.h_not;
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	var l_ctx = l_st[l_z + 1];
	if (is_numeric(l_ctx) && l_ctx >= 100000) {
		l_st[@l_z] = l_not != variable_instance_exists(l_ctx, l_st[l_z]);
		return 0/* gml_thread_proc_result.ok */;
	} else with (l_ctx) {
		l_st[@l_z] = l_not != variable_instance_exists(self, l_st[l_z]);
		return 0/* gml_thread_proc_result.ok */;
	}
	if (is_numeric(l_ctx) && object_exists(l_ctx)) return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.h_proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_global

if (live_enabled) function vm_group_global_on_global(l_th, l_act) {
	var l_s = l_act.h_fd;
	var l_q = l_th.h_scope;
	if (variable_global_exists(l_s)) {
		var l_st = l_q.h_stack;
		var l_v = variable_global_get(l_s);
		var l_i = l_st[0] + 1;
		if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
		l_st[@l_i] = l_v;
		l_st[@0] = l_i;
	} else return l_th.h_proc_error2("Global variable `" + l_s + "` is not set.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_global_on_global_set(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	variable_global_set(l_act.h_fd, l_r);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_global_on_global_aop(l_th, l_act) {
	var l_s = l_act.h_fd;
	var l_o = l_act.h_o;
	var l_q = l_th.h_scope;
	if (variable_global_exists(l_s)) {
		var l_st = l_q.h_stack;
		var l_i = l_st[0];
		var l_val = l_st[l_i];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
		try {
			l_val = vm_group_op_funcs[l_o](variable_global_get(l_s), l_val)
		} catch (l__g) {
			return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
		}
		variable_global_set(l_s, l_val);
	} else return l_th.h_proc_error2("Global variable `" + l_s + "` is not set.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_jump

if (live_enabled) function vm_group_jump_on_jump(l_th, l_act) {
	l_th.h_scope.h_offset = l_act.h_p;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_jump_on_jump_if(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (l_r) {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_jump_unless(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (!l_r) {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_bool_and(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	if (l_st[l_st[0]]) {
		var l_i = l_st[0];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
	} else {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_bool_or(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	if (l_st[l_st[0]]) {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	} else {
		var l_i = l_st[0];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_switch(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_jt = l_act.h_jumptable;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i = l_st[0];
	var l_val = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (ds_map_exists(l_jt, l_val)) l_q.h_offset = l_jt[?l_val]; else l_q.h_offset = l_p;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_jump_on_switch_case(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (l_st[l_st[0]] == l_r) {
		gml_stack_discard(l_st);
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_repeat_pre(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_val = l_st[l_st[0]];
	if (is_numeric(l_val)) {
		if (l_val <= 0) {
			l_q.h_offset = l_p;
			var l_i = l_st[0];
			l_st[@l_i] = 0;
			l_st[@0] = l_i - 1;
			return 2/* gml_thread_proc_result.sync_pos */;
		}
	} else return l_th.h_proc_error2("Repeat `times` must be a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_repeat_jump(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_f = l_st[l_st[0]] - 1;
	l_st[@l_st[0]] = l_f;
	if (l_f >= 1) {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_jump_on_break(l_th, l_act) {
	l_th.h_scope.h_offset = l_act.h_lp;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_jump_on_continue(l_th, l_act) {
	l_th.h_scope.h_offset = l_act.h_lp;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_jump_on_return(l_th, l_act) {
	var l_q = l_th.h_scope;
	l_q.h_offset = ds_list_size(l_q.h_actions);
	return 2/* gml_thread_proc_result.sync_pos */;
}

#endregion

#region vm_group_literal

if (live_enabled) function vm_group_literal_on_undefined(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = undefined;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_number(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.h_f;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_cstring(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.h_s;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_const(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.h_v;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_self(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_inst = l_q.h_inst;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_inst[l_inst[0]];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_other(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_inst = l_q.h_inst;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_inst[l_inst[0] - 1];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_result(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_th.h_result;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_array_decl(l_th, l_act) {
	var l_n = l_act.h_size;
	var l_st = l_th.h_scope.h_stack;
	var l_arr = [];
	var l_k = l_st[0] - l_n;
	array_copy(l_arr, 0, l_st, l_k + 1, l_n);
	array_copy(l_st, l_k + 1, gml_stack_fill_value_arr, 0, l_n);
	l_st[@0] = l_k;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_arr;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_literal_on_object_decl(l_th, l_act) {
	var l_keys = l_act.h_keys;
	var l_obj = { }
	var l_n = array_length(l_keys);
	var l_stack = l_th.h_scope.h_stack;
	var l_stackStart = l_stack[0] - l_n + 1;
	var l_i = l_n;
	while (--l_i >= 0) {
		variable_struct_set(l_obj, l_keys[l_i], l_stack[l_stackStart + l_i]);
	}
	gml_stack_discard_multi(l_stack, l_n);
	var l_i = l_stack[0] + 1;
	if (l_i >= array_length(l_stack)) l_stack[@array_length(l_stack) * 2] = 0;
	l_stack[@l_i] = l_obj;
	l_stack[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_local

if (live_enabled) function vm_group_local_on_local(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i1 = l_st[0] + 1;
	if (l_i1 >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i1] = l_q.h_locals[l_act.h_i];
	l_st[@0] = l_i1;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_local_on_local_set(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i1 = l_st[0];
	var l_r = l_st[l_i1];
	l_st[@l_i1] = 0;
	l_st[@0] = l_i1 - 1;
	l_q.h_locals[@l_act.h_i] = l_r;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_local_on_local_aop(l_th, l_act) {
	var l_i = l_act.h_i;
	var l_op = l_act.h_o;
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_locals = l_q.h_locals;
	var l_i1 = l_st[0];
	var l_val = l_st[l_i1];
	l_st[@l_i1] = 0;
	l_st[@0] = l_i1 - 1;
	var l_cur = l_locals[l_i];
	try {
		l_cur = vm_group_op_funcs[l_op](l_cur, l_val)
	} catch (l__g) {
		return l_th.h_proc_error2(gml_std_haxe_Exception_caught(l__g).h_unwrap(), l_act)
	}
	l_locals[@l_i] = l_cur;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_op

if (live_enabled) function vm_group_op_impl_unknown(l_a, l_b) {
	throw gml_std_haxe_Exception_thrown("No idea how to apply this operator");
}

if (live_enabled) function vm_group_op_impl_add(l_a, l_b) {
	if (is_string(l_a) && is_string(l_b)) return l_a + l_b; else return l_a + l_b;
}

if (live_enabled) function vm_group_op_impl_sub(l_a, l_b) {
	return l_a - l_b;
}

if (live_enabled) function vm_group_op_impl_mul(l_a, l_b) {
	return l_a * l_b;
}

if (live_enabled) function vm_group_op_impl_div1(l_a, l_b) {
	return l_a / l_b;
}

if (live_enabled) function vm_group_op_impl_mod(l_a, l_b) {
	return l_a % l_b;
}

if (live_enabled) function vm_group_op_impl_idiv(l_a, l_b) {
	return (l_a div l_b);
}

if (live_enabled) function vm_group_op_impl_and(l_a, l_b) {
	return (l_a & l_b);
}

if (live_enabled) function vm_group_op_impl_or(l_a, l_b) {
	return (l_a | l_b);
}

if (live_enabled) function vm_group_op_impl_xor(l_a, l_b) {
	return (l_a ^ l_b);
}

if (live_enabled) function vm_group_op_impl_shl(l_a, l_b) {
	return (l_a << l_b);
}

if (live_enabled) function vm_group_op_impl_shr(l_a, l_b) {
	return (l_a >> l_b);
}

if (live_enabled) function vm_group_op_impl_eq(l_a, l_b) {
	return (l_a == l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl_ne(l_a, l_b) {
	return (l_a != l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl_gt(l_a, l_b) {
	return (l_a > l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl_ge(l_a, l_b) {
	return (l_a >= l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl_lt(l_a, l_b) {
	return (l_a < l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl_le(l_a, l_b) {
	return (l_a <= l_b ? 1 : 0);
}

if (live_enabled) function vm_group_op_impl() {
	var l_num = 112;
	var l_fns = array_create(l_num, undefined);
	var l_i = 0;
	for (var l__g1 = l_num; l_i < l__g1; l_i++) {
		l_fns[@l_i] = vm_group_op_impl_unknown;
	}
	l_fns[@16] = vm_group_op_impl_add;
	l_fns[@17] = vm_group_op_impl_sub;
	l_fns[@0] = vm_group_op_impl_mul;
	l_fns[@1] = vm_group_op_impl_div1;
	l_fns[@2] = vm_group_op_impl_mod;
	l_fns[@3] = vm_group_op_impl_idiv;
	l_fns[@49] = vm_group_op_impl_and;
	l_fns[@48] = vm_group_op_impl_or;
	l_fns[@50] = vm_group_op_impl_xor;
	l_fns[@32] = vm_group_op_impl_shl;
	l_fns[@33] = vm_group_op_impl_shr;
	l_fns[@64] = vm_group_op_impl_eq;
	l_fns[@65] = vm_group_op_impl_ne;
	l_fns[@68] = vm_group_op_impl_gt;
	l_fns[@69] = vm_group_op_impl_ge;
	l_fns[@66] = vm_group_op_impl_lt;
	l_fns[@67] = vm_group_op_impl_le;
	return l_fns;
}

if (live_enabled) function vm_group_op_on_bin_op(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = vm_group_op_funcs[l_act.h_o](l_st[l_z], l_st[l_z + 1]);
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_un_op(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0];
	switch (l_act.h_o) {
		case 2: l_st[@l_z] = ~l_st[l_z]; break;
		case 1: l_st[@l_z] = !l_st[l_z]; break;
		case 0: l_st[@l_z] = -l_st[l_z]; break;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_equ_op(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z] == l_st[l_z + 1];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_neq_op(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z] != l_st[l_z + 1];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_add_int(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0];
	l_st[@l_z] = l_st[l_z] + l_act.h_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_concat(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	var l_v2 = l_st[l_z + 1];
	if (!is_string(l_v2)) l_v2 = gml_value_print(l_v2);
	var l_v1 = l_st[l_z];
	if (!is_string(l_v1)) l_v1 = gml_value_print(l_v1);
	l_st[@l_z] = l_v1 + l_v2;
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_op_on_ds_aop(l_th, l_act) {
	var l__out = l_act.h_out;
	var l_setterFunc = l_act.h_set;
	var l_getterFunc = l_act.h_get;
	var l_setterArgc = l_act.h_argc;
	var l__o = l_act.h_o;
	var l_st = l_th.h_scope.h_stack;
	var l_k = 1 + l_setterArgc;
	var l_getterArgc = l_setterArgc - 1;
	var l_v;
	try {
		l_v = (l_getterArgc < 81 ? vm_gml_thread_exec_slice_funcs[l_getterArgc](l_getterFunc, l_st, l_k) : vm_gml_thread_exec_slice_error())
	} catch (l__g) {
		var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
		gml_stack_pop_multi(l_st, l_setterArgc);
		return l_th.h_proc_error2(l_x, l_act);
	}
	try {
		l_st[@l_k + l_getterArgc] = vm_group_op_funcs[l__o](l_v, l_st[l_k + l_getterArgc])
	} catch (l__g) {
		var l_x = gml_std_haxe_Exception_caught(l__g).h_unwrap();
		gml_stack_pop_multi(l_st, l_setterArgc);
		return l_th.h_proc_error2(l_x, l_act);
	}
	l_v = (l_setterArgc < 81 ? vm_gml_thread_exec_slice_funcs[l_setterArgc](l_setterFunc, l_st, l_k) : vm_gml_thread_exec_slice_error());
	if (l__out) {
		gml_stack_pop_multi(l_st, l_getterArgc);
		l_st[@l_st[0]] = l_v;
	} else gml_stack_pop_multi(l_st, l_setterArgc);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_special

if (live_enabled) function vm_group_special_on_wait(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_t = gml_stack_pop(l_q.h_stack);
	l_th.h_status = gml_thread_status.waiting;
	l_th.h_wait_time = (is_numeric(l_t) ? l_t : 0);
	ds_list_add(l_q.h_program.h_wait_list, l_th);
	return 1/* gml_thread_proc_result.error */;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_special_on_fork(l_th, l_act) {
	var l_out = l_act.h_out;
	var l_st = l_th.h_scope.h_stack;
	if (l_out) gml_stack_push(l_st, 1);
	l_th.h_fork().h_exec();
	if (l_out) l_st[@l_st[0]] = 0;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_special_on_try(l_th, l_act) {
	var l_q = l_th.h_scope;
	l_q.h_xhdl = new gml_link(l_act.h_hdl, l_q.h_xhdl);
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_special_on_catch(l_th, l_act) {
	var l_q = l_th.h_scope;
	l_q.h_xhdl = l_q.h_xhdl.h_next;
	l_q.h_locals[@l_act.h_v] = l_th.h_error_text;
	l_th.h_error_text = undefined;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_special_on_finally(l_th, l_act) {
	var l_q = l_th.h_scope;
	l_q.h_xhdl = l_q.h_xhdl.h_next;
	l_q.h_offset = l_act.h_p;
	return 2/* gml_thread_proc_result.sync_pos */;
}

if (live_enabled) function vm_group_special_on_throw(l_th, l_act) {
	return l_th.h_proc_error2(gml_std_Std_stringify(gml_stack_pop(l_th.h_scope.h_stack)), l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_stack

if (live_enabled) function vm_group_stack_on_discard(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_stack_on_dup(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_st[l_i - 1];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_stack_on_dup2x(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0] + 2;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i - 1] = l_st[l_i - 3];
	l_st[@l_i] = l_st[l_i - 2];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_stack_on_dup_in(l_th, l_act) {
	var l_st = l_th.h_scope.h_stack;
	var l_i = l_st[0];
	var l_v = l_st[l_i++];
	l_st[@0] = l_i;
	var l_k = l_i - l_act.h_z;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	while (--l_i >= l_k) {
		l_st[@l_i + 1] = l_st[l_i];
	}
	l_st[@l_k] = l_v;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_with

if (live_enabled) function vm_group_with_on_with_pre(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_st = l_q.h_stack;
	var l_i = l_st[0];
	var l_val = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	var l_ctx = l_val;
	var l_arr, l_i, l_n;
	if (is_numeric(l_val)) {
		if (l_ctx >= 100000) {
			if (instance_exists(l_ctx)) {
				l_arr = vm__gml_with_data_gml_with_data_impl__alloc(1);
				l_arr[@0] = l_ctx;
				l_n = 1;
			} else {
				l_arr = vm__gml_with_data_gml_with_data_impl__alloc(0);
				l_n = 0;
			}
			l_q.h_with = new gml_with_scope({ length: l_n, items: l_arr, refc: 1 }, l_q.h_with);
		} else {
			l_n = instance_number(l_ctx);
			l_arr = vm__gml_with_data_gml_with_data_impl__alloc(l_n);
			l_i = 0;
			with (l_ctx) {
				l_arr[@l_i] = self;
				l_i++;
			}
			l_q.h_with = new gml_with_scope({ length: l_i, items: l_arr, refc: 1 }, l_q.h_with);
		}
	} else {
		l_arr = vm__gml_with_data_gml_with_data_impl__alloc(0);
		l_q.h_with = new gml_with_scope({ length: 0, items: l_arr, refc: 1 }, l_q.h_with);
	}
	var l_inst = l_q.h_inst;
	var l_i = l_inst[0] + 1;
	if (l_i >= array_length(l_inst)) l_inst[@array_length(l_inst) * 2] = 0;
	l_inst[@l_i] = undefined;
	l_inst[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_with_on_with_next(l_th, l_act) {
	var l_p = l_act.h_p;
	var l_q = l_th.h_scope;
	var l_with1 = l_q.h_with;
	if (l_with1.h_index < l_with1.h_length) {
		var l_inst = l_q.h_inst;
		l_inst[@l_inst[0]] = l_with1.h_array[l_with1.h_index++];
	} else {
		l_q.h_offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

if (live_enabled) function vm_group_with_on_with_post(l_th, l_act) {
	var l_q = l_th.h_scope;
	var l_with1 = l_q.h_with;
	if (l_with1 != undefined) {
		var l_this1 = l_with1.h_data;
		if (--l_this1.refc == 0) {
			var l_size = l_this1.length;
			var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
			if (l_sln < 5) ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln], l_this1.items);
		}
		l_q.h_with = l_with1.h_next;
		var l_this1 = l_q.h_inst;
		var l_i = l_this1[0];
		l_this1[@l_i] = 0;
		l_this1[@0] = l_i - 1;
	}
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm.v2.gml_thread_v2

if (live_enabled) function vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, l_name, l_fn) {
	var l_id = l_map.h_get(l_name);
	if (l_id != undefined) l_funcs[@l_id] = l_fn; else throw gml_std_haxe_Exception_thrown("Can't find " + l_name);
}

if (live_enabled) function vm_v2_gml_thread_v2_handlers_init() {
	var l_names = gml_std_Type_getEnumConstructs(mt_gml_action);
	var l_map = new haxe_ds_string_map();
	var l_funcs = array_create(array_length(l_names), undefined);
	var l_i = 0;
	for (var l__g1 = array_length(l_names); l_i < l__g1; l_i++) {
		l_map.h_set(l_names[l_i], l_i);
		l_funcs[@l_i] = vm_v2_gml_thread_v2_on_unknown;
	}
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "discard", vm_group_stack_on_discard);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "dup", vm_group_stack_on_dup);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "dup2x", vm_group_stack_on_dup2x);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "dup_in", vm_group_stack_on_dup_in);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "undefined", vm_group_literal_on_undefined);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "number", vm_group_literal_on_number);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "cstring", vm_group_literal_on_cstring);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "const", vm_group_literal_on_const);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "self", vm_group_literal_on_self);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "other", vm_group_literal_on_other);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "result", vm_group_literal_on_result);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "array_decl", vm_group_literal_on_array_decl);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "object_decl", vm_group_literal_on_object_decl);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "bin_op", vm_group_op_on_bin_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "un_op", vm_group_op_on_un_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "equ_op", vm_group_op_on_equ_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "neq_op", vm_group_op_on_neq_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "add_int", vm_group_op_on_add_int);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "concat", vm_group_op_on_concat);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "ds_aop", vm_group_op_on_ds_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_count", vm_group_arg_on_arg_count);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_const", vm_group_arg_on_arg_const);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_const_set", vm_group_arg_on_arg_const_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_const_aop", vm_group_arg_on_arg_const_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_index", vm_group_arg_on_arg_index);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_index_set", vm_group_arg_on_arg_index_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "arg_index_aop", vm_group_arg_on_arg_index_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "local", vm_group_local_on_local);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "local_set", vm_group_local_on_local_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "local_aop", vm_group_local_on_local_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "global", vm_group_global_on_global);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "global_set", vm_group_global_on_global_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "global_aop", vm_group_global_on_global_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "field", vm_group_field_on_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "field_set", vm_group_field_on_field_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "field_aop", vm_group_field_on_field_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "in", vm_group_field_on_in);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "with_pre", vm_group_with_on_with_pre);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "with_next", vm_group_with_on_with_next);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "with_post", vm_group_with_on_with_post);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env", vm_group_env_on_env);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env_set", vm_group_env_on_env_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env_aop", vm_group_env_on_env_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env1d", vm_group_env_on_env1d);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env1d_set", vm_group_env_on_env1d_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "env1d_aop", vm_group_env_on_env1d_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index", vm_group_array_on_index);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index_set", vm_group_array_on_index_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index_aop", vm_group_array_on_index_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index2d", vm_group_array_on_index2d);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index2d_set", vm_group_array_on_index2d_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "index2d_aop", vm_group_array_on_index2d_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "ensure_array_local", vm_group_ensure_on_ensure_array_local);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "ensure_array_global", vm_group_ensure_on_ensure_array_global);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "ensure_array_field", vm_group_ensure_on_ensure_array_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "alarm", vm_group_alarm_on_alarm);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "alarm_set", vm_group_alarm_on_alarm_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "alarm_aop", vm_group_alarm_on_alarm_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "jump", vm_group_jump_on_jump);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "jump_if", vm_group_jump_on_jump_if);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "jump_unless", vm_group_jump_on_jump_unless);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "bool_and", vm_group_jump_on_bool_and);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "bool_or", vm_group_jump_on_bool_or);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "switch", vm_group_jump_on_switch);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "switch_case", vm_group_jump_on_switch_case);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "repeat_pre", vm_group_jump_on_repeat_pre);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "repeat_jump", vm_group_jump_on_repeat_jump);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "break", vm_group_jump_on_break);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "continue", vm_group_jump_on_continue);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "return", vm_group_jump_on_return);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "wait", vm_group_special_on_wait);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "fork", vm_group_special_on_fork);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "try", vm_group_special_on_try);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "catch", vm_group_special_on_catch);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "finally", vm_group_special_on_finally);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "throw", vm_group_special_on_throw);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script", vm_group_call_on_call_script);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script_id", vm_group_call_on_call_script_id);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script_with_array", vm_group_call_on_call_script_with_array);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_func", vm_group_call_on_call_func);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_field", vm_group_call_on_call_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "construct", vm_group_call_on_construct);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "func_literal", vm_group_call_on_func_literal);
	var l_i = 0;
	for (var l__g1 = array_length(l_names); l_i < l__g1; l_i++) {
		var l_tmp = l_funcs[l_i] == vm_v2_gml_thread_v2_on_unknown;
	}
	return l_funcs;
}

if (live_enabled) function vm_v2_gml_thread_v2_on_unknown(l_th, l_act) {
	l_th.h_proc_error("Can't execute " + gml_std_Type_enumConstructor(l_act), l_act);
	return 1/* gml_thread_proc_result.error */;
}

#endregion

// gml.builder:
globalvar gml_builder_build_line_is_stat; 
globalvar gml_builder_build_line_is_expr; 
// gml.compile:
globalvar gml_compile_error_text; 
globalvar gml_compile_error_pos; 
globalvar gml_compile_curr_script; 
globalvar gml_compile_curr_program; 
globalvar gml_compile_curr_break; if (live_enabled) gml_compile_curr_break = -1;
globalvar gml_compile_curr_continue; if (live_enabled) gml_compile_curr_continue = -1;
// gml.parser:
globalvar gml_parser_has_func_literal; if (live_enabled) gml_parser_has_func_literal = false;
globalvar gml_parser_has_constructor; if (live_enabled) gml_parser_has_constructor = false;
globalvar gml_parser_has_try_catch; if (live_enabled) gml_parser_has_try_catch = true;
globalvar gml_parser_gml23; if (live_enabled) gml_parser_gml23 = false;
globalvar gml_parser_error_text; 
globalvar gml_parser_error_pos; 
globalvar gml_parser_src_buf; if (live_enabled) gml_parser_src_buf = buffer_create(1024, buffer_fast, 1);
globalvar gml_parser_str_buf; if (live_enabled) gml_parser_str_buf = buffer_create(1024, buffer_grow, 1);
globalvar gml_parser_buf_sub_buf; if (live_enabled) gml_parser_buf_sub_buf = buffer_create(1024, buffer_grow, 1);
globalvar gml_parser_tem_row; 
globalvar gml_parser_tem_row_start; 
globalvar gml_parser_tem_end; 
globalvar gml_parser_tokens_found; 
// gml.program:
globalvar gml_program_seek_inst; 
globalvar gml_program_seek_func; 
globalvar gml_program_seek_script; 
// ast.gml_node_tools_ni:
globalvar ast_gml_node_tools_ni_concat_pos_pos; 
// gml.script:
globalvar gml_script_index_offset; if (live_enabled) gml_script_index_offset = 0;
// gml:
globalvar gml_sig_list; if (live_enabled) gml_sig_list = ds_list_create();
globalvar gml_func_sig; if (live_enabled) gml_func_sig = new haxe_ds_string_map();
globalvar gml_func_arg0; if (live_enabled) gml_func_arg0 = new haxe_ds_string_map();
globalvar gml_func_arg1; if (live_enabled) gml_func_arg1 = new haxe_ds_string_map();
globalvar gml_func_args; if (live_enabled) gml_func_args = new haxe_ds_string_map();
globalvar gml_func_rest; if (live_enabled) gml_func_rest = new haxe_ds_string_map();
globalvar gml_func_eval; if (live_enabled) gml_func_eval = new haxe_ds_string_map();
globalvar gml_func_script; if (live_enabled) gml_func_script = new haxe_ds_string_map();
globalvar gml_func_script_id; if (live_enabled) gml_func_script_id = new haxe_ds_string_map();
globalvar gml_inst_data; if (live_enabled) gml_inst_data = new haxe_ds_string_map();
globalvar gml_var_flags; if (live_enabled) gml_var_flags = new haxe_ds_string_map();
globalvar gml_var_refs; if (live_enabled) gml_var_refs = new haxe_ds_string_map();
globalvar gml_var_types; if (live_enabled) gml_var_types = new haxe_ds_string_map();
globalvar gml_pf_readonly; if (live_enabled) gml_pf_readonly = 1;
globalvar gml_pf_array; if (live_enabled) gml_pf_array = 2;
globalvar gml_pf_inst; if (live_enabled) gml_pf_inst = 4;
globalvar gml_const_map; if (live_enabled) gml_const_map = new haxe_ds_string_map();
globalvar gml_const_val; if (live_enabled) gml_const_val = new haxe_ds_string_map();
globalvar gml_asset_kind; if (live_enabled) gml_asset_kind = new haxe_ds_string_map();
globalvar gml_asset_index; if (live_enabled) gml_asset_index = new haxe_ds_string_map();
globalvar gml_enum_map; if (live_enabled) gml_enum_map = new haxe_ds_string_map();
// gml.seek_eval:
globalvar gml_seek_eval_error_text; 
globalvar gml_seek_eval_error_pos; 
globalvar gml_seek_eval_eval_rec; 
globalvar gml_seek_eval_eval_thread; if (live_enabled) gml_seek_eval_eval_thread = undefined;
globalvar gml_seek_eval_eval_actions; if (live_enabled) gml_seek_eval_eval_actions = ds_list_create();
globalvar gml_seek_eval_invalid_value; if (live_enabled) gml_seek_eval_invalid_value = [];
// gml.seek_set_op:
globalvar gml_seek_set_op_resolve_set_op_safe; 
globalvar gml_seek_set_op_resolve_set_op_xw; 
// gml_std.gml.internal.ArrayImpl:
globalvar gml_std_gml_internal_ArrayImpl_join_buf; if (live_enabled) gml_std_gml_internal_ArrayImpl_join_buf = undefined;
// haxe.ds.basic_map:
globalvar haxe_ds_basic_map_blank; if (live_enabled) haxe_ds_basic_map_blank = [];
// live:
globalvar live_async_http_1_found; if (live_enabled) live_async_http_1_found = new haxe_ds_string_map();
globalvar live_async_http_1_acc; if (live_enabled) live_async_http_1_acc = ds_list_create();
// live_shader:
globalvar live_shader_updated; if (live_enabled) live_shader_updated = live_shader_updated_default;
globalvar live_shader_live_shaders; if (live_enabled) live_shader_live_shaders = ds_map_create();
globalvar live_shader_live_shaders_start; if (live_enabled) live_shader_live_shaders_start = ds_list_create();
globalvar live_shader_live_shaders_stop; if (live_enabled) live_shader_live_shaders_stop = ds_list_create();
// live:
globalvar live_is_ready; if (live_enabled) live_is_ready = false;
globalvar live_request_url; if (live_enabled) live_request_url = undefined;
globalvar live_request_guid; if (live_enabled) live_request_guid = undefined;
globalvar live_request_id; if (live_enabled) live_request_id = undefined;
globalvar live_request_time; if (live_enabled) live_request_time = 0;
globalvar live_request_rate; if (live_enabled) live_request_rate = 1;
globalvar live_request_password; if (live_enabled) live_request_password = "";
globalvar live_result; if (live_enabled) live_result = "";
globalvar live_directory; 
globalvar live_live_map; if (live_enabled) live_live_map = new haxe_ds_string_map();
globalvar live_live_list; if (live_enabled) live_live_list = ds_list_create();
globalvar live_live_enums; if (live_enabled) live_live_enums = new haxe_ds_string_map();
globalvar live_live_macros; if (live_enabled) live_live_macros = new haxe_ds_string_map();
globalvar live_live_globals; if (live_enabled) live_live_globals = undefined;
globalvar live_live_sprites; if (live_enabled) live_live_sprites = ds_map_create();
globalvar live_live_sprites_start; if (live_enabled) live_live_sprites_start = ds_list_create();
globalvar live_live_sprites_stop; if (live_enabled) live_live_sprites_stop = ds_list_create();
globalvar live_live_room; if (live_enabled) live_live_room = -1;
globalvar live_live_room_data; if (live_enabled) live_live_room_data = ds_map_create();
globalvar live_live_rooms; if (live_enabled) live_live_rooms = ds_map_create();
globalvar live_live_rooms_start; if (live_enabled) live_live_rooms_start = ds_list_create();
globalvar live_live_rooms_stop; if (live_enabled) live_live_rooms_stop = ds_list_create();
globalvar live_blank_object; if (live_enabled) live_blank_object = -1;
globalvar live_blank_room; if (live_enabled) live_blank_room = -1;
globalvar live_temp_path; if (live_enabled) live_temp_path = "gmlive-" + gml_std_Std_stringify(gml_std_Date_now().h_getTime());
globalvar live_log_script; if (live_enabled) live_log_script = live_log_impl;
globalvar live_update_script; if (live_enabled) live_update_script = live_update_script_impl;
globalvar live_name; if (live_enabled) live_name = undefined;
globalvar live_custom_self; if (live_enabled) live_custom_self = undefined;
globalvar live_custom_other; if (live_enabled) live_custom_other = undefined;
globalvar live_room_updated; if (live_enabled) live_room_updated = live_room_updated_impl;
// live.room_loader:
globalvar live_room_loader_object_cache; if (live_enabled) live_room_loader_object_cache = ds_map_create();
globalvar live_room_loader_sprite_cache; if (live_enabled) live_room_loader_sprite_cache = ds_map_create();
globalvar live_room_loader_use_physics; if (live_enabled) live_room_loader_use_physics = false;
globalvar live_room_loader_room_x; if (live_enabled) live_room_loader_room_x = 0;
globalvar live_room_loader_room_y; if (live_enabled) live_room_loader_room_y = 0;
globalvar live_room_loader_apply_backgrounds; if (live_enabled) live_room_loader_apply_backgrounds = true;
globalvar live_room_loader_apply_instances; if (live_enabled) live_room_loader_apply_instances = true;
globalvar live_room_loader_apply_tiles; if (live_enabled) live_room_loader_apply_tiles = true;
globalvar live_room_loader_apply_views; if (live_enabled) live_room_loader_apply_views = true;
globalvar live_room_loader_apply_settings; if (live_enabled) live_room_loader_apply_settings = true;
globalvar live_room_loader_apply_sprites; if (live_enabled) live_room_loader_apply_sprites = true;
globalvar live_room_loader_inst_map_gml; if (live_enabled) live_room_loader_inst_map_gml = ds_map_create();
globalvar live_room_loader_inst_map_yy; if (live_enabled) live_room_loader_inst_map_yy = ds_map_create();
// gml.stack:
globalvar gml_stack_fill_value_arr; if (live_enabled) gml_stack_fill_value_arr = array_create(1024, 0);
// gml:
globalvar gml_object_children; 
globalvar gml_object_fields; if (live_enabled) gml_object_fields = gml_object_init();
globalvar gml_object_field_names; 
globalvar gml_object_access; 
// gml.thread:
globalvar gml_thread_allow_exceptions; if (live_enabled) gml_thread_allow_exceptions = false;
globalvar gml_thread_current; if (live_enabled) gml_thread_current = undefined;
// vm.gml_thread_exec_slice:
globalvar vm_gml_thread_exec_slice_funcs; if (live_enabled) vm_gml_thread_exec_slice_funcs = vm_gml_thread_exec_slice_init();
// gml.type_check:
globalvar gml_type_check_map; if (live_enabled) gml_type_check_map = gml_type_check_init();
// gml.value:
globalvar gml_value_print_refs; if (live_enabled) gml_value_print_refs = ds_map_create();
globalvar gml_value_print_num; if (live_enabled) gml_value_print_num = 0;
// vm._gml_with_data.gml_with_data_impl_:
globalvar vm__gml_with_data_gml_with_data_impl__pools; if (live_enabled) vm__gml_with_data_gml_with_data_impl__pools = vm__gml_with_data_gml_with_data_impl__init();
// vm.impl.gml_thread_construct:
globalvar vm_impl_gml_thread_construct_funcs; if (live_enabled) vm_impl_gml_thread_construct_funcs = vm_impl_gml_thread_construct_init();
// vm_group_call:
globalvar vm_group_call_call_func_result; 
globalvar vm_group_call_call_func_status; 
// vm_group_op:
globalvar vm_group_op_funcs; if (live_enabled) vm_group_op_funcs = vm_group_op_impl();
// vm.v2.gml_thread_v2:
globalvar vm_v2_gml_thread_v2_handlers; if (live_enabled) vm_v2_gml_thread_v2_handlers = vm_v2_gml_thread_v2_handlers_init();

if (live_enabled) {
	gml_parser_set_gml23(true);
	live_preinit_api();
	live_preinit_project();
}
