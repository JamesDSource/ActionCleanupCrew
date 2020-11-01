// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project if publishing the source code!
// Generated at 2020-07-02 15:08:09 (10635ms) for v2.3+
#region metatype
globalvar gml_std_haxe_type_markerValue; gml_std_haxe_type_markerValue = [];
globalvar mt_gml_std_Date; mt_gml_std_Date = new gml_std_haxe_class(-1, "gml_std_Date");
globalvar mt_gml_builder; mt_gml_builder = new gml_std_haxe_class(-1, "gml_builder");
globalvar mt_gml_program; mt_gml_program = new gml_std_haxe_class(-1, "gml_program");
globalvar mt_gml_enum_ctr; mt_gml_enum_ctr = new gml_std_haxe_class(-1, "gml_enum_ctr");
globalvar mt_gml_node; mt_gml_node = new gml_std_haxe_enum(-1, "gml_node", ["undefined", "number", "cstring", "enum_ctr", "array_decl", "object_decl", "ensure_array", "ident", "self", "other", "global_ref", "script", "native_script", "const", "arg_const", "arg_index", "arg_count", "call", "call_script", "call_script_at", "call_script_id", "call_script_with_array", "call_field", "call_func", "call_func_at", "prefix", "postfix", "un_op", "bin_op", "set_op", "to_bool", "from_bool", "in", "local", "local_set", "local_aop", "global", "global_set", "global_aop", "field", "field_set", "field_aop", "env", "env_set", "env_aop", "env_fd", "env_fd_set", "env_fd_aop", "env1d", "env1d_set", "env1d_aop", "alarm", "alarm_set", "alarm_aop", "index", "index_set", "index_aop", "index_prefix", "index_postfix", "index2d", "index2d_set", "index2d_aop", "index2d_prefix", "index2d_postfix", "raw_id", "raw_id_set", "raw_id_aop", "raw_id_prefix", "raw_id_postfix", "raw_id2d", "raw_id2d_set", "raw_id2d_aop", "raw_id2d_prefix", "raw_id2d_postfix", "ds_list", "ds_list_set", "ds_list_aop", "ds_list_prefix", "ds_list_postfix", "ds_map", "ds_map_set", "ds_map_aop", "ds_map_prefix", "ds_map_postfix", "ds_grid", "ds_grid_set", "ds_grid_aop", "ds_grid_prefix", "ds_grid_postfix", "var_decl", "block", "if_then", "ternary", "switch", "wait", "fork", "while", "do_until", "do_while", "repeat", "for", "with", "once", "return", "exit", "break", "continue", "debugger", "comment_line", "comment_line_pre", "comment_line_post", "comment_line_sep", "comment_block", "comment_block_pre", "comment_block_post"]);
globalvar mt_gml_pos; mt_gml_pos = new gml_std_haxe_class(-1, "gml_pos");
globalvar mt_gml_script; mt_gml_script = new gml_std_haxe_class(-1, "gml_script");
globalvar mt_gml_source; mt_gml_source = new gml_std_haxe_class(-1, "gml_source");
globalvar mt_gml_token; mt_gml_token = new gml_std_haxe_enum(-1, "gml_token", ["header", "macro", "hash", "semico", "comma", "period", "colon", "qmark", "at_sign", "keyword", "ident", "env", "undefined", "number", "cstring", "un_op", "in", "adjfix", "bin_op", "set_op", "par_open", "par_close", "sqb_open", "sqb_close", "cub_open", "cub_close", "arg_const", "comment_post", "comment_line", "comment_block"]);
globalvar mt_gml_std_haxe_class; mt_gml_std_haxe_class = new gml_std_haxe_class(-1, "gml_std_haxe_class");
globalvar mt_gml_std_haxe_enum; mt_gml_std_haxe_enum = new gml_std_haxe_class(-1, "gml_std_haxe_enum");
globalvar mt_gml_std_haxe_Exception; mt_gml_std_haxe_Exception = new gml_std_haxe_class(-1, "gml_std_haxe_Exception");
globalvar mt_gml_std_haxe_ValueException; mt_gml_std_haxe_ValueException = new gml_std_haxe_class(-1, "gml_std_haxe_ValueException");
mt_gml_std_haxe_ValueException.superClass = mt_gml_std_haxe_Exception;
globalvar mt_haxe_ds_basic_map; mt_haxe_ds_basic_map = new gml_std_haxe_class(-1, "haxe_ds_basic_map");
globalvar mt_haxe_ds_string_map; mt_haxe_ds_string_map = new gml_std_haxe_class(-1, "haxe_ds_string_map");
mt_haxe_ds_string_map.superClass = mt_haxe_ds_basic_map;
globalvar mt_haxe_iterators_array_iterator; mt_haxe_iterators_array_iterator = new gml_std_haxe_class(-1, "haxe_iterators_array_iterator");
globalvar mt_gml_action; mt_gml_action = new gml_std_haxe_enum(-1, "gml_action", ["discard", "dup", "dup2x", "dup_in", "undefined", "number", "cstring", "array_decl", "object_decl", "const", "self", "other", "local", "local_set", "local_aop", "global", "global_set", "global_aop", "field", "field_set", "field_aop", "index", "index_set", "index_aop", "index2d", "index2d_set", "index2d_aop", "env", "env_set", "env_aop", "env1d", "env1d_set", "env1d_aop", "ds_aop", "arg_const", "arg_const_set", "arg_const_aop", "arg_index", "arg_index_set", "arg_index_aop", "arg_count", "add_int", "equ_op", "neq_op", "add_op", "concat", "bin_op", "un_op", "in", "call_script", "call_script_id", "call_script_with_array", "call_script_at", "call_func", "jump", "jump_if", "jump_unless", "bool_and", "bool_or", "switch", "repeat_jump", "repeat_pre", "with_pre", "with_next", "with_post", "break", "continue", "return", "result", "wait", "fork", "ensure_array_local", "ensure_array_global", "ensure_array_field", "alarm", "alarm_set", "alarm_aop"]);
globalvar mt_gml_thread_scope; mt_gml_thread_scope = new gml_std_haxe_class(-1, "gml_thread_scope");
globalvar mt_gml_with_scope; mt_gml_with_scope = new gml_std_haxe_class(-1, "gml_with_scope");
#endregion
function gml_std_enum_toString() {
	return gml_std_Std_stringify(self);
}
function gml_std_enum_getIndex() {
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

function gml_std_Date(l_year, l_month, l_day, l_hour, l_min1, l_sec) constructor {
	static date = undefined;
	self.date = date_create_datetime(l_year, l_month + 1, l_day, l_hour, l_min1, l_sec);
	static __class__ = mt_gml_std_Date;
}
mt_gml_std_Date.i_constructor = gml_std_Date;

function gml_std_Date_now() {
	var l_d = new gml_std_Date(2000, 0, 1, 0, 0, 0);
	l_d.date = date_current_datetime();
	return l_d;
}

#endregion

#region gml.builder

function gml_builder(l_src) constructor {
	static tokens = undefined;
	static source = undefined;
	static offset = undefined;
	static length = undefined;
	static scripts = undefined;
	static enums = undefined;
	static macro_names = undefined;
	static macro_nodes = undefined;
	static error_text = undefined;
	static error_pos = undefined;
	static error_at = function(l_text, l_pos) {
		self.error_text = l_pos.to_string() + ": " + l_text;
		self.error_pos = l_pos;
		return true;
	}
	static error = function(l_text, l_tk) {
		return self.error_at(l_text, l_tk.d);
	}
	static expect = function(l_text, l_tk) {
		return self.error("Expected " + l_text + ", got " + gml_std_Type_enumConstructor(l_tk), l_tk);
	}
	static expect_node = function(l_text, l_node) {
		return self.error_at("Expected " + l_text + ", got " + gml_std_Type_enumConstructor(l_node), gml_std_haxe_enum_tools_getParameter(l_node, 0));
	}
	static out_node = undefined;
	static build_ops = function(l_firstPos, l_firstOp) {
		self.offset += 1;
		var l_nodes = ds_list_create();
		ds_list_add(l_nodes, self.out_node);
		var l_ops = ds_list_create();
		ds_list_add(l_ops, l_firstOp);
		var l_locs = ds_list_create();
		ds_list_add(l_locs, l_firstPos);
		var l_proc = true;
		var l_i;
		while (l_proc && self.offset < self.length) {
			if (self.build_expr(1)) {
				ds_list_destroy(l_nodes);
				ds_list_destroy(l_ops);
				ds_list_destroy(l_locs);
				return true;
			}
			ds_list_add(l_nodes, self.out_node);
			if (self.offset < self.length) {
				var l__g = self.tokens[self.offset];
				switch (l__g.__enumIndex__/* gml_token */) {
					case 18/* bin_op */:
						self.offset += 1;
						ds_list_add(l_locs, l__g.d);
						ds_list_add(l_ops, l__g.op);
						break;
					case 19/* set_op */:
						if (l__g.op == -1) {
							self.offset += 1;
							ds_list_add(l_locs, l__g.d);
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
		self.out_node = l_nodes[|0];
		ds_list_destroy(l_nodes);
		ds_list_destroy(l_ops);
		ds_list_destroy(l_locs);
		return false;
	}
	static build_args = function(l_pos, l_sqb) {
		var l_args1 = [];
		var l_proc = true;
		var l_seenComma = true;
		var l_func = self.out_node;
		while (l_proc && self.offset < self.length) {
			var l_tk = self.tokens[self.offset];
			switch (l_tk.__enumIndex__/* gml_token */) {
				case 21/* par_close */:
					if (l_sqb) {
						return self.error("Unexpected `)`", l_tk);
					} else {
						l_proc = false;
						self.offset += 1;
					}
					break;
				case 23/* sqb_close */:
					if (l_sqb) {
						l_proc = false;
						self.offset += 1;
					} else return self.error("Unexpected `]`", l_tk);
					break;
				case 4/* comma */:
					if (l_seenComma) {
						return self.error("Unexpected comma", l_tk);
					} else {
						l_seenComma = true;
						self.offset += 1;
					}
					break;
				default:
					if (l_seenComma) {
						l_seenComma = false;
						if (self.build_expr(0)) return true;
						gml_std_gml_internal_ArrayImpl_push(l_args1, self.out_node);
					} else return self.expect("a comma or closing token.", l_tk);
			}
		}
		if (l_proc) return self.error_at("Unclosed list", l_pos);
		if (l_sqb) self.out_node = gml_node_array_decl(l_pos, l_args1); else self.out_node = gml_node_call(l_pos, l_func, l_args1);
		return false;
	}
	static build_expr = function(l_flags) {
		if (self.offset >= self.length) return self.error_at("Expected an expression", self.source.get_eof());
		var l_proc, l_sep, l_i, l_n, l_s, l_tk;
		var l_tk0 = self.tokens[self.offset++];
		var l_node, l_node2, l_nodes;
		switch (l_tk0.__enumIndex__/* gml_token */) {
			case 12/* undefined */: self.out_node = gml_node_undefined(l_tk0.d); break;
			case 13/* number */: self.out_node = gml_node_number(l_tk0.d, l_tk0.nu, l_tk0.src); break;
			case 14/* cstring */: self.out_node = gml_node_cstring(l_tk0.d, l_tk0.st); break;
			case 22/* sqb_open */:
				l_proc = true;
				l_sep = true;
				self.build_args(l_tk0.d, true);
				break;
			case 10/* ident */:
				var l_s1 = l_tk0.id;
				switch (l_s1) {
					case "self": self.out_node = gml_node_self(l_tk0.d); break;
					case "other": self.out_node = gml_node_other(l_tk0.d); break;
					default:
						if (gml_asset_index.exists(l_s1)) {
							l_i = gml_asset_index.get(l_s1);
							self.out_node = gml_node_number(l_tk0.d, l_i, undefined);
						} else self.out_node = gml_node_ident(l_tk0.d, l_s1);
				}
				break;
			case 26/* arg_const */: self.out_node = gml_node_arg_const(l_tk0.d, l_tk0.i); break;
			case 9/* keyword */:
				switch (l_tk0.kw) {
					case 0:
						var l_d = l_tk0.d;
						if (self.offset >= self.length) {
							self.out_node = gml_node_global_ref(l_d);
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 5/* period */) {
							l_tk = self.tokens[self.offset++];
							if (self.offset >= self.length) {
								return self.expect("a field name", l_tk);
							} else {
								var l__g1 = self.tokens[self.offset];
								if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
									self.offset += 1;
									self.out_node = gml_node_global(l__g1.d, l__g1.id);
								} else return self.expect("a field name", self.tokens[self.offset]);
							}
						} else self.out_node = gml_node_global_ref(l_d);
						break;
					case 21:
						if (self.offset >= self.length) {
							return self.error_at("Expected an opening square bracket", self.source.get_eof());
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 22/* sqb_open */) {
							self.offset += 1;
						} else return self.error("Expected an opening square bracket", self.tokens[self.offset]);
						if (self.build_expr(0)) return true;
						if (self.offset >= self.length) {
							return self.error_at("Expected a closing square bracket", self.source.get_eof());
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
							self.offset += 1;
						} else return self.error("Expected a closing square bracket", self.tokens[self.offset]);
						self.out_node = gml_node_arg_index(l_tk0.d, self.out_node);
						break;
					case 22: self.out_node = gml_node_arg_count(l_tk0.d); break;
					default: if ((l_flags & 4) != 0) return self.expect("a statement", l_tk0); else return self.expect("a value", l_tk0);
				}
				break;
			case 15/* un_op */:
				if (self.build_expr(1)) return true;
				var l__g = self.out_node;
				if (l__g.__enumIndex__/* gml_node */ == 1/* number */) {
					var l_f = l__g.value;
					switch (l_tk0.op) {
						case 2: l_f = ~(l_f | 0); break;
						case 0: l_f = -l_f; break;
						case 1: l_f = (l_f > 0.5 ? 0 : 1); break;
					}
					self.out_node = gml_node_number(l_tk0.d, l_f, undefined);
				} else self.out_node = gml_node_un_op(l_tk0.d, self.out_node, l_tk0.op);
				break;
			case 17/* adjfix */:
				if (self.build_expr(1)) return true;
				self.out_node = gml_node_prefix(l_tk0.d, self.out_node, l_tk0.inc);
				break;
			case 18/* bin_op */:
				var l__g = l_tk0.d;
				switch (l_tk0.op) {
					case 16: if (self.build_expr(1)) return true; break;
					case 17:
						var l_d = l__g;
						if (self.build_expr(1)) return true;
						var l__g = self.out_node;
						if (l__g.__enumIndex__/* gml_node */ == 1/* number */) self.out_node = gml_node_number(l_d, -l__g.value, undefined); else self.out_node = gml_node_un_op(l_d, self.out_node, 0);
						break;
					default: if ((l_flags & 4) != 0) return self.expect("a statement", l_tk0); else return self.expect("a value", l_tk0);
				}
				break;
			case 20/* par_open */:
				if (self.build_expr(0)) return true;
				if (self.offset >= self.length) return self.error("Unclosed parenthesis", l_tk0);
				if (self.offset >= self.length) {
					return self.error_at("Expected a closing parenthesis", self.source.get_eof());
				} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 21/* par_close */) {
					self.offset += 1;
				} else return self.error("Expected a closing parenthesis", self.tokens[self.offset]);
				break;
			case 24/* cub_open */:
				var l_keys = [];
				l_nodes = [];
				l_proc = true;
				var l__g = self.tokens[self.offset];
				var l_tmp;
				if (l__g.__enumIndex__/* gml_token */ == 25/* cub_close */) l_tmp = true; else l_tmp = false;
				if (l_tmp) {
					self.offset += 1;
				} else while (l_proc && self.offset < self.length) {
					var l__g = self.tokens[self.offset];
					switch (l__g.__enumIndex__/* gml_token */) {
						case 14/* cstring */:
							l_s = l__g.st;
							gml_std_gml_internal_ArrayImpl_push(l_keys, l_s);
							self.offset += 1;
							if (self.offset >= self.length) {
								return self.error_at("Expected a `:` in object declaration", self.source.get_eof());
							} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
								self.offset += 1;
							} else return self.error("Expected a `:` in object declaration", self.tokens[self.offset]);
							if (self.build_expr(0)) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
							switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.offset += 1;
									if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 25/* cub_close */) {
										self.offset += 1;
										l_proc = false;
									}
									break;
								case 25/* cub_close */:
									self.offset += 1;
									l_proc = false;
									break;
								default: return self.expect("a `,` or a `}` in object declaration", self.tokens[self.offset]);
							}
							break;
						case 10/* ident */:
							l_s = l__g.id;
							gml_std_gml_internal_ArrayImpl_push(l_keys, l_s);
							self.offset += 1;
							if (self.offset >= self.length) {
								return self.error_at("Expected a `:` in object declaration", self.source.get_eof());
							} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
								self.offset += 1;
							} else return self.error("Expected a `:` in object declaration", self.tokens[self.offset]);
							if (self.build_expr(0)) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
							switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.offset += 1;
									if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 25/* cub_close */) {
										self.offset += 1;
										l_proc = false;
									}
									break;
								case 25/* cub_close */:
									self.offset += 1;
									l_proc = false;
									break;
								default: return self.expect("a `,` or a `}` in object declaration", self.tokens[self.offset]);
							}
							break;
						default: return self.expect("a key-value pair or a `}` in object declaration", self.tokens[self.offset]);
					}
				}
				self.out_node = gml_node_object_decl(l_tk0.d, l_keys, l_nodes);
				break;
			case 28/* comment_line */:
				if (self.build_expr(l_flags)) return true;
				self.out_node = gml_node_comment_line_sep(l_tk0.d, l_tk0.s, self.out_node);
				break;
			case 27/* comment_post */:
				if (self.build_expr(l_flags)) return true;
				self.out_node = gml_node_comment_line_pre(l_tk0.d, l_tk0.s, self.out_node);
				break;
			case 29/* comment_block */:
				if (self.build_expr(l_flags)) return true;
				self.out_node = gml_node_comment_block_pre(l_tk0.d, l_tk0.s, self.out_node, l_tk0.pl);
				break;
			case 0/* header */: if ((l_flags & 4) != 0) return self.error("Expected a statement, got a header (did you miss a closing bracket?)", l_tk0); else return self.error("Expected an expression, got a header (did you miss a closing parenthesis?)", l_tk0);
			default: if ((l_flags & 4) != 0) return self.expect("a statement", l_tk0); else return self.expect("a value", l_tk0);
		}
		l_proc = true;
		while (l_proc && self.offset < self.length) {
			l_tk = self.tokens[self.offset];
			switch (l_tk.__enumIndex__/* gml_token */) {
				case 17/* adjfix */:
					if ((l_flags & 2) == 0) {
						self.offset += 1;
						self.out_node = gml_node_postfix(l_tk.d, self.out_node, l_tk.inc);
						l_flags |= 2;
					} else if (l_tk.inc) {
						return self.error_at("Unexpected `++`", l_tk.d);
					} else return self.error_at("Unexpected `--`", l_tk.d);
					break;
				case 5/* period */:
					if ((l_flags & 2) == 0) {
						self.offset += 1;
						var l__g = self.tokens[self.offset];
						if (l__g.__enumIndex__/* gml_token */ == 10/* ident */) {
							l_s = l__g.id;
							self.offset += 1;
							self.out_node = gml_node_field(l_tk.d, self.out_node, l_s);
						} else return self.error("Expected a field name", self.tokens[self.offset]);
					} else return self.error("Unexpected period", self.tokens[self.offset]);
					break;
				case 20/* par_open */:
					if ((l_flags & 2) == 0) {
						self.offset += 1;
						if (self.build_args(l_tk.d, false)) return true;
					} else return self.error_at("Unexpected `(`", l_tk.d);
					break;
				case 22/* sqb_open */:
					var l_d6 = l_tk.d;
					if ((l_flags & 2) == 0) {
						self.offset += 1;
						if (self.offset >= self.length) return self.error_at("Expected an index", self.source.get_eof());
						l_node = self.out_node;
						var l__g6 = self.tokens[self.offset];
						switch (l__g6.__enumIndex__/* gml_token */) {
							case 18/* bin_op */:
								if (l__g6.op == 48) {
									self.offset += 1;
									if (self.build_expr(0)) return true;
									if (self.offset >= self.length) {
										return self.error_at("Expected a closing bracket", self.source.get_eof());
									} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
										self.offset += 1;
									} else return self.error("Expected a closing bracket", self.tokens[self.offset]);
									self.out_node = gml_node_ds_list(l_d6, l_node, self.out_node);
								} else l_proc = false;
								break;
							case 7/* qmark */:
								self.offset += 1;
								if (self.build_expr(0)) return true;
								if (self.offset >= self.length) {
									return self.error_at("Expected a closing bracket", self.source.get_eof());
								} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
									self.offset += 1;
								} else return self.error("Expected a closing bracket", self.tokens[self.offset]);
								self.out_node = gml_node_ds_map(l_d6, l_node, self.out_node);
								break;
							case 2/* hash */:
								self.offset += 1;
								if (self.build_expr(0)) return true;
								l_node2 = self.out_node;
								if (self.offset >= self.length) {
									return self.error_at("Expected a comma", self.source.get_eof());
								} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 4/* comma */) {
									self.offset += 1;
								} else return self.error("Expected a comma", self.tokens[self.offset]);
								if (self.build_expr(0)) return true;
								if (self.offset >= self.length) {
									return self.error_at("Expected a closing bracket", self.source.get_eof());
								} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
									self.offset += 1;
								} else return self.error("Expected a closing bracket", self.tokens[self.offset]);
								self.out_node = gml_node_ds_grid(l_d6, l_node, l_node2, self.out_node);
								break;
							case 8/* at_sign */:
								self.offset += 1;
								if (self.build_expr(0)) return true;
								if (self.offset >= self.length) return self.error_at("Expected comma or a closing bracket", self.source.get_eof());
								switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
									case 4/* comma */:
										self.offset += 1;
										l_node2 = self.out_node;
										if (self.build_expr(0)) return true;
										if (self.offset >= self.length) {
											return self.error_at("Expected a closing bracket", self.source.get_eof());
										} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
											self.offset += 1;
										} else return self.error("Expected a closing bracket", self.tokens[self.offset]);
										self.out_node = gml_node_raw_id2d(l_d6, l_node, l_node2, self.out_node);
										break;
									case 23/* sqb_close */:
										self.offset += 1;
										self.out_node = gml_node_raw_id(l_d6, l_node, self.out_node);
										break;
									default: self.expect("comma or a closing bracket", self.tokens[self.offset]);
								}
								break;
							default: l_proc = false;
						}
						if (!l_proc) {
							l_proc = true;
							if (self.build_expr(0)) return true;
							if (self.offset >= self.length) return self.error_at("Expected comma or a closing bracket", self.source.get_eof());
							switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
								case 4/* comma */:
									self.offset += 1;
									l_node2 = self.out_node;
									if (self.build_expr(0)) return true;
									if (self.offset >= self.length) {
										return self.error_at("Expected a closing bracket", self.source.get_eof());
									} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 23/* sqb_close */) {
										self.offset += 1;
									} else return self.error("Expected a closing bracket", self.tokens[self.offset]);
									self.out_node = gml_node_index2d(l_d6, l_node, l_node2, self.out_node);
									break;
								case 23/* sqb_close */:
									self.offset += 1;
									self.out_node = gml_node_index(l_d6, l_node, self.out_node);
									break;
								default: self.expect("comma or a closing bracket", self.tokens[self.offset]);
							}
						}
					} else return self.error_at("Unexpected `[`", l_d6);
					break;
				case 15/* un_op */:
					if (l_tk.op == 1) {
						var l_d2 = l_tk.d;
						if ((l_flags & 2) == 0) {
							self.offset += 1;
							if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 16/* in */) {
								l_node = self.out_node;
								self.offset += 1;
								if (self.build_expr(1)) return true;
								self.out_node = gml_node_in(l_d2, l_node, self.out_node, true);
							} else self.offset -= 1;
						}
					} else l_proc = false;
					break;
				case 16/* in */:
					if ((l_flags & 2) == 0) {
						l_node = self.out_node;
						self.offset += 1;
						if (self.build_expr(1)) return true;
						self.out_node = gml_node_in(l_tk.d, l_node, self.out_node, false);
					}
					break;
				case 18/* bin_op */:
					if ((l_flags & 1) == 0) {
						if (self.build_ops(l_tk.d, l_tk.op)) return true;
						l_flags |= 2;
					} else l_proc = false;
					break;
				case 19/* set_op */:
					if (l_tk.op == -1) {
						var l_p1 = l_tk.d;
						if ((l_flags & 1) == 0) {
							if (self.build_ops(l_p1, 64)) return true;
							l_flags |= 2;
						} else l_proc = false;
					} else l_proc = false;
					break;
				case 7/* qmark */:
					if ((l_flags & 1) == 0) {
						self.offset += 1;
						l_node = self.out_node;
						if (self.build_expr(0)) return true;
						l_node2 = self.out_node;
						if (self.offset >= self.length) {
							return self.error_at("Expected an else-colon", self.source.get_eof());
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
							self.offset += 1;
						} else return self.error("Expected an else-colon", self.tokens[self.offset]);
						if (self.build_expr(0)) return true;
						self.out_node = gml_node_ternary(l_tk.d, l_node, l_node2, self.out_node);
					} else l_proc = false;
					break;
				case 27/* comment_post */:
					self.offset += 1;
					self.out_node = gml_node_comment_line_post(l_tk.d, self.out_node, l_tk.s);
					break;
				case 28/* comment_line */: self.offset += 1; break;
				case 29/* comment_block */:
					self.offset += 1;
					self.out_node = gml_node_comment_block_post(l_tk.d, self.out_node, l_tk.s, l_tk.pl);
					break;
				default: l_proc = false;
			}
		}
		return false;
	}
	static build_line = function() {
		if (self.offset >= self.length) return self.error_at("Expected a statement", self.source.get_eof());
		var l_tk = self.tokens[self.offset++];
		var l_tk2, l_proc, l_sep, l_x, l_x1, l_x2, l_nodes, l_i, l_s, l_d;
		var l_unknown = false;
		switch (l_tk.__enumIndex__/* gml_token */) {
			case 9/* keyword */:
				var l__g = l_tk.d;
				switch (l_tk.kw) {
					case 1:
						l_d = l__g;
						self.out_node = gml_node_block(l_d, []);
						while (self.offset < self.length) {
							l_tk2 = self.tokens[self.offset++];
							if (l_tk2.__enumIndex__/* gml_token */ == 10/* ident */) {
								l_d = l_tk2.d;
								l_s = l_tk2.id;
								l_i = array_length(self.macro_names);
								self.macro_names[@l_i] = l_s;
								self.macro_nodes[@l_i] = gml_node_global(l_d, l_s);
								if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 4/* comma */) {
									self.offset += 1;
									continue;
								}
							} else return self.error("Expected a global variable name.", l_tk2);
							break;
						}
						break;
					case 2:
						var l_d = l__g;
						l_nodes = [];
						l_proc = true;
						while (l_proc && self.offset < self.length) {
							l_tk2 = self.tokens[self.offset++];
							if (l_tk2.__enumIndex__/* gml_token */ == 10/* ident */) {
								if (self.offset >= self.length) return self.error_at("Expected a variable value", self.source.get_eof());
								l_tk = self.tokens[self.offset];
								if (l_tk.__enumIndex__/* gml_token */ == 19/* set_op */) {
									if (l_tk.op == -1) {
										self.offset += 1;
										if (self.build_expr(0)) return true;
									} else self.out_node = undefined;
								} else self.out_node = undefined;
								gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_var_decl(l_tk2.d, l_tk2.id, self.out_node));
								if (self.offset < self.length) switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
									case 4/* comma */: self.offset += 1; break;
									case 3/* semico */:
										self.offset += 1;
										l_proc = false;
										break;
									default: l_proc = false;
								}
							} else return self.expect("a variable name", l_tk2);
						}
						if (array_length(l_nodes) != 1) self.out_node = gml_node_block(l_d, l_nodes); else self.out_node = l_nodes[0];
						break;
					case 3:
						var l_e;
						var l__g1 = self.tokens[self.offset];
						if (l__g1.__enumIndex__/* gml_token */ == 10/* ident */) {
							var l_s = l__g1.id;
							var l_d1 = l__g1.d;
							self.offset += 1;
							l_e = new gml_enum(l_s, l_d1);
						} else return self.error("Expected an enum name", self.tokens[self.offset]);
						if (self.offset >= self.length) {
							return self.error_at("Expected enum block", self.source.get_eof());
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 24/* cub_open */) {
							self.offset += 1;
						} else return self.error("Expected enum block", self.tokens[self.offset]);
						l_proc = true;
						l_sep = true;
						while (self.offset < self.length && l_proc) {
							var l__g1 = self.tokens[self.offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */:
									self.offset += 1;
									l_proc = false;
									break;
								case 4/* comma */:
									if (l_sep) {
										return self.error("Unexpected comma", self.tokens[self.offset]);
									} else {
										self.offset += 1;
										l_sep = true;
									}
									break;
								case 10/* ident */:
									if (l_sep) {
										self.offset += 1;
										var l__g3 = self.tokens[self.offset];
										if (l__g3.__enumIndex__/* gml_token */ == 19/* set_op */) {
											if (l__g3.op == -1) {
												self.offset += 1;
												if (self.build_expr(0)) return true;
											} else self.out_node = undefined;
										} else self.out_node = undefined;
										var l_ec = new gml_enum_ctr(l__g1.id, l__g1.d, self.out_node);
										gml_std_gml_internal_ArrayImpl_push(l_e.ctr_list, l_ec);
										l_e.ctr_map.set(l_ec.name, l_ec);
										l_sep = false;
									} else return self.expect("a comma or a closing bracket", self.tokens[self.offset]);
									break;
								default: return self.expect("a comma, enum entry, or closing bracket", self.tokens[self.offset]);
							}
						}
						if (l_proc) return self.error("Unclosed enum-block", l_tk);
						gml_std_gml_internal_ArrayImpl_push(self.enums, l_e);
						self.out_node = gml_node_block(l__g, []);
						break;
					case 4:
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						if (self.offset >= self.length) return self.error_at("Expected a then-expression", self.source.get_eof());
						var l__g1 = self.tokens[self.offset];
						if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) {
							if (l__g1.kw == 5) self.offset += 1;
						}
						if (self.build_line()) return true;
						l_x2 = self.out_node;
						l_i = self.offset;
						while (self.offset < self.length) {
							switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
								case 29/* comment_block */:
									self.offset += 1;
									continue;
								case 28/* comment_line */:
									self.offset += 1;
									continue;
								case 27/* comment_post */:
									self.offset += 1;
									continue;
							}
							break;
						}
						if (self.offset < self.length) {
							var l__g1 = self.tokens[self.offset];
							if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) {
								if (l__g1.kw == 6) {
									self.offset += 1;
									if (self.build_line()) return true;
									l_x = self.out_node;
								} else {
									self.offset = l_i;
									l_x = undefined;
								}
							} else {
								self.offset = l_i;
								l_x = undefined;
							}
						} else {
							self.offset = l_i;
							l_x = undefined;
						}
						self.out_node = gml_node_if_then(l__g, l_x1, l_x2, l_x);
						break;
					case 7:
						var l_d = l__g;
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						var l_cc = [];
						var l_c = undefined;
						if (self.offset >= self.length) {
							return self.error_at("Expected switch-block body", self.source.get_eof());
						} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 24/* cub_open */) {
							self.offset += 1;
						} else return self.error("Expected switch-block body", self.tokens[self.offset]);
						if (self.offset >= self.length) return self.error_at("Expected switch-block contents", self.source.get_eof());
						var l__g1 = self.tokens[self.offset];
						switch (l__g1.__enumIndex__/* gml_token */) {
							case 9/* keyword */:
								switch (l__g1.kw) {
									case 8: case 9: break;
									default: return self.expect("`case` or `default`", self.tokens[self.offset]);
								}
								break;
							case 29/* comment_block */: break;
							case 28/* comment_line */: break;
							case 27/* comment_post */: break;
							default: return self.expect("`case` or `default`", self.tokens[self.offset]);
						}
						l_proc = true;
						l_x2 = undefined;
						l_nodes = undefined;
						var l_pre = [];
						while (self.offset < self.length && l_proc) {
							var l__g1 = self.tokens[self.offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */:
									self.offset += 1;
									l_proc = false;
									break;
								case 28/* comment_line */:
									self.offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_line(l__g1.d, l__g1.s));
									break;
								case 27/* comment_post */:
									self.offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_line(l__g1.d, l__g1.s));
									break;
								case 29/* comment_block */:
									self.offset += 1;
									gml_std_gml_internal_ArrayImpl_push(l_pre, gml_node_comment_block(l__g1.d, l__g1.s));
									break;
								case 9/* keyword */:
									switch (l__g1.kw) {
										case 8:
											self.offset += 1;
											if (self.build_expr(0)) return true;
											if (self.offset >= self.length) {
												return self.error_at("Expected a colon", self.source.get_eof());
											} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
												self.offset += 1;
											} else return self.error("Expected a colon", self.tokens[self.offset]);
											l_nodes = [self.out_node];
											while (self.offset < self.length) {
												var l__g5 = self.tokens[self.offset];
												if (l__g5.__enumIndex__/* gml_token */ == 9/* keyword */) {
													if (l__g5.kw == 8) {
														self.offset += 1;
														if (self.build_expr(0)) return true;
														if (self.offset >= self.length) {
															return self.error_at("Expected a colon", self.source.get_eof());
														} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
															self.offset += 1;
														} else return self.error("Expected a colon", self.tokens[self.offset]);
														gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
														continue;
													}
												}
												break;
											}
											l_c = { values: l_nodes, expr: undefined, pre: l_pre }
											gml_std_gml_internal_ArrayImpl_push(l_cc, l_c);
											l_nodes = [];
											l_pre = [];
											l_c.expr = gml_node_block(l__g1.d, l_nodes);
											break;
										case 9:
											self.offset += 1;
											if (self.offset >= self.length) {
												return self.error_at("Expected a colon", self.source.get_eof());
											} else if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 6/* colon */) {
												self.offset += 1;
											} else return self.error("Expected a colon", self.tokens[self.offset]);
											l_nodes = [];
											l_x2 = gml_node_block(l__g1.d, l_nodes);
											break;
										default:
											if (self.build_line()) return true;
											gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
									}
									break;
								default:
									if (self.build_line()) return true;
									gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
							}
						}
						if (l_proc) return self.error_at("Unclosed switch-block", l_d);
						self.out_node = gml_node_switch(l_d, l_x1, l_cc, l_x2);
						break;
					case 14:
						if (self.offset >= self.length) return self.error_at("Expected for-loop header", self.source.get_eof());
						if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 20/* par_open */) {
							self.offset += 1;
							l_proc = true;
						} else l_proc = false;
						if (self.build_line()) return true;
						l_x = self.out_node;
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						if (self.offset >= self.length) return self.error_at("Expected for-loop post-action", self.source.get_eof());
						if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 3/* semico */) self.offset += 1;
						if (self.build_line()) return true;
						l_x2 = self.out_node;
						if (l_proc) {
							if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 21/* par_close */) self.offset += 1; else return self.expect("a closing parenthesis", self.tokens[self.offset]);
						}
						if (self.build_line()) return true;
						self.out_node = gml_node_for(l__g, l_x, l_x1, l_x2, self.out_node);
						break;
					case 11:
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						if (self.build_line()) return true;
						self.out_node = gml_node_while(l__g, l_x1, self.out_node);
						break;
					case 10:
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						if (self.build_line()) return true;
						self.out_node = gml_node_repeat(l__g, l_x1, self.out_node);
						break;
					case 13:
						var l_d = l__g;
						if (self.build_line()) return true;
						l_x1 = self.out_node;
						if (self.offset >= self.length) return self.error_at("Expected a `while` or `until`", self.source.get_eof());
						var l__g1 = self.tokens[self.offset];
						if (l__g1.__enumIndex__/* gml_token */ == 9/* keyword */) switch (l__g1.kw) {
							case 11:
								self.offset += 1;
								if (self.build_expr(0)) return true;
								self.out_node = gml_node_do_while(l_d, l_x1, self.out_node);
								break;
							case 12:
								self.offset += 1;
								if (self.build_expr(0)) return true;
								self.out_node = gml_node_do_until(l_d, l_x1, self.out_node);
								break;
							default: return self.expect("a `while` or `until`", self.tokens[self.offset]);
						} else return self.expect("a `while` or `until`", self.tokens[self.offset]);
						break;
					case 15:
						if (self.build_expr(0)) return true;
						l_x1 = self.out_node;
						if (self.build_line()) return true;
						self.out_node = gml_node_with(l__g, l_x1, self.out_node);
						break;
					case 17: self.out_node = gml_node_break(l__g); break;
					case 16: self.out_node = gml_node_continue(l__g); break;
					case 19: self.out_node = gml_node_exit(l__g); break;
					case 18:
						var l_d = l__g;
						if (self.offset < self.length) {
							var l__g1 = self.tokens[self.offset];
							switch (l__g1.__enumIndex__/* gml_token */) {
								case 25/* cub_close */: self.out_node = gml_node_exit(l__g1.d); break;
								case 3/* semico */: self.out_node = gml_node_exit(l__g1.d); break;
								default:
									if (self.build_expr(0)) return true;
									self.out_node = gml_node_return(l_d, self.out_node);
							}
						} else self.out_node = gml_node_exit(l_d);
						break;
					case 20:
						if (self.build_expr(0)) return true;
						self.out_node = gml_node_wait(l__g, self.out_node);
						break;
					case 23: self.out_node = gml_node_debugger(l__g); break;
					default: l_unknown = true;
				}
				break;
			case 1/* macro */:
				var l__g = self.tokens[self.offset++];
				if (l__g.__enumIndex__/* gml_token */ == 10/* ident */) {
					if (self.build_expr(0)) return true;
					var l_i1 = array_length(self.macro_names);
					self.macro_names[@l_i1] = l__g.id;
					self.macro_nodes[@l_i1] = self.out_node;
					self.out_node = gml_node_block(l_tk.d, []);
				} else self.error("Expected a macro name", self.tokens[self.offset]);
				break;
			case 24/* cub_open */:
				var l_start = l_tk.d;
				l_proc = true;
				l_nodes = [];
				if (self.offset < self.length) {
					var l__g = self.tokens[self.offset];
					if (l__g.__enumIndex__/* gml_token */ == 27/* comment_post */) {
						gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.d, l__g.s));
						self.offset += 1;
					}
				}
				while (l_proc && self.offset < self.length) {
					var l__g = self.tokens[self.offset];
					switch (l__g.__enumIndex__/* gml_token */) {
						case 25/* cub_close */:
							self.offset += 1;
							l_proc = false;
							break;
						case 28/* comment_line */:
							self.offset += 1;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.d, l__g.s));
							break;
						case 29/* comment_block */:
							if (l__g.pl) {
								self.offset += 1;
								gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_block(l__g.d, l__g.s));
							} else {
								if (self.build_line()) return true;
								gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_block_pre(l__g.d, l__g.s, self.out_node, false));
							}
							break;
						default:
							if (self.build_line()) return true;
							gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
					}
				}
				if (l_proc) return self.error_at("Expected a closing bracket.", l_start);
				self.out_node = gml_node_block(l_start, l_nodes);
				break;
			case 28/* comment_line */:
				if (self.offset < self.length) {
					if (self.build_line()) return true;
					self.out_node = gml_node_comment_line_sep(l_tk.d, l_tk.s, self.out_node);
				} else self.out_node = gml_node_comment_line(l_tk.d, l_tk.s);
				break;
			case 27/* comment_post */:
				if (self.build_line()) return true;
				self.out_node = gml_node_comment_line_pre(l_tk.d, l_tk.s, self.out_node);
				break;
			case 29/* comment_block */:
				if (self.offset < self.length) {
					if (self.build_line()) return true;
					self.out_node = gml_node_comment_block_pre(l_tk.d, l_tk.s, self.out_node, l_tk.pl);
				} else self.out_node = gml_node_comment_block(l_tk.d, l_tk.s);
				break;
			default: l_unknown = true;
		}
		if (l_unknown) self.offset -= 1;
		if (l_unknown) {
			if (self.build_expr(5)) return true;
			if (self.offset < self.length) {
				var l__g = self.tokens[self.offset];
				if (l__g.__enumIndex__/* gml_token */ == 19/* set_op */) {
					l_x = self.out_node;
					self.offset += 1;
					if (self.build_expr(0)) return true;
					self.out_node = gml_node_set_op(l__g.d, l__g.op, l_x, self.out_node);
				} else if (!gml_node_is_statement(self.out_node)) {
					return self.expect_node("a statement", self.out_node);
				}
			} else if (!gml_node_is_statement(self.out_node)) {
				return self.expect_node("a statement", self.out_node);
			}
		}
		while (self.offset < self.length) {
			if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 3/* semico */) {
				self.offset += 1;
				continue;
			}
			break;
		}
		if (self.offset < self.length) {
			var l__g = self.tokens[self.offset];
			if (l__g.__enumIndex__/* gml_token */ == 27/* comment_post */) {
				self.offset += 1;
				self.out_node = gml_node_comment_line_post(l__g.d, self.out_node, l__g.s);
			}
		}
		return false;
	}
	static build_outer = function(l_name, l_namedArgs, l_namedArgc) {
		if (l_namedArgc == undefined) l_namedArgc = 0;
		if (false) throw argument[2];
		var l_scr = new gml_script(self.source, l_name, (self.offset >= self.length ? self.source.get_eof() : self.tokens[self.offset].d));
		if (l_namedArgs == undefined) l_namedArgs = new haxe_ds_string_map();
		l_scr.named_args = l_namedArgs;
		l_scr.arguments = l_namedArgc;
		gml_std_gml_internal_ArrayImpl_push(self.scripts, l_scr);
		var l_nodes = [];
		while (self.offset < self.length) {
			var l__g = self.tokens[self.offset];
			switch (l__g.__enumIndex__/* gml_token */) {
				case 0/* header */: var l__name = l__g.name; break;
				case 28/* comment_line */:
					gml_std_gml_internal_ArrayImpl_push(l_nodes, gml_node_comment_line(l__g.d, l__g.s));
					self.offset += 1;
					continue;
				default:
					if (self.build_line()) return true;
					gml_std_gml_internal_ArrayImpl_push(l_nodes, self.out_node);
					continue;
			}
			break;
		}
		if (array_length(l_nodes) > 1) {
			l_scr.node = gml_node_block(gml_std_haxe_enum_tools_getParameter(l_nodes[0], 0), l_nodes);
		} else if (array_length(l_nodes) == 1) {
			l_scr.node = l_nodes[0];
		} else l_scr.node = gml_node_block(self.source.get_eof(), l_nodes);
		return false;
	}
	static build_loop = function(l_first) {
		if (self.build_outer(l_first)) return true;
		while (self.offset < self.length) {
			var l_tk = self.tokens[self.offset];
			if (l_tk.__enumIndex__/* gml_token */ == 0/* header */) {
				self.offset += 1;
				var l_nextName = l_tk.name;
				var l_nextArgs = undefined;
				var l_nextArgc = 0;
				if (!(l_tk.lb || self.offset >= self.length)) {
					if (self.tokens[self.offset].__enumIndex__/* gml_token */ == 20/* par_open */) {
						self.offset += 1;
						l_nextArgs = new haxe_ds_string_map();
						var l_proc = true;
						if (self.offset >= self.length) return self.error_at("Expected script arguments", self.source.get_eof());
						var l__g3 = self.tokens[self.offset];
						var l_tmp;
						if (l__g3.__enumIndex__/* gml_token */ == 21/* par_close */) l_tmp = true; else l_tmp = false;
						if (l_tmp) {
							self.offset += 1;
						} else while (l_proc && self.offset < self.length) {
							var l__g5 = self.tokens[self.offset];
							if (l__g5.__enumIndex__/* gml_token */ == 10/* ident */) {
								var l_s = l__g5.id;
								var l_nextArg = l_s;
								if (l_nextArgs.exists(l_nextArg)) return self.error("An argument named " + l_nextArg + " is already defined at position " + gml_std_Std_stringify(l_nextArgs.get(l_nextArg)), self.tokens[self.offset]);
								l_nextArgs.set(l_s, l_nextArgc);
								l_nextArgc++;
								self.offset += 1;
								switch (self.tokens[self.offset].__enumIndex__/* gml_token */) {
									case 21/* par_close */:
										self.offset += 1;
										l_proc = false;
										break;
									case 4/* comma */: self.offset += 1; break;
									default: return self.expect("a comma or closing parenthesis in script arguments", self.tokens[self.offset]);
								}
							} else return self.expect("an argument", self.tokens[self.offset]);
						}
					}
				}
				if (self.build_outer(l_nextName, l_nextArgs, l_nextArgc)) return true;
			} else return self.expect("A script declaration", l_tk);
		}
		return false;
	}
	self.error_text = undefined;
	self.macro_nodes = [];
	self.macro_names = [];
	self.enums = [];
	self.scripts = [];
	self.offset = 0;
	self.source = l_src;
	if (l_src.tokens != undefined) self.tokens = l_src.tokens; else self.tokens = gml_parser_run(l_src);
	if (self.tokens != undefined) {
		self.length = gml_parser_tokens_found;
		self.build_loop(l_src.main);
	} else {
		self.error_text = gml_parser_error_text;
		self.error_pos = gml_parser_error_pos;
	}
	static __class__ = mt_gml_builder;
}
mt_gml_builder.i_constructor = gml_builder;

#endregion

#region gml.compile

function gml_compile_error(l_text, l_pos) {
	gml_compile_error_text = l_pos.to_string() + " " + l_text;
	gml_compile_error_pos = l_pos;
	return true;
}

function gml_compile_node(l_q, l_r, l_out) {
	var l_x, l_x2, l_x3, l_w, l_i, l_k, l_l, l_n, l_p0, l_p1, l_p2, l_p3, l_pc, l_pb, l_s, l_v, l_d, l_o;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: if (l_out) ds_list_add(l_r, gml_action_undefined(l__g.d)); break;
		case 1/* number */:
			var l_f = l__g.value;
			var l_d1 = l__g.d;
			if (l_out) ds_list_add(l_r, gml_action_number(l_d1, l_f));
			break;
		case 2/* cstring */: if (l_out) ds_list_add(l_r, gml_action_cstring(l__g.d, l__g.value)); break;
		case 8/* self */: ds_list_add(l_r, gml_action_self(l__g.d)); break;
		case 9/* other */: ds_list_add(l_r, gml_action_other(l__g.d)); break;
		case 10/* global_ref */: ds_list_add(l_r, gml_action_number(l__g.d, -5)); break;
		case 6/* ensure_array */:
			l_d = l__g.d;
			l_x = l__g.expr;
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 33/* local */: ds_list_add(l_r, gml_action_ensure_array_local(l_d, gml_compile_curr_script.local_map.get(l__g1.id))); break;
				case 36/* global */: ds_list_add(l_r, gml_action_ensure_array_global(l_d, l__g1.id)); break;
				case 39/* field */:
					l_x2 = l__g1.x;
					if (gml_node_is_simple(l_x2)) {
						if (gml_compile_node(l_x2, l_r, true)) return true;
						ds_list_add(l_r, gml_action_ensure_array_field(l_d, l__g1.fd));
					} else return gml_compile_error("Cannot ensure array type - expression may have side effects.", l__g1.d);
					break;
				default: return gml_compile_error("Cannot ensure array type for value. Use [@index] if it does not need allocation or create it explicitly.", l_d);
			}
			break;
		case 32/* in */:
			if (gml_compile_node(l__g.fd, l_r, true)) return true;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_in(l__g.d, l__g.i_not));
			break;
		case 11/* script */: ds_list_add(l_r, gml_action_const(l__g.d, l__g.ref.index)); break;
		case 13/* const */: ds_list_add(l_r, gml_action_const(l__g.d, gml_const_val.get(l__g.id))); break;
		case 12/* native_script */: ds_list_add(l_r, gml_action_const(l__g.d, l__g.id)); break;
		case 4/* array_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_array_decl(l__g.d, l_n));
			break;
		case 5/* object_decl */:
			var l_keys = l__g.keys;
			l_w = l__g.values;
			l_n = array_length(l_w);
			l_s = "";
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
				l_s += l_keys[l_i] + "\n";
			}
			ds_list_add(l_r, gml_action_object_decl(l__g.d, l_keys, l_s));
			break;
		case 89/* var_decl */:
			l_x = l__g.value;
			if (l_x != undefined) {
				if (gml_compile_node(l_x, l_r, true)) return true;
				ds_list_add(l_r, gml_action_local_set(l__g.d, gml_compile_curr_script.local_map.get(l__g.name)));
			}
			break;
		case 33/* local */: ds_list_add(l_r, gml_action_local(l__g.d, gml_compile_curr_script.local_map.get(l__g.id))); break;
		case 34/* local_set */:
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_local_set(l__g.d, gml_compile_curr_script.local_map.get(l__g.id)));
			break;
		case 35/* local_aop */:
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_local_aop(l__g.d, l__g.op, gml_compile_curr_script.local_map.get(l__g.id)));
			break;
		case 36/* global */: ds_list_add(l_r, gml_action_global(l__g.d, l__g.id)); break;
		case 37/* global_set */:
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_global_set(l__g.d, l__g.id));
			break;
		case 38/* global_aop */:
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_global_aop(l__g.d, l__g.op, l__g.id));
			break;
		case 39/* field */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field(l__g.d, l__g.fd));
			break;
		case 40/* field_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field_set(l__g.d, l__g.fd));
			break;
		case 41/* field_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_field_aop(l__g.d, l__g.op, l__g.fd));
			break;
		case 51/* alarm */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm(l__g.d));
			break;
		case 52/* alarm_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm_set(l__g.d));
			break;
		case 53/* alarm_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_alarm_aop(l__g.d, l__g.op));
			break;
		case 64/* raw_id */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index(l__g.d));
			break;
		case 54/* index */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index(l__g.d));
			break;
		case 65/* raw_id_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_set(l__g.d));
			break;
		case 55/* index_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_set(l__g.d));
			break;
		case 66/* raw_id_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_aop(l__g.d, l__g.o));
			break;
		case 56/* index_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index_aop(l__g.d, l__g.o));
			break;
		case 59/* index2d */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d(l__g.d));
			break;
		case 69/* raw_id2d */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d(l__g.d));
			break;
		case 70/* raw_id2d_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_set(l__g.d));
			break;
		case 60/* index2d_set */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_set(l__g.d));
			break;
		case 71/* raw_id2d_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_aop(l__g.d, l__g.o));
			break;
		case 61/* index2d_aop */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			if (gml_compile_node(l__g.i1, l_r, true)) return true;
			if (gml_compile_node(l__g.i2, l_r, true)) return true;
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_index2d_aop(l__g.d, l__g.o));
			break;
		case 42/* env */: ds_list_add(l_r, gml_action_env(l__g.d, gml_var_refs.get(l__g.id))); break;
		case 43/* env_set */:
			var l_s1 = l__g.id;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env_set(l__g.d, gml_var_refs.get(l_s1), gml_var_types.get(l_s1)));
			break;
		case 44/* env_aop */:
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env_aop(l__g.d, l__g.op, gml_var_refs.get(l__g.id)));
			break;
		case 48/* env1d */:
			if (gml_compile_node(l__g.k, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d(l__g.d, gml_var_refs.get(l__g.id)));
			break;
		case 49/* env1d_set */:
			var l_s1 = l__g.id;
			if (gml_compile_node(l__g.k, l_r, true)) return true;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d_set(l__g.d, gml_var_refs.get(l_s1), gml_var_types.get(l_s1)));
			break;
		case 50/* env1d_aop */:
			if (gml_compile_node(l__g.k, l_r, true)) return true;
			if (gml_compile_node(l__g.val, l_r, true)) return true;
			ds_list_add(l_r, gml_action_env1d_aop(l__g.d, l__g.op, gml_var_refs.get(l__g.id)));
			break;
		case 74/* ds_list */:
			l_s = "ds_list_find_value";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 2, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 75/* ds_list_set */:
			l_s = "ds_list_set";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 3, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 76/* ds_list_aop */:
			if (gml_func_script.exists("ds_list_find_value") && gml_func_script.exists("ds_list_set")) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.d, l__g.o, 3, gml_func_script.get("ds_list_find_value"), gml_func_script.get("ds_list_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 79/* ds_map */:
			l_s = "ds_map_find_value";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 2, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 80/* ds_map_set */:
			l_s = "ds_map_set";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 3, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 81/* ds_map_aop */:
			if (gml_func_script.exists("ds_map_find_value") && gml_func_script.exists("ds_map_set")) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.id, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.d, l__g.o, 3, gml_func_script.get("ds_map_find_value"), gml_func_script.get("ds_map_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 84/* ds_grid */:
			l_s = "ds_grid_get";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.i1, l_r, true)) return true;
				if (gml_compile_node(l__g.i2, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 3, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 85/* ds_grid_set */:
			l_s = "ds_grid_set";
			if (gml_func_script.exists(l_s)) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.i1, l_r, true)) return true;
				if (gml_compile_node(l__g.i2, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_call_func(l__g.d, gml_func_script.get(l_s), 4, gml_func_args.get(l_s), gml_func_rest.get(l_s), 0, l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 86/* ds_grid_aop */:
			if (gml_func_script.exists("ds_grid_get") && gml_func_script.exists("ds_grid_set")) {
				if (gml_compile_node(l__g.lx, l_r, true)) return true;
				if (gml_compile_node(l__g.i1, l_r, true)) return true;
				if (gml_compile_node(l__g.i2, l_r, true)) return true;
				if (gml_compile_node(l__g.v, l_r, true)) return true;
				ds_list_add(l_r, gml_action_ds_aop(l__g.d, l__g.o, 4, gml_func_script.get("ds_grid_get"), gml_func_script.get("ds_grid_set"), l_out));
			} else return gml_compile_error("Accessor not supported", l__g.d);
			break;
		case 14/* arg_const */: ds_list_add(l_r, gml_action_arg_const(l__g.d, l__g.id)); break;
		case 15/* arg_index */:
			if (gml_compile_node(l__g.id, l_r, true)) return true;
			ds_list_add(l_r, gml_action_arg_index(l__g.d));
			break;
		case 16/* arg_count */: ds_list_add(l_r, gml_action_arg_count(l__g.d)); break;
		case 29/* set_op */:
			l_d = l__g.d;
			l_o = l__g.o;
			l_x = l__g.a;
			l_x2 = l__g.b;
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 14/* arg_const */:
					l_i = l__g1.id;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					if (l_o != -1) ds_list_add(l_r, gml_action_arg_const_aop(l_d, l_o, l_i)); else ds_list_add(l_r, gml_action_arg_const_set(l_d, l_i));
					break;
				case 15/* arg_index */:
					if (gml_compile_node(l__g1.id, l_r, true)) return true;
					if (gml_compile_node(l_x2, l_r, true)) return true;
					if (l_o != -1) ds_list_add(l_r, gml_action_arg_index_aop(l_d, l_o)); else ds_list_add(l_r, gml_action_arg_index_set(l_d));
					break;
				default: return gml_compile_error("Cannot set " + gml_std_Type_enumConstructor(l_x), l_d);
			}
			break;
		case 28/* bin_op */:
			l_d = l__g.d;
			l_o = l__g.o;
			l_x = l__g.a;
			l_x2 = l__g.b;
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
		case 27/* un_op */:
			if (gml_compile_node(l__g.x, l_r, true)) return true;
			ds_list_add(l_r, gml_action_un_op(l__g.d, l__g.o));
			break;
		case 25/* prefix */:
			l_d = l__g.d;
			l_x = l__g.x;
			l_i = (l__g.inc ? 1 : -1);
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 33/* local */:
					l_k = gml_compile_curr_script.local_map.get(l__g1.id);
					ds_list_add(l_r, gml_action_local(l_d, l_k));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_local_set(l_d, l_k));
					break;
				case 36/* global */:
					l_s = l__g1.id;
					ds_list_add(l_r, gml_action_global(l_d, l_s));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_global_set(l_d, l_s));
					break;
				case 39/* field */:
					l_s = l__g1.fd;
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_field(l_d, l_s));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 2));
					ds_list_add(l_r, gml_action_field_set(l_d, l_s));
					break;
				case 54/* index */:
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					if (gml_compile_node(l__g1.id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				case 64/* raw_id */:
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					if (gml_compile_node(l__g1.id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				default: return gml_compile_error("Can't apply prefix to " + gml_std_Type_enumConstructor(l_x), l_d);
			}
			break;
		case 26/* postfix */:
			l_d = l__g.d;
			l_x = l__g.x;
			l_i = (l__g.inc ? 1 : -1);
			var l__g1 = l_x;
			switch (l__g1.__enumIndex__/* gml_node */) {
				case 33/* local */:
					l_k = gml_compile_curr_script.local_map.get(l__g1.id);
					ds_list_add(l_r, gml_action_local(l_d, l_k));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_local_set(l_d, l_k));
					break;
				case 36/* global */:
					l_s = l__g1.id;
					ds_list_add(l_r, gml_action_global(l_d, l_s));
					if (l_out) ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_global_set(l_d, l_s));
					break;
				case 39/* field */:
					l_s = l__g1.fd;
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup(l_d));
					ds_list_add(l_r, gml_action_field(l_d, l_s));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 2));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_field_set(l_d, l_s));
					break;
				case 54/* index */:
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					if (gml_compile_node(l__g1.id, l_r, true)) return true;
					ds_list_add(l_r, gml_action_dup2x(l_d));
					ds_list_add(l_r, gml_action_index(l_d));
					if (l_out) ds_list_add(l_r, gml_action_dup_in(l_d, 3));
					ds_list_add(l_r, gml_action_add_int(l_d, l_i));
					ds_list_add(l_r, gml_action_index_set(l_d));
					break;
				case 64/* raw_id */:
					if (gml_compile_node(l__g1.x, l_r, true)) return true;
					if (gml_compile_node(l__g1.id, l_r, true)) return true;
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
			l_d = l__g.d;
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_call_script(l_d, gml_compile_curr_program.script_map.get(l__g.name), l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 20/* call_script_id */:
			l_d = l__g.d;
			l_w = l__g.args;
			l_n = array_length(l_w);
			if (gml_compile_node(l__g.index, l_r, true)) return true;
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			ds_list_add(l_r, gml_action_call_script_id(l_d, l_n));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 21/* call_script_with_array */:
			l_d = l__g.d;
			if (gml_compile_node(l__g.index, l_r, true)) return true;
			if (gml_compile_node(l__g.array, l_r, true)) return true;
			ds_list_add(l_r, gml_action_call_script_with_array(l_d));
			if (l_out) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 19/* call_script_at */:
			l_d = l__g.d;
			return gml_compile_error("dot-calls are currently not supported.", l_d);
		case 23/* call_func */:
			var l__d = l__g.d;
			l_s = l__g.s;
			l_d = l__d;
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_compile_node(l_w[l_i], l_r, true)) return true;
			}
			if (gml_func_script.get(l_s) == -1) return gml_compile_error("Function `" + l_s + "` is pointing at an invalid script.", l__d);
			l_i = gml_inst_data.get(l_s);
			ds_list_add(l_r, gml_action_call_func(l_d, gml_func_script.get(l_s), l_n, gml_func_args.get(l_s), gml_func_rest.get(l_s), l_i, l_out && l_i != -5));
			if (l_out && l_i == -5) ds_list_add(l_r, gml_action_result(l_d));
			break;
		case 90/* block */:
			l_w = l__g.nodes;
			l_n = array_length(l_w);
			if (l_n > 0) {
				l_n--;
				for (l_i = 0; l_i < l_n; l_i++) {
					if (gml_compile_node(l_w[l_i], l_r, false)) return true;
				}
				if (gml_compile_node(l_w[l_i], l_r, l_out)) return true;
			}
			break;
		case 91/* if_then */:
			l_d = l__g.d;
			l_x = l__g.i_not;
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			l_i = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			if (gml_compile_node(l__g.i_then, l_r, false)) return true;
			if (l_x != undefined) {
				l_n = ds_list_size(l_r);
				ds_list_add(l_r, gml_action_jump(l_d, 0));
				l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
				if (gml_compile_node(l_x, l_r, false)) return true;
				l_r[|l_n] = gml_action_jump(l_d, ds_list_size(l_r));
			} else l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
			break;
		case 92/* ternary */:
			l_d = l__g.d;
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			l_i = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			if (gml_compile_node(l__g.i_then, l_r, l_out)) return true;
			l_n = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump(l_d, 0));
			l_r[|l_i] = gml_action_jump_unless(l_d, ds_list_size(l_r));
			if (gml_compile_node(l__g.i_not, l_r, l_out)) return true;
			l_r[|l_n] = gml_action_jump(l_d, ds_list_size(l_r));
			break;
		case 99/* repeat */:
			l_d = l__g.d;
			if (gml_compile_node(l__g.times, l_r, true)) return true;
			l_n = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_repeat_pre(l_d, 0));
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_repeat_jump(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_discard(l_d));
			for (l_k = l_p0; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p1); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p2); break;
				}
			}
			l_r[|l_n] = gml_action_repeat_pre(l_d, ds_list_size(l_r));
			break;
		case 96/* while */:
			l_d = l__g.d;
			l_p0 = ds_list_size(l_r);
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			l_r[|l_p1] = gml_action_jump_unless(l_d, l_p2);
			for (l_k = l_p1; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p0); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p2); break;
				}
			}
			break;
		case 98/* do_while */:
			l_d = l__g.d;
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			var l__g1 = l_q;
			var l_tmp;
			if (l__g1.__enumIndex__/* gml_node */ == 97/* do_until */) l_tmp = true; else l_tmp = false;
			if (l_tmp) ds_list_add(l_r, gml_action_jump_unless(l_d, l_p0)); else ds_list_add(l_r, gml_action_jump_if(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p1); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p2); break;
				}
			}
			break;
		case 97/* do_until */:
			l_d = l__g.d;
			l_p0 = ds_list_size(l_r);
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p1 = ds_list_size(l_r);
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			var l__g1 = l_q;
			var l_tmp;
			if (l__g1.__enumIndex__/* gml_node */ == 97/* do_until */) l_tmp = true; else l_tmp = false;
			if (l_tmp) ds_list_add(l_r, gml_action_jump_unless(l_d, l_p0)); else ds_list_add(l_r, gml_action_jump_if(l_d, l_p0));
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p1); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p2); break;
				}
			}
			break;
		case 100/* for */:
			l_d = l__g.d;
			if (gml_compile_node(l__g.pre, l_r, false)) return true;
			l_p0 = ds_list_size(l_r);
			if (gml_compile_node(l__g.cond, l_r, true)) return true;
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_jump_unless(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.loop, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			l_p2 = ds_list_size(l_r);
			if (gml_compile_node(l__g.post, l_r, false)) return true;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p3 = ds_list_size(l_r);
			l_r[|l_p1] = gml_action_jump_unless(l_d, l_p3);
			for (l_k = l_p1; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p2); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p3); break;
				}
			}
			break;
		case 93/* switch */:
			var l__cc = l__g.list;
			l_d = l__g.d;
			var l_jt = ds_map_create();
			if (gml_compile_node(l__g.expr, l_r, true)) return true;
			l_p0 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_switch(l_d, l_jt, 0));
			l_pb = gml_compile_curr_break;
			gml_compile_curr_break = l_p0;
			l_n = array_length(l__cc);
			for (l_i = 0; l_i < l_n; l_i++) {
				var l__cv = l__cc[l_i].values;
				l_l = array_length(l__cv);
				for (l_k = 0; l_k < l_l; l_k++) {
					var l__g1 = l__cv[l_k];
					switch (l__g1.__enumIndex__/* gml_node */) {
						case 0/* undefined */: l_jt[?undefined] = ds_list_size(l_r); break;
						case 1/* number */: l_jt[?l__g1.value] = ds_list_size(l_r); break;
						case 2/* cstring */: l_jt[?l__g1.value] = ds_list_size(l_r); break;
						case 3/* enum_ctr */: l_jt[?l__g1.ctr.value] = ds_list_size(l_r); break;
						default: return gml_compile_error("Expression must be constant value", gml_std_haxe_enum_tools_getParameter(l__cv[l_k], 0));
					}
				}
				if (gml_compile_node(l__cc[l_i].expr, l_r, false)) return true;
			}
			l_p1 = ds_list_size(l_r);
			l_x = l__g.def;
			if (l_x != undefined && gml_compile_node(l_x, l_r, false)) return true;
			gml_compile_curr_break = l_pb;
			l_r[|l_p0] = gml_action_switch(l_d, l_jt, l_p1);
			l_p2 = ds_list_size(l_r);
			for (l_k = l_p0; l_k < l_p2; l_k++) {
				var l__g1 = l_r[|l_k];
				if (l__g1.__enumIndex__/* gml_action */ == 65/* break */) {
					var l_lp = l__g1.lp;
					var l_d1 = l__g1.d;
					if (l_lp == l_p0) l_r[|l_k] = gml_action_jump(l_d1, l_p2);
				}
			}
			break;
		case 101/* with */:
			l_d = l__g.d;
			if (gml_compile_node(l__g.ctx, l_r, true)) return true;
			ds_list_add(l_r, gml_action_with_pre(l_d));
			l_p0 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_with_next(l_d, 0));
			l_pc = gml_compile_curr_continue;
			l_pb = gml_compile_curr_break;
			gml_compile_curr_continue = l_p0;
			gml_compile_curr_break = l_p0;
			if (gml_compile_node(l__g.node, l_r, false)) return true;
			gml_compile_curr_continue = l_pc;
			gml_compile_curr_break = l_pb;
			ds_list_add(l_r, gml_action_jump(l_d, l_p0));
			l_p1 = ds_list_size(l_r);
			ds_list_add(l_r, gml_action_with_post(l_d));
			l_r[|l_p0] = gml_action_with_next(l_d, l_p1);
			for (l_k = l_p0; l_k < l_p1; l_k++) {
				var l__g1 = l_r[|l_k];
				switch (l__g1.__enumIndex__/* gml_action */) {
					case 66/* continue */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p0); break;
					case 65/* break */: if (l__g1.lp == l_p0) l_r[|l_k] = gml_action_jump(l__g1.d, l_p1); break;
				}
			}
			break;
		case 105/* break */:
			l_d = l__g.d;
			l_i = gml_compile_curr_break;
			if (l_i >= 0) ds_list_add(l_r, gml_action_break(l_d, l_i)); else return gml_compile_error("Cannot `break` here", l_d);
			break;
		case 106/* continue */:
			l_d = l__g.d;
			l_i = gml_compile_curr_continue;
			if (l_i >= 0) ds_list_add(l_r, gml_action_continue(l_d, l_i)); else return gml_compile_error("Cannot `continue` here", l_d);
			break;
		case 103/* return */:
			if (gml_compile_node(l__g.v, l_r, true)) return true;
			ds_list_add(l_r, gml_action_return(l__g.d));
			break;
		case 104/* exit */:
			l_d = l__g.d;
			ds_list_add(l_r, gml_action_number(l_d, 0));
			ds_list_add(l_r, gml_action_return(l_d));
			break;
		case 94/* wait */:
			if (gml_compile_node(l__g.time, l_r, true)) return true;
			ds_list_add(l_r, gml_action_wait(l__g.d));
			break;
		case 95/* fork */: ds_list_add(l_r, gml_action_fork(l__g.d, l_out)); break;
		default: return gml_compile_error("Cannot compile " + gml_std_Type_enumConstructor(l_q), gml_std_haxe_enum_tools_getParameter(l_q, 0));
	}
	return false;
}

function gml_compile_script(l_q) {
	var l_r = ds_list_create();
	l_q.actions = l_r;
	gml_compile_curr_script = l_q;
	gml_compile_curr_break = -1;
	gml_compile_curr_continue = -1;
	var l_e = gml_compile_node(l_q.node, l_r, false);
	gml_compile_curr_script = undefined;
	return l_e;
}

function gml_compile_program(l_p) {
	gml_compile_curr_program = l_p;
	var l_arr = l_p.scripts;
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

function gml_parser_error(l_text, l_pos, l_tkl) {
	ds_list_destroy(l_tkl);
	gml_parser_error_text = l_pos.to_string() + ": " + l_text;
	gml_parser_error_pos = l_pos;
	return undefined;
}

function gml_parser_buf_sub(l_buf, l_str, l_start, l_end) {
	var l_len = l_end - l_start;
	buffer_copy(l_buf, l_start, l_len, l_str, 0);
	buffer_poke(l_str, l_len, buffer_u8, 0);
	buffer_seek(l_str, buffer_seek_start, 0);
	return buffer_read(l_str, buffer_string);
}

function gml_parser_run(l_src, l_temStart) {
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
	var l_code = l_src.code;
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
						if (l__g.lb == false) l_out[|l_i] = gml_token_header(l__g.d, l__g.name, true);
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
					} else if (l_src.__eof == undefined) {
						l_src.__eof = new gml_pos(l_src, l_row, l_pos - l_rowStart);
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
						case "div": ds_list_add(l_out, gml_token_bin_op(l_d, 3)); break;
						case "mod": ds_list_add(l_out, gml_token_bin_op(l_d, 2)); break;
						case "and": ds_list_add(l_out, gml_token_bin_op(l_d, 80)); break;
						case "or": ds_list_add(l_out, gml_token_bin_op(l_d, 96)); break;
						case "xor": ds_list_add(l_out, gml_token_bin_op(l_d, 65)); break;
						case "not": ds_list_add(l_out, gml_token_un_op(l_d, 1)); break;
						case "in": ds_list_add(l_out, gml_token_in(l_d)); break;
						case "argument": ds_list_add(l_out, gml_token_keyword(l_d, 21)); break;
						case "argument_count": ds_list_add(l_out, gml_token_keyword(l_d, 22)); break;
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
	} else if (l_src.__eof == undefined) {
		l_src.__eof = new gml_pos(l_src, l_row, l_pos - l_rowStart);
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

function gml_program(l_sources) constructor {
	static sources = undefined;
	static scripts = undefined;
	static script_map = undefined;
	static enums = undefined;
	static enum_map = undefined;
	static macros = undefined;
	static wait_list = undefined;
	static wait_list_swap = undefined;
	static callback = undefined;
	static time_tag = undefined;
	static error_text = undefined;
	static error_pos = undefined;
	static is_ready = undefined;
	static tag = undefined;
	static error = function(l_text, l_d) {
		var l_pos = l_d;
		self.error_text = l_pos.to_string() + " " + l_text;
		self.error_pos = l_pos;
		return true;
	}
	static destroy = function() {
		var l__g = 0;
		var l__g1 = self.scripts;
		while (l__g < array_length(l__g1)) {
			var l_q = l__g1[l__g];
			l__g++;
			l_q.destroy();
		}
		self.scripts = undefined;
		self.script_map = undefined;
		self.enum_map = undefined;
		self.macros = undefined;
		ds_list_destroy(self.wait_list);
		self.wait_list = undefined;
		ds_list_destroy(self.wait_list_swap);
		self.wait_list_swap = undefined;
	}
	static call_v = function(l_name, l_args1, l_copy) {
		if (l_copy == undefined) l_copy = true;
		if (false) throw argument[2];
		if (self.script_map.exists(l_name)) {
			var l_scr = self.script_map.get(l_name);
			var l_locals = array_create(l_scr.locals);
			if (l_copy) l_args1 = gml_value_list_copy(l_args1);
			var l_th = new gml_thread(self, l_scr.actions, l_args1, l_locals);
			l_th.callback = self.callback;
			l_th.time_tag = self.time_tag;
			l_th.exec();
			return l_th;
		} else return undefined;
	}
	static call = function(l_name, l_rest) {
		var l_argc = (argument_count - 1);
		var l_args2 = array_create(l_argc);
		var l_i = 0;
		for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
			l_args2[@l_i] = argument[l_i + 1];
		}
		var l_copy = false;
		if (l_copy == undefined) l_copy = true;
		if (self.script_map.exists(l_name)) {
			var l_scr = self.script_map.get(l_name);
			var l_locals = array_create(l_scr.locals);
			if (l_copy) l_args2 = gml_value_list_copy(l_args2);
			var l_th = new gml_thread(self, l_scr.actions, l_args2, l_locals);
			l_th.callback = self.callback;
			l_th.time_tag = self.time_tag;
			l_th.exec();
			return l_th;
		} else return undefined;
	}
	static call_id_v = function(l_scriptId, l_args1, l_copy) {
		if (l_copy == undefined) l_copy = true;
		if (false) throw argument[2];
		l_scriptId -= gml_script_index_offset;
		if (l_scriptId >= 0 && l_scriptId < array_length(self.scripts)) {
			var l_scr = self.scripts[l_scriptId];
			var l_locals = array_create(l_scr.locals);
			if (l_copy) l_args1 = gml_value_list_copy(l_args1);
			var l_th = new gml_thread(self, l_scr.actions, l_args1, l_locals);
			l_th.callback = self.callback;
			l_th.time_tag = self.time_tag;
			l_th.exec();
			return l_th;
		} else return undefined;
	}
	static call_id = function(l_scriptId, l_rest) {
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
		if (l_scriptId1 >= 0 && l_scriptId1 < array_length(self.scripts)) {
			var l_scr = self.scripts[l_scriptId1];
			var l_locals = array_create(l_scr.locals);
			if (l_copy) l_args2 = gml_value_list_copy(l_args2);
			var l_th = new gml_thread(self, l_scr.actions, l_args2, l_locals);
			l_th.callback = self.callback;
			l_th.time_tag = self.time_tag;
			l_th.exec();
			return l_th;
		} else return undefined;
	}
	static print = function() {
		var l_r = "";
		var l_i = 0;
		for (var l__g1 = array_length(self.scripts); l_i < l__g1; l_i++) {
			if (l_i > 0) l_r += "\n";
			var l_scr = self.scripts[l_i];
			l_r += "#define " + l_scr.name + "\n" + gml_action_list_print(l_scr.actions);
		}
		return l_r;
	}
	static update = function(l_dt, l_timeTag) {
		if (false) throw argument[1];
		var l_list = self.wait_list;
		var l_n = ds_list_size(l_list);
		if (l_n > 0) {
			var l_swap = self.wait_list_swap;
			self.wait_list = l_swap;
			var l_i = 0;
			while (l_i < l_n) {
				var l_th = l_list[|l_i];
				if (l_th.time_tag == l_timeTag) {
					var l_t = l_th.wait_time - l_dt;
					if (l_t <= 0) {
						l_th.wait_time = 0;
						ds_list_delete(l_list, l_i);
						l_th.exec();
						l_n--;
					} else {
						l_th.wait_time = l_t;
						l_i++;
					}
				} else l_i++;
			}
			l_n = ds_list_size(l_swap);
			for (l_i = 0; l_i < l_n; l_i++) {
				ds_list_add(l_list, l_swap[|l_i]);
			}
			ds_list_clear(l_swap);
			self.wait_list = l_list;
		}
	}
	static change_time_tags = function(l_fromTag, l_toTag) {
		var l_list = self.wait_list;
		var l_n = ds_list_size(l_list);
		for (var l_i = 0; l_i < l_n; l_i++) {
			var l_th = l_list[|l_i];
			if (l_th.time_tag == l_fromTag) l_th.time_tag = l_toTag;
		}
	}
	static seek = function(l_f, l_st) {
		if (l_st == undefined) l_st = false;
		if (false) throw argument[1];
		var l_w;
		if (l_st) l_w = ds_list_create(); else l_w = undefined;
		gml_program_seek_func = l_f;
		var l_m = self.scripts;
		var l_n = array_length(l_m);
		var l_i = 0;
		while (l_i < l_n) {
			var l_scr = l_m[l_i];
			gml_program_seek_script = l_scr;
			var l_scrNode = l_scr.node;
			if (l_scrNode != undefined && l_f(l_scrNode, l_w)) break; else l_i++;
		}
		gml_program_seek_script = undefined;
		gml_program_seek_func = undefined;
		if (l_st) ds_list_destroy(l_w);
		return l_i < l_n;
	}
	static check = function() {
		gml_program_seek_inst = self;
		if (self.seek(gml_seek_arguments_proc, false)) return true;
		if (self.seek(gml_seek_locals_proc, false)) return true;
		if (self.seek(gml_seek_idents_proc, true)) return true;
		if (self.seek(gml_seek_fields_proc, false)) return true;
		if (self.seek(gml_seek_calls_proc, false)) return true;
		if (gml_seek_enum_values_proc()) return true;
		if (self.seek(gml_seek_enum_fields_proc, false)) return true;
		if (gml_seek_eval_opt()) return true;
		if (self.seek(gml_seek_self_fields_proc, false)) return true;
		if (self.seek(gml_seek_alarms_proc, false)) return true;
		if (self.seek(gml_seek_adjfix_proc, true)) return true;
		if (self.seek(gml_seek_set_op_proc, true)) return true;
		gml_program_seek_inst = undefined;
		return false;
	}
	static eval_value = undefined;
	static eval = function(l_q) {
		var l_r, l_v;
		var l__g = l_q;
		switch (l__g.__enumIndex__/* gml_node */) {
			case 1/* number */: l_r = l__g.value; break;
			case 2/* cstring */: l_r = l__g.value; break;
			case 39/* field */:
				var l__hx_tmp = l__g.x;
				if (l__hx_tmp.__enumIndex__/* gml_node */ == 7/* ident */) {
					var l_f = l__g.fd;
					var l_s = l__hx_tmp.id;
					var l_d = l__g.d;
					var l_e = self.enum_map.get(l_s);
					if (l_e != undefined) {
						var l_c = l_e.ctr_map.get(l_f);
						if (l_c != undefined) {
							l_r = l_c.value;
							if (l_r == undefined) return self.error("Value of " + l_s + "." + l_f + " is not known here", l_d);
						} else return self.error("Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
					} else return self.error("Could not find enum " + l_s, l_d);
				} else return self.error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
				break;
			case 28/* bin_op */:
				if (self.eval(l__g.a)) return true;
				l_r = self.eval_value;
				if (self.eval(l__g.b)) return true;
				l_v = self.eval_value;
				switch (l__g.o) {
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
					default: return self.error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
				}
				break;
			default: return self.error("Can not evaluate this compile-time", gml_std_haxe_enum_tools_getParameter(l_q, 0));
		}
		self.eval_value = l_r;
		return false;
	}
	self.is_ready = false;
	self.error_text = undefined;
	self.time_tag = undefined;
	self.callback = undefined;
	self.wait_list_swap = ds_list_create();
	self.wait_list = ds_list_create();
	self.macros = new haxe_ds_string_map();
	self.enum_map = new haxe_ds_string_map();
	self.enums = [];
	self.script_map = new haxe_ds_string_map();
	self.scripts = [];
	self.sources = undefined;
	self.sources = l_sources;
	var l_builders = [];
	var l__g = 0;
	while (l__g < array_length(l_sources)) {
		var l_src = l_sources[l__g];
		l__g++;
		var l_b = new gml_builder(l_src);
		gml_std_gml_internal_ArrayImpl_push(l_builders, l_b);
		if (l_b.error_text == undefined) {
			var l_main = l_src.main;
			var l__g1 = 0;
			var l__g2 = l_b.scripts;
			while (l__g1 < array_length(l__g2)) {
				var l_scr = l__g2[l__g1];
				l__g1++;
				if (self.script_map.exists(l_scr.name)) {
					if (l_scr.name == l_main) {
						var l__g3 = self.script_map.get(l_main).node;
						var l_tmp;
						if (l__g3.__enumIndex__/* gml_node */ == 90/* block */) l_tmp = array_length(l__g3.nodes) == 0; else l_tmp = false;
						if (l_tmp) {
							var l_w = self.scripts;
							var l_i = 0;
							var l_n = array_length(l_w);
							while (l_i < l_n) {
								if (l_w[l_i].name == l_main) {
									while (++l_i < l_n) {
										l_w[@l_i - 1] = l_w[l_i];
									}
									l_w[@l_n - 1] = l_scr;
								} else l_i++;
							}
							self.script_map.set(l_scr.name, l_scr);
						} else {
							self.error("Cannot override prefix-script \"" + l_main + "\" because it is not empty", l_scr.pos);
							return 0;
						}
					} else {
						self.error("Script " + l_scr.name + " is already defined at " + self.script_map.get(l_scr.name).pos.to_string(), l_scr.pos);
						return 0;
					}
				} else {
					gml_std_gml_internal_ArrayImpl_push(self.scripts, l_scr);
					self.script_map.set(l_scr.name, l_scr);
				}
			}
			var l__g5 = 0;
			var l__g6 = l_b.enums;
			while (l__g5 < array_length(l__g6)) {
				var l_e = l__g6[l__g5];
				l__g5++;
				gml_std_gml_internal_ArrayImpl_push(self.enums, l_e);
				self.enum_map.set(l_e.name, l_e);
			}
			var l_mcrNames = l_b.macro_names;
			var l_mcrNodes = l_b.macro_nodes;
			var l_mcrMap = self.macros;
			var l_i1 = 0;
			for (var l__g8 = array_length(l_mcrNames); l_i1 < l__g8; l_i1++) {
				l_mcrMap.set(l_mcrNames[l_i1], l_mcrNodes[l_i1]);
			}
		} else if (l_src.opt) {
			var l_errorNext = l_b.error_text;
			if (self.error_text != undefined) self.error_text += "\n" + l_errorNext; else self.error_text = l_errorNext;
		} else {
			self.error_text = l_b.error_text;
			self.error_pos = l_b.error_pos;
			return 0;
		}
	}
	var l_i;
	var l_n = array_length(self.scripts);
	for (l_i = 0; l_i < l_n; l_i++) {
		self.scripts[l_i].index = gml_script_index_offset + l_i;
	}
	if (self.check()) {
		gml_program_seek_inst = undefined;
		return 0;
	} else if (gml_compile_program(self)) {
		if (self.error_text != undefined) self.error_text += "\n" + gml_compile_error_text; else self.error_text = gml_compile_error_text;
		self.error_pos = gml_compile_error_pos;
		return 0;
	}
	self.is_ready = true;
	static __class__ = mt_gml_program;
}
mt_gml_program.i_constructor = gml_program;

function gml_program_seek_error(l_msg, l_d) {
	return gml_program_seek_inst.error(l_msg, l_d);
}

#endregion

#region gml_std.haxe_enum_tools

function gml_std_haxe_enum_tools_getParameter(l_q, l_i) {
	if (is_struct(l_q)) {
		var l_params = l_q.__enumParams__;
		return variable_struct_get(l_q, l_params[l_i]);
	} else if (is_array(l_q)) {
		return l_q[l_i + 1];
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

function gml_std_haxe_enum_tools_getParameterCount(l_q) {
	if (is_struct(l_q)) {
		return l_q.__enumParams__.length;
	} else if (is_array(l_q)) {
		return array_length(l_q) - 1;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

function gml_std_haxe_enum_tools_setParameter(l_q, l_i, l_value) {
	if (is_struct(l_q)) {
		var l_params = l_q.__enumParams__;
		variable_struct_set(l_q, l_params[l_i], l_value);
	} else if (is_array(l_q)) {
		l_q[@l_i + 1] = l_value;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

function gml_std_haxe_enum_tools_setTo(l_q, l_v) {
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

function gml_std_Std_stringify(l_value) {
	if (l_value == undefined) return "null";
	if (is_string(l_value)) return l_value;
	var l_n, l_i, l_s;
	if (is_struct(l_value)) {
		var l_e = variable_struct_get(l_value, "__enum__");
		if (l_e == undefined) return string(l_value);
		var l_ects = l_e.constructors;
		if (l_ects != undefined) {
			l_i = l_value.__enumIndex__;
			if (l_i >= 0 && l_i < array_length(l_ects)) l_s = l_ects[l_i]; else l_s = "?";
		} else {
			l_s = instanceof(l_value);
			if (string_copy(l_s, 1, 3) == "mc_") l_s = string_delete(l_s, 1, 3);
			l_n = string_length(l_e.name);
			if (string_copy(l_s, 1, l_n) == l_e.name) l_s = string_delete(l_s, 1, l_n + 1);
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

function gml_std_Std_parseFloat(l_s) {
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

function gml_std_Std_parseInt(l_value) {
	var l_n = string_length(string_digits(l_value));
	if (l_n && l_n == string_length(l_value) - (string_ord_at(l_value, 1) == 45)) return real(l_value); else return undefined;
}

#endregion

#region gml_std.string

function gml_std_string_pos_ext(this, l_sub, l_startPos) {
	if (l_startPos == undefined) l_startPos = 0;
	if (false) throw argument[1];
	var l_out = string_pos(l_sub, (l_startPos > 0 ? string_delete(this, 1, l_startPos) : this));
	if (l_out > 0) return l_out + l_startPos - 1; else return -1;
}

function gml_std_string_split(this, l_del) {
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

function gml_std_string_substr(this, l_pos, l_len) {
	if (false) throw argument[1];
	if (l_pos < 0) l_pos += string_length(this);
	if (l_len == undefined) return string_delete(this, 1, l_pos); else return string_copy(this, 1 + l_pos, l_len);
}

function gml_std_string_substring(this, l_start, l_end) {
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

function gml_std_StringTools_startsWith(l_s, l_start) {
	var l_n = string_length(l_start);
	return string_length(l_s) >= l_n && string_copy(l_s, 1, l_n) == l_start;
}

function gml_std_StringTools_trim(l_s) {
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

function gml_std_Type_getEnumConstructs(l_e) {
	return gml_std_gml_internal_ArrayImpl_copy(l_e.constructors);
}

function gml_std_Type_enumConstructor(l_e) {
	var l_et, l_i;
	var l_isStruct1 = is_struct(l_e);
	if (l_isStruct1) {
		l_et = l_e.__enum__;
		l_i = l_e.__enumIndex__;
	} else return string(l_e);
	var l_cs = l_et.constructors;
	if (l_cs != undefined && l_i >= 0 && l_i < array_length(l_cs)) {
		return l_cs[l_i];
	} else {
		if (l_isStruct1) {
			var l_s = instanceof(l_e);
			if (string_copy(l_s, 1, 3) == "mc_") l_s = string_delete(l_s, 1, 3);
			l_i = string_length(l_et.name);
			if (string_copy(l_s, 1, l_i) == l_et.name && string_ord_at(l_s, l_i + 1) == 95) l_s = string_delete(l_s, 1, l_i + 1);
			return l_s;
		}
		return string(l_e);
	}
}

#endregion

#region gml.enum

function gml_enum(l_name, l_pos) constructor {
	static name = undefined;
	static pos = undefined;
	static ctr_list = undefined;
	static ctr_map = undefined;
	static add = function(l_name, l_val) {
		var l_ctr = new gml_enum_ctr(l_name, self.pos, gml_node_number(self.pos, l_val, string(l_val)));
		l_ctr.value = l_val;
		gml_std_gml_internal_ArrayImpl_push(self.ctr_list, l_ctr);
		self.ctr_map.set(l_name, l_ctr);
	}
	static print = function() {
		var l_r = "(enum " + self.name + " { ";
		var l_z = false;
		var l__g = 0;
		var l__g1 = self.ctr_list;
		while (l__g < array_length(l__g1)) {
			var l_ctr = l__g1[l__g];
			l__g++;
			if (l_z) l_r += ", "; else l_z = true;
			l_r += l_ctr.name + " = " + string(l_ctr.value);
		}
		return l_r + " })";
	}
	self.ctr_map = new haxe_ds_string_map();
	self.ctr_list = [];
	self.name = l_name;
	self.pos = l_pos;
	//
}

function gml_enum_create_builtin(l_name) {
	var l_e = new gml_enum(l_name, new gml_pos(new gml_source("built-in", ""), 0, 0));
	gml_enum_map.set(l_name, l_e);
	return l_e;
}

#endregion

#region gml.enum_ctr

function gml_enum_ctr(l_name, l_pos, l_node) constructor {
	static name = undefined;
	static pos = undefined;
	static node = undefined;
	static value = undefined;
	self.name = l_name;
	self.pos = l_pos;
	self.node = l_node;
	static __class__ = mt_gml_enum_ctr;
}
mt_gml_enum_ctr.i_constructor = gml_enum_ctr;

#endregion

#region gml.node

function mc_gml_node() {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_node;
}

function mc_gml_node_undefined() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 0;
}

function gml_node_undefined(l_d) {
	var this = new mc_gml_node_undefined();
	this.d = l_d;
	return this
}

function mc_gml_node_number() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "value", "src"];
	static __enumIndex__ = 1;
}

function gml_node_number(l_d, l_value, l_src) {
	var this = new mc_gml_node_number();
	this.d = l_d;
	this.value = l_value;
	this.src = l_src;
	return this
}

function mc_gml_node_cstring() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "value"];
	static __enumIndex__ = 2;
}

function gml_node_cstring(l_d, l_value) {
	var this = new mc_gml_node_cstring();
	this.d = l_d;
	this.value = l_value;
	return this
}

function mc_gml_node_enum_ctr() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "e", "ctr"];
	static __enumIndex__ = 3;
}

function gml_node_enum_ctr(l_d, l_e, l_ctr) {
	var this = new mc_gml_node_enum_ctr();
	this.d = l_d;
	this.e = l_e;
	this.ctr = l_ctr;
	return this
}

function mc_gml_node_array_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "values"];
	static __enumIndex__ = 4;
}

function gml_node_array_decl(l_d, l_values) {
	var this = new mc_gml_node_array_decl();
	this.d = l_d;
	this.values = l_values;
	return this
}

function mc_gml_node_object_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "keys", "values"];
	static __enumIndex__ = 5;
}

function gml_node_object_decl(l_d, l_keys, l_values) {
	var this = new mc_gml_node_object_decl();
	this.d = l_d;
	this.keys = l_keys;
	this.values = l_values;
	return this
}

function mc_gml_node_ensure_array() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "expr"];
	static __enumIndex__ = 6;
}

function gml_node_ensure_array(l_d, l_expr) {
	var this = new mc_gml_node_ensure_array();
	this.d = l_d;
	this.expr = l_expr;
	return this
}

function mc_gml_node_ident() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 7;
}

function gml_node_ident(l_d, l_id) {
	var this = new mc_gml_node_ident();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_self() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 8;
}

function gml_node_self(l_d) {
	var this = new mc_gml_node_self();
	this.d = l_d;
	return this
}

function mc_gml_node_other() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 9;
}

function gml_node_other(l_d) {
	var this = new mc_gml_node_other();
	this.d = l_d;
	return this
}

function mc_gml_node_global_ref() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 10;
}

function gml_node_global_ref(l_d) {
	var this = new mc_gml_node_global_ref();
	this.d = l_d;
	return this
}

function mc_gml_node_script() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "ref"];
	static __enumIndex__ = 11;
}

function gml_node_script(l_d, l_ref) {
	var this = new mc_gml_node_script();
	this.d = l_d;
	this.ref = l_ref;
	return this
}

function mc_gml_node_native_script() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "name", "id"];
	static __enumIndex__ = 12;
}

function gml_node_native_script(l_d, l_name, l_id) {
	var this = new mc_gml_node_native_script();
	this.d = l_d;
	this.name = l_name;
	this.id = l_id;
	return this
}

function mc_gml_node_const() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 13;
}

function gml_node_const(l_d, l_id) {
	var this = new mc_gml_node_const();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_arg_const() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 14;
}

function gml_node_arg_const(l_d, l_id) {
	var this = new mc_gml_node_arg_const();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_arg_index() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 15;
}

function gml_node_arg_index(l_d, l_id) {
	var this = new mc_gml_node_arg_index();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_arg_count() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 16;
}

function gml_node_arg_count(l_d) {
	var this = new mc_gml_node_arg_count();
	this.d = l_d;
	return this
}

function mc_gml_node_call() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "args"];
	static __enumIndex__ = 17;
}

function gml_node_call(l_d, l_x, l_args) {
	var this = new mc_gml_node_call();
	this.d = l_d;
	this.x = l_x;
	this.args = l_args;
	return this
}

function mc_gml_node_call_script() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "name", "args"];
	static __enumIndex__ = 18;
}

function gml_node_call_script(l_d, l_name, l_args) {
	var this = new mc_gml_node_call_script();
	this.d = l_d;
	this.name = l_name;
	this.args = l_args;
	return this
}

function mc_gml_node_call_script_at() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "inst", "script", "args"];
	static __enumIndex__ = 19;
}

function gml_node_call_script_at(l_d, l_inst, l_script, l_args) {
	var this = new mc_gml_node_call_script_at();
	this.d = l_d;
	this.inst = l_inst;
	this.script = l_script;
	this.args = l_args;
	return this
}

function mc_gml_node_call_script_id() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "index", "args"];
	static __enumIndex__ = 20;
}

function gml_node_call_script_id(l_d, l_index, l_args) {
	var this = new mc_gml_node_call_script_id();
	this.d = l_d;
	this.index = l_index;
	this.args = l_args;
	return this
}

function mc_gml_node_call_script_with_array() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "index", "array"];
	static __enumIndex__ = 21;
}

function gml_node_call_script_with_array(l_d, l_index, l_array) {
	var this = new mc_gml_node_call_script_with_array();
	this.d = l_d;
	this.index = l_index;
	this.array = l_array;
	return this
}

function mc_gml_node_call_field() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "inst", "prop", "args"];
	static __enumIndex__ = 22;
}

function gml_node_call_field(l_d, l_inst, l_prop, l_args) {
	var this = new mc_gml_node_call_field();
	this.d = l_d;
	this.inst = l_inst;
	this.prop = l_prop;
	this.args = l_args;
	return this
}

function mc_gml_node_call_func() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s", "args"];
	static __enumIndex__ = 23;
}

function gml_node_call_func(l_d, l_s, l_args) {
	var this = new mc_gml_node_call_func();
	this.d = l_d;
	this.s = l_s;
	this.args = l_args;
	return this
}

function mc_gml_node_call_func_at() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "s", "args"];
	static __enumIndex__ = 24;
}

function gml_node_call_func_at(l_d, l_x, l_s, l_args) {
	var this = new mc_gml_node_call_func_at();
	this.d = l_d;
	this.x = l_x;
	this.s = l_s;
	this.args = l_args;
	return this
}

function mc_gml_node_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "inc"];
	static __enumIndex__ = 25;
}

function gml_node_prefix(l_d, l_x, l_inc) {
	var this = new mc_gml_node_prefix();
	this.d = l_d;
	this.x = l_x;
	this.inc = l_inc;
	return this
}

function mc_gml_node_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "inc"];
	static __enumIndex__ = 26;
}

function gml_node_postfix(l_d, l_x, l_inc) {
	var this = new mc_gml_node_postfix();
	this.d = l_d;
	this.x = l_x;
	this.inc = l_inc;
	return this
}

function mc_gml_node_un_op() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "o"];
	static __enumIndex__ = 27;
}

function gml_node_un_op(l_d, l_x, l_o) {
	var this = new mc_gml_node_un_op();
	this.d = l_d;
	this.x = l_x;
	this.o = l_o;
	return this
}

function mc_gml_node_bin_op() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "o", "a", "b"];
	static __enumIndex__ = 28;
}

function gml_node_bin_op(l_d, l_o, l_a, l_b) {
	var this = new mc_gml_node_bin_op();
	this.d = l_d;
	this.o = l_o;
	this.a = l_a;
	this.b = l_b;
	return this
}

function mc_gml_node_set_op() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "o", "a", "b"];
	static __enumIndex__ = 29;
}

function gml_node_set_op(l_d, l_o, l_a, l_b) {
	var this = new mc_gml_node_set_op();
	this.d = l_d;
	this.o = l_o;
	this.a = l_a;
	this.b = l_b;
	return this
}

function mc_gml_node_to_bool() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "v"];
	static __enumIndex__ = 30;
}

function gml_node_to_bool(l_d, l_v) {
	var this = new mc_gml_node_to_bool();
	this.d = l_d;
	this.v = l_v;
	return this
}

function mc_gml_node_from_bool() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "v"];
	static __enumIndex__ = 31;
}

function gml_node_from_bool(l_d, l_v) {
	var this = new mc_gml_node_from_bool();
	this.d = l_d;
	this.v = l_v;
	return this
}

function mc_gml_node_in() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "fd", "val", "i_not"];
	static __enumIndex__ = 32;
}

function gml_node_in(l_d, l_fd, l_val, l_i_not) {
	var this = new mc_gml_node_in();
	this.d = l_d;
	this.fd = l_fd;
	this.val = l_val;
	this.i_not = l_i_not;
	return this
}

function mc_gml_node_local() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 33;
}

function gml_node_local(l_d, l_id) {
	var this = new mc_gml_node_local();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_local_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "val"];
	static __enumIndex__ = 34;
}

function gml_node_local_set(l_d, l_id, l_val) {
	var this = new mc_gml_node_local_set();
	this.d = l_d;
	this.id = l_id;
	this.val = l_val;
	return this
}

function mc_gml_node_local_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "op", "val"];
	static __enumIndex__ = 35;
}

function gml_node_local_aop(l_d, l_id, l_op, l_val) {
	var this = new mc_gml_node_local_aop();
	this.d = l_d;
	this.id = l_id;
	this.op = l_op;
	this.val = l_val;
	return this
}

function mc_gml_node_global() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 36;
}

function gml_node_global(l_d, l_id) {
	var this = new mc_gml_node_global();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_global_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "val"];
	static __enumIndex__ = 37;
}

function gml_node_global_set(l_d, l_id, l_val) {
	var this = new mc_gml_node_global_set();
	this.d = l_d;
	this.id = l_id;
	this.val = l_val;
	return this
}

function mc_gml_node_global_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "op", "val"];
	static __enumIndex__ = 38;
}

function gml_node_global_aop(l_d, l_id, l_op, l_val) {
	var this = new mc_gml_node_global_aop();
	this.d = l_d;
	this.id = l_id;
	this.op = l_op;
	this.val = l_val;
	return this
}

function mc_gml_node_field() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd"];
	static __enumIndex__ = 39;
}

function gml_node_field(l_d, l_x, l_fd) {
	var this = new mc_gml_node_field();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	return this
}

function mc_gml_node_field_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd", "val"];
	static __enumIndex__ = 40;
}

function gml_node_field_set(l_d, l_x, l_fd, l_val) {
	var this = new mc_gml_node_field_set();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	this.val = l_val;
	return this
}

function mc_gml_node_field_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd", "op", "val"];
	static __enumIndex__ = 41;
}

function gml_node_field_aop(l_d, l_x, l_fd, l_op, l_val) {
	var this = new mc_gml_node_field_aop();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	this.op = l_op;
	this.val = l_val;
	return this
}

function mc_gml_node_env() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 42;
}

function gml_node_env(l_d, l_id) {
	var this = new mc_gml_node_env();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_node_env_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "val"];
	static __enumIndex__ = 43;
}

function gml_node_env_set(l_d, l_id, l_val) {
	var this = new mc_gml_node_env_set();
	this.d = l_d;
	this.id = l_id;
	this.val = l_val;
	return this
}

function mc_gml_node_env_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "op", "val"];
	static __enumIndex__ = 44;
}

function gml_node_env_aop(l_d, l_id, l_op, l_val) {
	var this = new mc_gml_node_env_aop();
	this.d = l_d;
	this.id = l_id;
	this.op = l_op;
	this.val = l_val;
	return this
}

function mc_gml_node_env_fd() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd"];
	static __enumIndex__ = 45;
}

function gml_node_env_fd(l_d, l_x, l_fd) {
	var this = new mc_gml_node_env_fd();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	return this
}

function mc_gml_node_env_fd_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd", "v"];
	static __enumIndex__ = 46;
}

function gml_node_env_fd_set(l_d, l_x, l_fd, l_v) {
	var this = new mc_gml_node_env_fd_set();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	this.v = l_v;
	return this
}

function mc_gml_node_env_fd_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "fd", "op", "v"];
	static __enumIndex__ = 47;
}

function gml_node_env_fd_aop(l_d, l_x, l_fd, l_op, l_v) {
	var this = new mc_gml_node_env_fd_aop();
	this.d = l_d;
	this.x = l_x;
	this.fd = l_fd;
	this.op = l_op;
	this.v = l_v;
	return this
}

function mc_gml_node_env1d() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "k"];
	static __enumIndex__ = 48;
}

function gml_node_env1d(l_d, l_id, l_k) {
	var this = new mc_gml_node_env1d();
	this.d = l_d;
	this.id = l_id;
	this.k = l_k;
	return this
}

function mc_gml_node_env1d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "k", "val"];
	static __enumIndex__ = 49;
}

function gml_node_env1d_set(l_d, l_id, l_k, l_val) {
	var this = new mc_gml_node_env1d_set();
	this.d = l_d;
	this.id = l_id;
	this.k = l_k;
	this.val = l_val;
	return this
}

function mc_gml_node_env1d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "id", "k", "op", "val"];
	static __enumIndex__ = 50;
}

function gml_node_env1d_aop(l_d, l_id, l_k, l_op, l_val) {
	var this = new mc_gml_node_env1d_aop();
	this.d = l_d;
	this.id = l_id;
	this.k = l_k;
	this.op = l_op;
	this.val = l_val;
	return this
}

function mc_gml_node_alarm() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i"];
	static __enumIndex__ = 51;
}

function gml_node_alarm(l_d, l_x, l_i) {
	var this = new mc_gml_node_alarm();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	return this
}

function mc_gml_node_alarm_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "v"];
	static __enumIndex__ = 52;
}

function gml_node_alarm_set(l_d, l_x, l_i, l_v) {
	var this = new mc_gml_node_alarm_set();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.v = l_v;
	return this
}

function mc_gml_node_alarm_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "op", "v"];
	static __enumIndex__ = 53;
}

function gml_node_alarm_aop(l_d, l_x, l_i, l_op, l_v) {
	var this = new mc_gml_node_alarm_aop();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.op = l_op;
	this.v = l_v;
	return this
}

function mc_gml_node_index() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id"];
	static __enumIndex__ = 54;
}

function gml_node_index(l_d, l_x, l_id) {
	var this = new mc_gml_node_index();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	return this
}

function mc_gml_node_index_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id", "v"];
	static __enumIndex__ = 55;
}

function gml_node_index_set(l_d, l_x, l_id, l_v) {
	var this = new mc_gml_node_index_set();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	this.v = l_v;
	return this
}

function mc_gml_node_index_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id", "o", "v"];
	static __enumIndex__ = 56;
}

function gml_node_index_aop(l_d, l_x, l_id, l_o, l_v) {
	var this = new mc_gml_node_index_aop();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_index_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 57;
}

function gml_node_index_prefix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_index_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_index_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 58;
}

function gml_node_index_postfix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_index_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_index2d() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2"];
	static __enumIndex__ = 59;
}

function gml_node_index2d(l_d, l_x, l_i1, l_i2) {
	var this = new mc_gml_node_index2d();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	return this
}

function mc_gml_node_index2d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2", "v"];
	static __enumIndex__ = 60;
}

function gml_node_index2d_set(l_d, l_x, l_i1, l_i2, l_v) {
	var this = new mc_gml_node_index2d_set();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.v = l_v;
	return this
}

function mc_gml_node_index2d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2", "o", "v"];
	static __enumIndex__ = 61;
}

function gml_node_index2d_aop(l_d, l_x, l_i1, l_i2, l_o, l_v) {
	var this = new mc_gml_node_index2d_aop();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_index2d_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 62;
}

function gml_node_index2d_prefix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_index2d_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_index2d_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 63;
}

function gml_node_index2d_postfix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_index2d_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_raw_id() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id"];
	static __enumIndex__ = 64;
}

function gml_node_raw_id(l_d, l_x, l_id) {
	var this = new mc_gml_node_raw_id();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	return this
}

function mc_gml_node_raw_id_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id", "v"];
	static __enumIndex__ = 65;
}

function gml_node_raw_id_set(l_d, l_x, l_id, l_v) {
	var this = new mc_gml_node_raw_id_set();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	this.v = l_v;
	return this
}

function mc_gml_node_raw_id_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "id", "o", "v"];
	static __enumIndex__ = 66;
}

function gml_node_raw_id_aop(l_d, l_x, l_id, l_o, l_v) {
	var this = new mc_gml_node_raw_id_aop();
	this.d = l_d;
	this.x = l_x;
	this.id = l_id;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_raw_id_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 67;
}

function gml_node_raw_id_prefix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_raw_id_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_raw_id_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 68;
}

function gml_node_raw_id_postfix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_raw_id_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_raw_id2d() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2"];
	static __enumIndex__ = 69;
}

function gml_node_raw_id2d(l_d, l_x, l_i1, l_i2) {
	var this = new mc_gml_node_raw_id2d();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	return this
}

function mc_gml_node_raw_id2d_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2", "v"];
	static __enumIndex__ = 70;
}

function gml_node_raw_id2d_set(l_d, l_x, l_i1, l_i2, l_v) {
	var this = new mc_gml_node_raw_id2d_set();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.v = l_v;
	return this
}

function mc_gml_node_raw_id2d_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i1", "i2", "o", "v"];
	static __enumIndex__ = 71;
}

function gml_node_raw_id2d_aop(l_d, l_x, l_i1, l_i2, l_o, l_v) {
	var this = new mc_gml_node_raw_id2d_aop();
	this.d = l_d;
	this.x = l_x;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_raw_id2d_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 72;
}

function gml_node_raw_id2d_prefix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_raw_id2d_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_raw_id2d_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 73;
}

function gml_node_raw_id2d_postfix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_raw_id2d_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_list() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id"];
	static __enumIndex__ = 74;
}

function gml_node_ds_list(l_d, l_lx, l_id) {
	var this = new mc_gml_node_ds_list();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	return this
}

function mc_gml_node_ds_list_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id", "v"];
	static __enumIndex__ = 75;
}

function gml_node_ds_list_set(l_d, l_lx, l_id, l_v) {
	var this = new mc_gml_node_ds_list_set();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_list_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id", "o", "v"];
	static __enumIndex__ = 76;
}

function gml_node_ds_list_aop(l_d, l_lx, l_id, l_o, l_v) {
	var this = new mc_gml_node_ds_list_aop();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_list_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 77;
}

function gml_node_ds_list_prefix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_ds_list_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_list_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 78;
}

function gml_node_ds_list_postfix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_ds_list_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_map() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id"];
	static __enumIndex__ = 79;
}

function gml_node_ds_map(l_d, l_lx, l_id) {
	var this = new mc_gml_node_ds_map();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	return this
}

function mc_gml_node_ds_map_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id", "v"];
	static __enumIndex__ = 80;
}

function gml_node_ds_map_set(l_d, l_lx, l_id, l_v) {
	var this = new mc_gml_node_ds_map_set();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_map_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "id", "o", "v"];
	static __enumIndex__ = 81;
}

function gml_node_ds_map_aop(l_d, l_lx, l_id, l_o, l_v) {
	var this = new mc_gml_node_ds_map_aop();
	this.d = l_d;
	this.lx = l_lx;
	this.id = l_id;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_map_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 82;
}

function gml_node_ds_map_prefix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_ds_map_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_map_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "inc"];
	static __enumIndex__ = 83;
}

function gml_node_ds_map_postfix(l_d, l_x, l_i, l_inc) {
	var this = new mc_gml_node_ds_map_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_grid() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "i1", "i2"];
	static __enumIndex__ = 84;
}

function gml_node_ds_grid(l_d, l_lx, l_i1, l_i2) {
	var this = new mc_gml_node_ds_grid();
	this.d = l_d;
	this.lx = l_lx;
	this.i1 = l_i1;
	this.i2 = l_i2;
	return this
}

function mc_gml_node_ds_grid_set() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "i1", "i2", "v"];
	static __enumIndex__ = 85;
}

function gml_node_ds_grid_set(l_d, l_lx, l_i1, l_i2, l_v) {
	var this = new mc_gml_node_ds_grid_set();
	this.d = l_d;
	this.lx = l_lx;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_grid_aop() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "lx", "i1", "i2", "o", "v"];
	static __enumIndex__ = 86;
}

function gml_node_ds_grid_aop(l_d, l_lx, l_i1, l_i2, l_o, l_v) {
	var this = new mc_gml_node_ds_grid_aop();
	this.d = l_d;
	this.lx = l_lx;
	this.i1 = l_i1;
	this.i2 = l_i2;
	this.o = l_o;
	this.v = l_v;
	return this
}

function mc_gml_node_ds_grid_prefix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 87;
}

function gml_node_ds_grid_prefix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_ds_grid_prefix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_ds_grid_postfix() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "i", "k", "inc"];
	static __enumIndex__ = 88;
}

function gml_node_ds_grid_postfix(l_d, l_x, l_i, l_k, l_inc) {
	var this = new mc_gml_node_ds_grid_postfix();
	this.d = l_d;
	this.x = l_x;
	this.i = l_i;
	this.k = l_k;
	this.inc = l_inc;
	return this
}

function mc_gml_node_var_decl() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "name", "value"];
	static __enumIndex__ = 89;
}

function gml_node_var_decl(l_d, l_name, l_value) {
	var this = new mc_gml_node_var_decl();
	this.d = l_d;
	this.name = l_name;
	this.value = l_value;
	if (false) throw argument[2];
	return this
}

function mc_gml_node_block() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "nodes"];
	static __enumIndex__ = 90;
}

function gml_node_block(l_d, l_nodes) {
	var this = new mc_gml_node_block();
	this.d = l_d;
	this.nodes = l_nodes;
	return this
}

function mc_gml_node_if_then() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "cond", "i_then", "i_not"];
	static __enumIndex__ = 91;
}

function gml_node_if_then(l_d, l_cond, l_i_then, l_i_not) {
	var this = new mc_gml_node_if_then();
	this.d = l_d;
	this.cond = l_cond;
	this.i_then = l_i_then;
	this.i_not = l_i_not;
	if (false) throw argument[3];
	return this
}

function mc_gml_node_ternary() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "cond", "i_then", "i_not"];
	static __enumIndex__ = 92;
}

function gml_node_ternary(l_d, l_cond, l_i_then, l_i_not) {
	var this = new mc_gml_node_ternary();
	this.d = l_d;
	this.cond = l_cond;
	this.i_then = l_i_then;
	this.i_not = l_i_not;
	return this
}

function mc_gml_node_switch() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "expr", "list", "def"];
	static __enumIndex__ = 93;
}

function gml_node_switch(l_d, l_expr, l_list, l_def) {
	var this = new mc_gml_node_switch();
	this.d = l_d;
	this.expr = l_expr;
	this.list = l_list;
	this.def = l_def;
	if (false) throw argument[3];
	return this
}

function mc_gml_node_wait() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "time"];
	static __enumIndex__ = 94;
}

function gml_node_wait(l_d, l_time) {
	var this = new mc_gml_node_wait();
	this.d = l_d;
	this.time = l_time;
	return this
}

function mc_gml_node_fork() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 95;
}

function gml_node_fork(l_d) {
	var this = new mc_gml_node_fork();
	this.d = l_d;
	return this
}

function mc_gml_node_while() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "cond", "node"];
	static __enumIndex__ = 96;
}

function gml_node_while(l_d, l_cond, l_node) {
	var this = new mc_gml_node_while();
	this.d = l_d;
	this.cond = l_cond;
	this.node = l_node;
	return this
}

function mc_gml_node_do_until() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "node", "cond"];
	static __enumIndex__ = 97;
}

function gml_node_do_until(l_d, l_node, l_cond) {
	var this = new mc_gml_node_do_until();
	this.d = l_d;
	this.node = l_node;
	this.cond = l_cond;
	return this
}

function mc_gml_node_do_while() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "node", "cond"];
	static __enumIndex__ = 98;
}

function gml_node_do_while(l_d, l_node, l_cond) {
	var this = new mc_gml_node_do_while();
	this.d = l_d;
	this.node = l_node;
	this.cond = l_cond;
	return this
}

function mc_gml_node_repeat() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "times", "node"];
	static __enumIndex__ = 99;
}

function gml_node_repeat(l_d, l_times, l_node) {
	var this = new mc_gml_node_repeat();
	this.d = l_d;
	this.times = l_times;
	this.node = l_node;
	return this
}

function mc_gml_node_for() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "pre", "cond", "post", "loop"];
	static __enumIndex__ = 100;
}

function gml_node_for(l_d, l_pre, l_cond, l_post, l_loop) {
	var this = new mc_gml_node_for();
	this.d = l_d;
	this.pre = l_pre;
	this.cond = l_cond;
	this.post = l_post;
	this.loop = l_loop;
	return this
}

function mc_gml_node_with() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "ctx", "node"];
	static __enumIndex__ = 101;
}

function gml_node_with(l_d, l_ctx, l_node) {
	var this = new mc_gml_node_with();
	this.d = l_d;
	this.ctx = l_ctx;
	this.node = l_node;
	return this
}

function mc_gml_node_once() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "node"];
	static __enumIndex__ = 102;
}

function gml_node_once(l_d, l_node) {
	var this = new mc_gml_node_once();
	this.d = l_d;
	this.node = l_node;
	return this
}

function mc_gml_node_return() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "v"];
	static __enumIndex__ = 103;
}

function gml_node_return(l_d, l_v) {
	var this = new mc_gml_node_return();
	this.d = l_d;
	this.v = l_v;
	return this
}

function mc_gml_node_exit() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 104;
}

function gml_node_exit(l_d) {
	var this = new mc_gml_node_exit();
	this.d = l_d;
	return this
}

function mc_gml_node_break() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 105;
}

function gml_node_break(l_d) {
	var this = new mc_gml_node_break();
	this.d = l_d;
	return this
}

function mc_gml_node_continue() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 106;
}

function gml_node_continue(l_d) {
	var this = new mc_gml_node_continue();
	this.d = l_d;
	return this
}

function mc_gml_node_debugger() : mc_gml_node() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 107;
}

function gml_node_debugger(l_d) {
	var this = new mc_gml_node_debugger();
	this.d = l_d;
	return this
}

function mc_gml_node_comment_line() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s"];
	static __enumIndex__ = 108;
}

function gml_node_comment_line(l_d, l_s) {
	var this = new mc_gml_node_comment_line();
	this.d = l_d;
	this.s = l_s;
	return this
}

function mc_gml_node_comment_line_pre() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s", "x"];
	static __enumIndex__ = 109;
}

function gml_node_comment_line_pre(l_d, l_s, l_x) {
	var this = new mc_gml_node_comment_line_pre();
	this.d = l_d;
	this.s = l_s;
	this.x = l_x;
	return this
}

function mc_gml_node_comment_line_post() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "s"];
	static __enumIndex__ = 110;
}

function gml_node_comment_line_post(l_d, l_x, l_s) {
	var this = new mc_gml_node_comment_line_post();
	this.d = l_d;
	this.x = l_x;
	this.s = l_s;
	return this
}

function mc_gml_node_comment_line_sep() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s", "x"];
	static __enumIndex__ = 111;
}

function gml_node_comment_line_sep(l_d, l_s, l_x) {
	var this = new mc_gml_node_comment_line_sep();
	this.d = l_d;
	this.s = l_s;
	this.x = l_x;
	return this
}

function mc_gml_node_comment_block() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s"];
	static __enumIndex__ = 112;
}

function gml_node_comment_block(l_d, l_s) {
	var this = new mc_gml_node_comment_block();
	this.d = l_d;
	this.s = l_s;
	return this
}

function mc_gml_node_comment_block_pre() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "s", "x", "pl"];
	static __enumIndex__ = 113;
}

function gml_node_comment_block_pre(l_d, l_s, l_x, l_pl) {
	var this = new mc_gml_node_comment_block_pre();
	this.d = l_d;
	this.s = l_s;
	this.x = l_x;
	this.pl = l_pl;
	return this
}

function mc_gml_node_comment_block_post() : mc_gml_node() constructor {
	static __enumParams__ = ["d", "x", "s", "pl"];
	static __enumIndex__ = 114;
}

function gml_node_comment_block_post(l_d, l_x, l_s, l_pl) {
	var this = new mc_gml_node_comment_block_post();
	this.d = l_d;
	this.x = l_x;
	this.s = l_s;
	this.pl = l_pl;
	return this
}

#endregion

#region gml.node

function gml_node_unpack(l_q) {
	while (l_q != undefined) {
		var l__g = l_q;
		if (l__g.__enumIndex__/* gml_node */ == 90/* block */) {
			var l__g1 = l__g.nodes;
			if (array_length(l__g1) == 1) l_q = l__g1[0]; else return l_q;
		} else return l_q;
	}
	return l_q;
}

function gml_node_is_simple(l_q) {
	var l_i, l_n, l_w;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 1/* number */: return true;
		case 2/* cstring */: return true;
		case 0/* undefined */: return true;
		case 33/* local */: return true;
		case 36/* global */: return true;
		case 4/* array_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			l_i = 0;
			while (l_i < l_n) {
				if (gml_node_is_simple(l_w[l_i])) l_i++; else break;
			}
			return l_i >= l_n;
		case 5/* object_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			l_i = 0;
			while (l_i < l_n) {
				if (gml_node_is_simple(l_w[l_i])) l_i++; else break;
			}
			return l_i >= l_n;
		case 8/* self */: return true;
		case 9/* other */: return true;
		case 39/* field */: return gml_node_is_simple(l__g.x);
		case 54/* index */: return gml_node_is_simple(l__g.x) && gml_node_is_simple(l__g.id);
		default: return false;
	}
}

function gml_node_is_statement(l_q) {
	switch (l_q.__enumIndex__/* gml_node */) {
		case 17/* call */: return true;
		case 29/* set_op */: return true;
		case 89/* var_decl */: return true;
		case 25/* prefix */: return true;
		case 26/* postfix */: return true;
		default: return false;
	}
}

function gml_node_is_in_block(l_q, l_p) {
	if (l_p == undefined) return false;
	var l__g = l_p;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 90/* block */: return true;
		case 91/* if_then */: return l_q != l__g.cond;
		case 96/* while */: return l_q != l__g.cond;
		case 98/* do_while */: return l_q != l__g.cond;
		case 97/* do_until */: return l_q != l__g.cond;
		case 99/* repeat */: return l_q != l__g.times;
		case 100/* for */: return l_q != l__g.cond;
		case 93/* switch */: return l_q != l__g.expr;
		default: return false;
	}
}

function gml_node_equals_list(l_a, l_b) {
	var l_n = array_length(l_a);
	if (array_length(l_b) != l_n) return false;
	var l_i = 0;
	while (l_i < l_n) {
		if (gml_node_equals(l_a[l_i], l_b[l_i])) l_i++; else return false;
	}
	return true;
}

function gml_node_equals(l_a, l_b) {
	if (l_a.__enumIndex__ != l_b.__enumIndex__) return false;
	var l_i, l_n;
	var l__g = l_a;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 8/* self */: return true;
		case 95/* fork */: return true;
		case 9/* other */: return true;
		case 106/* continue */: return true;
		case 0/* undefined */: return true;
		case 10/* global_ref */: return true;
		case 105/* break */: return true;
		case 16/* arg_count */: return true;
		case 104/* exit */: return true;
		case 107/* debugger */: return true;
		case 3/* enum_ctr */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 3/* enum_ctr */) {
				var l_b_ctr = l__g1.ctr;
				return l__g.e == l__g1.e && l__g.ctr == l_b_ctr;
			} else return false;
		case 11/* script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 11/* script */) return l__g.ref == l__g1.ref; else return false;
		case 94/* wait */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 94/* wait */) return gml_node_equals(l__g.time, l__g1.time); else return false;
		case 31/* from_bool */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 31/* from_bool */) return gml_node_equals(l__g.v, l__g1.v); else return false;
		case 2/* cstring */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 2/* cstring */) return l__g.value == l__g1.value; else return false;
		case 25/* prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 25/* prefix */) {
				var l_b_inc = l__g1.inc;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.inc == l_b_inc;
			} else return false;
		case 22/* call_field */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 22/* call_field */) {
				var l_b_args = l__g1.args;
				var l_b_prop = l__g1.prop;
				return gml_node_equals(l__g.inst, l__g1.inst) && l__g.prop == l_b_prop && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 7/* ident */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 7/* ident */) return l__g.id == l__g1.id; else return false;
		case 67/* raw_id_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 67/* raw_id_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 23/* call_func */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 23/* call_func */) {
				var l_b_args = l__g1.args;
				return l__g.s == l__g1.s && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 24/* call_func_at */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 24/* call_func_at */) {
				var l_b_args = l__g1.args;
				var l_b_s = l__g1.s;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.s == l_b_s && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 76/* ds_list_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 76/* ds_list_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 26/* postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 26/* postfix */) {
				var l_b_inc = l__g1.inc;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.inc == l_b_inc;
			} else return false;
		case 27/* un_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 27/* un_op */) {
				var l_b_o = l__g1.o;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.o == l_b_o;
			} else return false;
		case 28/* bin_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 28/* bin_op */) {
				var l_b_b = l__g1.b;
				var l_b_a = l__g1.a;
				return l__g.o == l__g1.o && gml_node_equals(l__g.a, l_b_a) && gml_node_equals(l__g.b, l_b_b);
			} else return false;
		case 29/* set_op */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 29/* set_op */) {
				var l_b_b = l__g1.b;
				var l_b_a = l__g1.a;
				return l__g.o == l__g1.o && gml_node_equals(l__g.a, l_b_a) && gml_node_equals(l__g.b, l_b_b);
			} else return false;
		case 91/* if_then */:
			var l_a_not = l__g.i_not;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 91/* if_then */) {
				var l_b_not = l__g1.i_not;
				var l_b_then = l__g1.i_then;
				if (gml_node_equals(l__g.cond, l__g1.cond) && gml_node_equals(l__g.i_then, l_b_then)) {
					if (l_a_not != undefined) return l_b_not != undefined && gml_node_equals(l_a_not, l_b_not); else return l_b_not == undefined;
				} else return false;
			} else return false;
		case 96/* while */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 96/* while */) {
				var l_b_node = l__g1.node;
				return gml_node_equals(l__g.cond, l__g1.cond) && gml_node_equals(l__g.node, l_b_node);
			} else return false;
		case 32/* in */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 32/* in */) {
				var l_b_not = l__g1.i_not;
				var l_b_val = l__g1.val;
				return gml_node_equals(l__g.fd, l__g1.fd) && gml_node_equals(l__g.val, l_b_val) && l__g.i_not == l_b_not;
			} else return false;
		case 33/* local */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 33/* local */) return l__g.id == l__g1.id; else return false;
		case 34/* local_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 34/* local_set */) {
				var l_b_val = l__g1.val;
				return l__g.id == l__g1.id && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 35/* local_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 35/* local_aop */) {
				var l_b_val = l__g1.val;
				var l_b_op = l__g1.op;
				return l__g.id == l__g1.id && l__g.op == l_b_op && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 36/* global */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 36/* global */) return l__g.id == l__g1.id; else return false;
		case 37/* global_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 37/* global_set */) {
				var l_b_val = l__g1.val;
				return l__g.id == l__g1.id && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 38/* global_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 38/* global_aop */) {
				var l_b_val = l__g1.val;
				var l_b_op = l__g1.op;
				return l__g.id == l__g1.id && l__g.op == l_b_op && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 39/* field */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 39/* field */) {
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd;
			} else return false;
		case 21/* call_script_with_array */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 21/* call_script_with_array */) {
				var l_b_array = l__g1.array;
				return gml_node_equals(l__g.index, l__g1.index) && gml_node_equals(l__g.array, l_b_array);
			} else return false;
		case 20/* call_script_id */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 20/* call_script_id */) {
				var l_b_args = l__g1.args;
				return gml_node_equals(l__g.index, l__g1.index) && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 19/* call_script_at */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 19/* call_script_at */) {
				var l_b_args = l__g1.args;
				var l_b_script = l__g1.script;
				return gml_node_equals(l__g.inst, l__g1.inst) && l__g.script == l_b_script && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 6/* ensure_array */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 6/* ensure_array */) return gml_node_equals(l__g.expr, l__g1.expr); else return false;
		case 18/* call_script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 18/* call_script */) {
				var l_b_args = l__g1.args;
				return l__g.name == l__g1.name && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 17/* call */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 17/* call */) {
				var l_b_args = l__g1.args;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals_list(l__g.args, l_b_args);
			} else return false;
		case 49/* env1d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 49/* env1d_set */) {
				var l_b_val = l__g1.val;
				var l_b_k = l__g1.k;
				return l__g.id == l__g1.id && gml_node_equals(l__g.k, l_b_k) && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 1/* number */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 1/* number */) {
				var l_b_src = l__g1.src;
				return l__g.value == l__g1.value && l__g.src == l_b_src;
			} else return false;
		case 48/* env1d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 48/* env1d */) {
				var l_b_k = l__g1.k;
				return l__g.id == l__g1.id && gml_node_equals(l__g.k, l_b_k);
			} else return false;
		case 50/* env1d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 50/* env1d_aop */) {
				var l_b_val = l__g1.val;
				var l_b_op = l__g1.op;
				var l_b_k = l__g1.k;
				return l__g.id == l__g1.id && gml_node_equals(l__g.k, l_b_k) && l__g.op == l_b_op && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 51/* alarm */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 51/* alarm */) {
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i);
			} else return false;
		case 52/* alarm_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 52/* alarm_set */) {
				var l_b_v = l__g1.v;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 53/* alarm_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 53/* alarm_aop */) {
				var l_b_v = l__g1.v;
				var l_b_op = l__g1.op;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.op == l_b_op && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 54/* index */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 54/* index */) {
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id);
			} else return false;
		case 55/* index_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 55/* index_set */) {
				var l_b_v = l__g1.v;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 56/* index_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 56/* index_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 57/* index_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 57/* index_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 58/* index_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 58/* index_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 59/* index2d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 59/* index2d */) {
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2);
			} else return false;
		case 60/* index2d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 60/* index2d_set */) {
				var l_b_v = l__g1.v;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 61/* index2d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 61/* index2d_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 62/* index2d_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 62/* index2d_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 63/* index2d_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 63/* index2d_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 64/* raw_id */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 64/* raw_id */) {
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id);
			} else return false;
		case 65/* raw_id_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 65/* raw_id_set */) {
				var l_b_v = l__g1.v;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 66/* raw_id_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 66/* raw_id_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.id, l_b_id) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 47/* env_fd_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 47/* env_fd_aop */) {
				var l_b_v = l__g1.v;
				var l_b_op = l__g1.op;
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd && l__g.op == l_b_op && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 68/* raw_id_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 68/* raw_id_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 69/* raw_id2d */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 69/* raw_id2d */) {
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2);
			} else return false;
		case 70/* raw_id2d_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 70/* raw_id2d_set */) {
				var l_b_v = l__g1.v;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 71/* raw_id2d_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 71/* raw_id2d_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 72/* raw_id2d_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 72/* raw_id2d_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 73/* raw_id2d_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 73/* raw_id2d_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 74/* ds_list */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 74/* ds_list */) {
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id);
			} else return false;
		case 75/* ds_list_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 75/* ds_list_set */) {
				var l_b_v = l__g1.v;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 46/* env_fd_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 46/* env_fd_set */) {
				var l_b_v = l__g1.v;
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 15/* arg_index */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 15/* arg_index */) return gml_node_equals(l__g.id, l__g1.id); else return false;
		case 77/* ds_list_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 77/* ds_list_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 78/* ds_list_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 78/* ds_list_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 79/* ds_map */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 79/* ds_map */) {
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id);
			} else return false;
		case 80/* ds_map_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 80/* ds_map_set */) {
				var l_b_v = l__g1.v;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 81/* ds_map_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 81/* ds_map_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_id = l__g1.id;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.id, l_b_id) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 82/* ds_map_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 82/* ds_map_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 83/* ds_map_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 83/* ds_map_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && l__g.inc == l_b_inc;
			} else return false;
		case 84/* ds_grid */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 84/* ds_grid */) {
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2);
			} else return false;
		case 85/* ds_grid_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 85/* ds_grid_set */) {
				var l_b_v = l__g1.v;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 86/* ds_grid_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 86/* ds_grid_aop */) {
				var l_b_v = l__g1.v;
				var l_b_o = l__g1.o;
				var l_b_i2 = l__g1.i2;
				var l_b_i1 = l__g1.i1;
				return gml_node_equals(l__g.lx, l__g1.lx) && gml_node_equals(l__g.i1, l_b_i1) && gml_node_equals(l__g.i2, l_b_i2) && l__g.o == l_b_o && gml_node_equals(l__g.v, l_b_v);
			} else return false;
		case 87/* ds_grid_prefix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 87/* ds_grid_prefix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 88/* ds_grid_postfix */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 88/* ds_grid_postfix */) {
				var l_b_inc = l__g1.inc;
				var l_b_k = l__g1.k;
				var l_b_i = l__g1.i;
				return gml_node_equals(l__g.x, l__g1.x) && gml_node_equals(l__g.i, l_b_i) && gml_node_equals(l__g.k, l_b_k) && l__g.inc == l_b_inc;
			} else return false;
		case 89/* var_decl */:
			var l_a_value = l__g.value;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 89/* var_decl */) {
				var l_b_value = l__g1.value;
				if (l__g.name == l__g1.name) {
					if (l_a_value != undefined) return l_b_value != undefined && gml_node_equals(l_a_value, l_b_value); else return l_b_value == undefined;
				} else return false;
			} else return false;
		case 90/* block */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 90/* block */) return gml_node_equals_list(l__g.nodes, l__g1.nodes); else return false;
		case 92/* ternary */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 92/* ternary */) {
				var l_b_not = l__g1.i_not;
				var l_b_then = l__g1.i_then;
				return gml_node_equals(l__g.cond, l__g1.cond) && gml_node_equals(l__g.i_then, l_b_then) && gml_node_equals(l__g.i_not, l_b_not);
			} else return false;
		case 30/* to_bool */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 30/* to_bool */) return gml_node_equals(l__g.v, l__g1.v); else return false;
		case 45/* env_fd */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 45/* env_fd */) {
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd;
			} else return false;
		case 44/* env_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 44/* env_aop */) {
				var l_b_val = l__g1.val;
				var l_b_op = l__g1.op;
				return l__g.id == l__g1.id && l__g.op == l_b_op && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 113/* comment_block_pre */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 113/* comment_block_pre */) {
				var l_b_pl = l__g1.pl;
				var l_b_x = l__g1.x;
				return l__g.s == l__g1.s && gml_node_equals(l__g.x, l_b_x) && l__g.pl == l_b_pl;
			} else return false;
		case 97/* do_until */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 97/* do_until */) {
				var l_b_cond = l__g1.cond;
				return gml_node_equals(l__g.node, l__g1.node) && gml_node_equals(l__g.cond, l_b_cond);
			} else return false;
		case 98/* do_while */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 98/* do_while */) {
				var l_b_cond = l__g1.cond;
				return gml_node_equals(l__g.node, l__g1.node) && gml_node_equals(l__g.cond, l_b_cond);
			} else return false;
		case 99/* repeat */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 99/* repeat */) {
				var l_b_node = l__g1.node;
				return gml_node_equals(l__g.times, l__g1.times) && gml_node_equals(l__g.node, l_b_node);
			} else return false;
		case 100/* for */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 100/* for */) {
				var l_b_loop = l__g1.loop;
				var l_b_post = l__g1.post;
				var l_b_cond = l__g1.cond;
				return gml_node_equals(l__g.pre, l__g1.pre) && gml_node_equals(l__g.cond, l_b_cond) && gml_node_equals(l__g.post, l_b_post) && gml_node_equals(l__g.loop, l_b_loop);
			} else return false;
		case 101/* with */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 101/* with */) {
				var l_b_node = l__g1.node;
				return gml_node_equals(l__g.ctx, l__g1.ctx) && gml_node_equals(l__g.node, l_b_node);
			} else return false;
		case 102/* once */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 102/* once */) return gml_node_equals(l__g.node, l__g1.node); else return false;
		case 103/* return */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 103/* return */) return gml_node_equals(l__g.v, l__g1.v); else return false;
		case 43/* env_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 43/* env_set */) {
				var l_b_val = l__g1.val;
				return l__g.id == l__g1.id && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 14/* arg_const */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 14/* arg_const */) return l__g.id == l__g1.id; else return false;
		case 42/* env */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 42/* env */) return l__g.id == l__g1.id; else return false;
		case 41/* field_aop */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 41/* field_aop */) {
				var l_b_val = l__g1.val;
				var l_b_op = l__g1.op;
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd && l__g.op == l_b_op && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 108/* comment_line */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 108/* comment_line */) return l__g.s == l__g1.s; else return false;
		case 109/* comment_line_pre */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 109/* comment_line_pre */) {
				var l_b_x = l__g1.x;
				return l__g.s == l__g1.s && gml_node_equals(l__g.x, l_b_x);
			} else return false;
		case 110/* comment_line_post */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 110/* comment_line_post */) {
				var l_b_s = l__g1.s;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.s == l_b_s;
			} else return false;
		case 111/* comment_line_sep */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 111/* comment_line_sep */) {
				var l_b_x = l__g1.x;
				return l__g.s == l__g1.s && gml_node_equals(l__g.x, l_b_x);
			} else return false;
		case 112/* comment_block */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 112/* comment_block */) return l__g.s == l__g1.s; else return false;
		case 114/* comment_block_post */:
			var l__g = l_b;
			if (l__g.__enumIndex__/* gml_node */ == 114/* comment_block_post */) {
				var l_b_pl = l__g.pl;
				var l_b_s = l__g.s;
				return gml_node_equals(l__g.x, l__g.x) && l__g.s == l_b_s && l__g.pl == l_b_pl;
			} else return false;
		case 40/* field_set */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 40/* field_set */) {
				var l_b_val = l__g1.val;
				var l_b_fd = l__g1.fd;
				return gml_node_equals(l__g.x, l__g1.x) && l__g.fd == l_b_fd && gml_node_equals(l__g.val, l_b_val);
			} else return false;
		case 13/* const */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 13/* const */) return l__g.id == l__g1.id; else return false;
		case 4/* array_decl */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 4/* array_decl */) return gml_node_equals_list(l__g.values, l__g1.values); else return false;
		case 12/* native_script */:
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 12/* native_script */) return l__g.name == l__g1.name; else return false;
		case 5/* object_decl */:
			var l_m1 = l__g.values;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 5/* object_decl */) {
				var l_m2 = l__g1.values;
				var l_k2 = l__g1.keys;
				l_n = array_length(l_m1);
				if (array_length(l_m2) == l_n) {
					l_i = 0;
					while (l_i < l_n) {
						if (l__g.keys[l_i] == l_k2[l_i] && gml_node_equals(l_m1[l_i], l_m2[l_i])) l_i++; else break;
					}
					return l_i >= l_n;
				} else return false;
			} else return false;
		case 93/* switch */:
			var l_o1 = l__g.def;
			var l_m1 = l__g.list;
			var l__g1 = l_b;
			if (l__g1.__enumIndex__/* gml_node */ == 93/* switch */) {
				var l_o2 = l__g1.def;
				var l_m2 = l__g1.list;
				if (gml_node_equals(l__g.expr, l__g1.expr) && (l_o1 != undefined && l_o2 != undefined && gml_node_equals(l_o1, l_o2) || l_o1 == undefined && l_o2 == undefined)) {
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

function gml_node_clone_opt(l_q) {
	if (l_q != undefined) return gml_node_clone(l_q); else return undefined;
}

function gml_node_clone(l_q) {
	var l_xw, l_i, l_n, l_fi;
	var l_d = gml_std_haxe_enum_tools_getParameter(l_q, 0);
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: return gml_node_undefined(l_d);
		case 10/* global_ref */: return gml_node_global_ref(l_d);
		case 5/* object_decl */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.values);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_object_decl(l_d, gml_std_gml_internal_ArrayImpl_slice(l__g.keys, 0), l_xw);
		case 6/* ensure_array */: return gml_node_ensure_array(l_d, gml_node_clone(l__g.expr));
		case 7/* ident */: return gml_node_ident(l_d, l__g.id);
		case 8/* self */: return gml_node_self(l_d);
		case 2/* cstring */: return gml_node_cstring(l_d, l__g.value);
		case 31/* from_bool */: return gml_node_from_bool(l_d, gml_node_clone(l__g.v));
		case 11/* script */: return gml_node_script(l_d, l__g.ref);
		case 3/* enum_ctr */: return gml_node_enum_ctr(l_d, l__g.e, l__g.ctr);
		case 14/* arg_const */: return gml_node_arg_const(l_d, l__g.id);
		case 15/* arg_index */: return gml_node_arg_index(l_d, gml_node_clone(l__g.id));
		case 16/* arg_count */: return gml_node_arg_count(l_d);
		case 17/* call */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call(l_d, gml_node_clone(l__g.x), l_xw);
		case 18/* call_script */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script(l_d, l__g.name, l_xw);
		case 19/* call_script_at */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script_at(l_d, gml_node_clone(l__g.inst), l__g.script, l_xw);
		case 20/* call_script_id */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_script_id(l_d, gml_node_clone(l__g.index), l_xw);
		case 21/* call_script_with_array */: return gml_node_call_script_with_array(l_d, gml_node_clone(l__g.index), gml_node_clone(l__g.array));
		case 22/* call_field */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_field(l_d, gml_node_clone(l__g.inst), l__g.prop, l_xw);
		case 23/* call_func */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_func(l_d, l__g.s, l_xw);
		case 24/* call_func_at */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.args);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_call_func_at(l_d, gml_node_clone(l__g.x), l__g.s, l_xw);
		case 25/* prefix */: return gml_node_prefix(l_d, gml_node_clone(l__g.x), l__g.inc);
		case 26/* postfix */: return gml_node_postfix(l_d, gml_node_clone(l__g.x), l__g.inc);
		case 27/* un_op */: return gml_node_un_op(l_d, gml_node_clone(l__g.x), l__g.o);
		case 28/* bin_op */: return gml_node_bin_op(l_d, l__g.o, gml_node_clone(l__g.a), gml_node_clone(l__g.b));
		case 29/* set_op */: return gml_node_set_op(l_d, l__g.o, gml_node_clone(l__g.a), gml_node_clone(l__g.b));
		case 9/* other */: return gml_node_other(l_d);
		case 94/* wait */: return gml_node_wait(l_d, gml_node_clone(l__g.time));
		case 32/* in */: return gml_node_in(l_d, gml_node_clone(l__g.fd), gml_node_clone(l__g.val), l__g.i_not);
		case 33/* local */: return gml_node_local(l_d, l__g.id);
		case 34/* local_set */: return gml_node_local_set(l_d, l__g.id, gml_node_clone(l__g.val));
		case 35/* local_aop */: return gml_node_local_aop(l_d, l__g.id, l__g.op, gml_node_clone(l__g.val));
		case 36/* global */: return gml_node_global(l_d, l__g.id);
		case 37/* global_set */: return gml_node_global_set(l_d, l__g.id, gml_node_clone(l__g.val));
		case 38/* global_aop */: return gml_node_global_aop(l_d, l__g.id, l__g.op, gml_node_clone(l__g.val));
		case 39/* field */: return gml_node_field(l_d, gml_node_clone(l__g.x), l__g.fd);
		case 41/* field_aop */: return gml_node_field_aop(l_d, gml_node_clone(l__g.x), l__g.fd, l__g.op, gml_node_clone(l__g.val));
		case 42/* env */: return gml_node_env(l_d, l__g.id);
		case 43/* env_set */: return gml_node_env_set(l_d, l__g.id, gml_node_clone(l__g.val));
		case 44/* env_aop */: return gml_node_env_aop(l_d, l__g.id, l__g.op, gml_node_clone(l__g.val));
		case 45/* env_fd */: return gml_node_env_fd(l_d, gml_node_clone(l__g.x), l__g.fd);
		case 46/* env_fd_set */: return gml_node_env_fd_set(l_d, gml_node_clone(l__g.x), l__g.fd, gml_node_clone(l__g.v));
		case 47/* env_fd_aop */: return gml_node_env_fd_aop(l_d, gml_node_clone(l__g.x), l__g.fd, l__g.op, gml_node_clone(l__g.v));
		case 48/* env1d */: return gml_node_env1d(l_d, l__g.id, gml_node_clone(l__g.k));
		case 49/* env1d_set */: return gml_node_env1d_set(l_d, l__g.id, gml_node_clone(l__g.k), gml_node_clone(l__g.val));
		case 50/* env1d_aop */: return gml_node_env1d_aop(l_d, l__g.id, gml_node_clone(l__g.k), l__g.op, gml_node_clone(l__g.val));
		case 51/* alarm */: return gml_node_alarm(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i));
		case 52/* alarm_set */: return gml_node_alarm_set(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.v));
		case 53/* alarm_aop */: return gml_node_alarm_aop(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.op, gml_node_clone(l__g.v));
		case 54/* index */: return gml_node_index(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id));
		case 55/* index_set */: return gml_node_index_set(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id), gml_node_clone(l__g.v));
		case 56/* index_aop */: return gml_node_index_aop(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id), l__g.o, gml_node_clone(l__g.v));
		case 57/* index_prefix */: return gml_node_index_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 58/* index_postfix */: return gml_node_index_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 59/* index2d */: return gml_node_index2d(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2));
		case 60/* index2d_set */: return gml_node_index2d_set(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), gml_node_clone(l__g.v));
		case 61/* index2d_aop */: return gml_node_index2d_aop(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), l__g.o, gml_node_clone(l__g.v));
		case 62/* index2d_prefix */: return gml_node_index2d_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 63/* index2d_postfix */: return gml_node_index2d_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 64/* raw_id */: return gml_node_raw_id(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id));
		case 65/* raw_id_set */: return gml_node_raw_id_set(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id), gml_node_clone(l__g.v));
		case 66/* raw_id_aop */: return gml_node_raw_id_aop(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.id), l__g.o, gml_node_clone(l__g.v));
		case 67/* raw_id_prefix */: return gml_node_raw_id_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 68/* raw_id_postfix */: return gml_node_raw_id_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 69/* raw_id2d */: return gml_node_raw_id2d(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2));
		case 70/* raw_id2d_set */: return gml_node_raw_id2d_set(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), gml_node_clone(l__g.v));
		case 71/* raw_id2d_aop */: return gml_node_raw_id2d_aop(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), l__g.o, gml_node_clone(l__g.v));
		case 72/* raw_id2d_prefix */: return gml_node_raw_id2d_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 73/* raw_id2d_postfix */: return gml_node_raw_id2d_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 74/* ds_list */: return gml_node_ds_list(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id));
		case 75/* ds_list_set */: return gml_node_ds_list_set(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id), gml_node_clone(l__g.v));
		case 76/* ds_list_aop */: return gml_node_ds_list_aop(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id), l__g.o, gml_node_clone(l__g.v));
		case 77/* ds_list_prefix */: return gml_node_ds_list_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 78/* ds_list_postfix */: return gml_node_ds_list_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 79/* ds_map */: return gml_node_ds_map(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id));
		case 80/* ds_map_set */: return gml_node_ds_map_set(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id), gml_node_clone(l__g.v));
		case 81/* ds_map_aop */: return gml_node_ds_map_aop(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.id), l__g.o, gml_node_clone(l__g.v));
		case 82/* ds_map_prefix */: return gml_node_ds_map_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 83/* ds_map_postfix */: return gml_node_ds_map_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), l__g.inc);
		case 84/* ds_grid */: return gml_node_ds_grid(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2));
		case 85/* ds_grid_set */: return gml_node_ds_grid_set(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), gml_node_clone(l__g.v));
		case 86/* ds_grid_aop */: return gml_node_ds_grid_aop(l_d, gml_node_clone(l__g.lx), gml_node_clone(l__g.i1), gml_node_clone(l__g.i2), l__g.o, gml_node_clone(l__g.v));
		case 87/* ds_grid_prefix */: return gml_node_ds_grid_prefix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 88/* ds_grid_postfix */: return gml_node_ds_grid_postfix(l_d, gml_node_clone(l__g.x), gml_node_clone(l__g.i), gml_node_clone(l__g.k), l__g.inc);
		case 89/* var_decl */: return gml_node_var_decl(l_d, l__g.name, gml_node_clone_opt(l__g.value));
		case 90/* block */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.nodes);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_block(l_d, l_xw);
		case 91/* if_then */: return gml_node_if_then(l_d, gml_node_clone(l__g.cond), gml_node_clone(l__g.i_then), gml_node_clone_opt(l__g.i_not));
		case 92/* ternary */: return gml_node_ternary(l_d, gml_node_clone(l__g.cond), gml_node_clone(l__g.i_then), gml_node_clone(l__g.i_not));
		case 30/* to_bool */: return gml_node_to_bool(l_d, gml_node_clone(l__g.v));
		case 114/* comment_block_post */: return gml_node_comment_block_post(l_d, gml_node_clone(l__g.x), l__g.s, l__g.pl);
		case 95/* fork */: return gml_node_fork(l_d);
		case 96/* while */: return gml_node_while(l_d, gml_node_clone(l__g.cond), gml_node_clone(l__g.node));
		case 97/* do_until */: return gml_node_do_until(l_d, gml_node_clone(l__g.node), gml_node_clone(l__g.cond));
		case 98/* do_while */: return gml_node_do_while(l_d, gml_node_clone(l__g.node), gml_node_clone(l__g.cond));
		case 99/* repeat */: return gml_node_repeat(l_d, gml_node_clone(l__g.times), gml_node_clone(l__g.node));
		case 100/* for */: return gml_node_for(l_d, gml_node_clone(l__g.pre), gml_node_clone(l__g.cond), gml_node_clone(l__g.post), gml_node_clone(l__g.loop));
		case 101/* with */: return gml_node_with(l_d, gml_node_clone(l__g.ctx), gml_node_clone(l__g.node));
		case 102/* once */: return gml_node_once(l_d, gml_node_clone(l__g.node));
		case 103/* return */: return gml_node_return(l_d, gml_node_clone(l__g.v));
		case 104/* exit */: return gml_node_exit(l_d);
		case 105/* break */: return gml_node_break(l_d);
		case 106/* continue */: return gml_node_continue(l_d);
		case 107/* debugger */: return gml_node_debugger(l_d);
		case 108/* comment_line */: return gml_node_comment_line(l_d, l__g.s);
		case 109/* comment_line_pre */: return gml_node_comment_line_pre(l_d, l__g.s, gml_node_clone(l__g.x));
		case 110/* comment_line_post */: return gml_node_comment_line_post(l_d, gml_node_clone(l__g.x), l__g.s);
		case 111/* comment_line_sep */: return gml_node_comment_line_sep(l_d, l__g.s, gml_node_clone(l__g.x));
		case 112/* comment_block */: return gml_node_comment_block(l_d, l__g.s);
		case 113/* comment_block_pre */: return gml_node_comment_block_pre(l_d, l__g.s, gml_node_clone(l__g.x), l__g.pl);
		case 40/* field_set */: return gml_node_field_set(l_d, gml_node_clone(l__g.x), l__g.fd, gml_node_clone(l__g.val));
		case 13/* const */: return gml_node_const(l_d, l__g.id);
		case 4/* array_decl */:
			l_xw = gml_std_gml_internal_ArrayImpl_copy(l__g.values);
			l_fi = array_length(l_xw);
			while (--l_fi >= 0) {
				l_xw[@l_fi] = gml_node_clone(l_xw[l_fi]);
			}
			return gml_node_array_decl(l_d, l_xw);
		case 1/* number */: return gml_node_number(l_d, l__g.value, l__g.src);
		case 12/* native_script */: return gml_node_native_script(l__g.d, l__g.name, l__g.id);
		case 93/* switch */:
			var l_m = l__g.list;
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
			return gml_node_switch(l__g.d, gml_node_clone(l__g.expr), l_m, gml_node_clone_opt(l__g.def));
	}
}

function gml_node_seek_all_out(l_q, l_st, l_c, l_si) {
	var l_x, l_w, l_i, l_n;
	var l_par = l_st[|l_si];
	if (l_par == undefined) return false;
	var l__g = l_par;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 90/* block */:
			l_w = l__g.nodes;
			l_i = array_length(l_w);
			while (--l_i >= 0) {
				if (l_w[l_i] == l_q) break;
			}
			while (--l_i >= 0) {
				if (l_c(l_w[l_i], undefined)) return true;
			}
			break;
		case 91/* if_then */:
			var l_c1 = l__g.cond;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 96/* while */:
			var l_c1 = l__g.cond;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 98/* do_while */:
			var l_c1 = l__g.node;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 97/* do_until */:
			var l_c1 = l__g.node;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 99/* repeat */:
			var l_c1 = l__g.times;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 100/* for */:
			var l_c1 = l__g.pre;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 93/* switch */:
			var l_c1 = l__g.expr;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 101/* with */:
			var l_c1 = l__g.ctx;
			if (l_c1 != l_q && l_c(l_c1, undefined)) return true;
			break;
		case 110/* comment_line_post */: break;
		case 109/* comment_line_pre */: break;
		case 111/* comment_line_sep */: break;
		case 113/* comment_block_pre */: break;
		case 114/* comment_block_post */: break;
		default: throw gml_std_haxe_Exception_thrown("Can't seekAllOut over " + gml_std_haxe_enum_tools_getParameter(l_par, 0).to_string() + " " + gml_std_Type_enumConstructor(l_par));
	}
	return gml_node_seek_all_out(l_par, l_st, l_c, l_si + 1);
}

function gml_node_seek_all(l_q, l_st, l_c) {
	if (l_st != undefined) ds_list_insert(l_st, 0, l_q);
	var l_r, l_x, l_w, l_i, l_n;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 114/* comment_block_post */: l_r = l_c(l__g.x, undefined); break;
		case 26/* postfix */: l_r = l_c(l__g.x, undefined); break;
		case 94/* wait */: l_r = l_c(l__g.time, undefined); break;
		case 37/* global_set */: l_r = l_c(l__g.val, undefined); break;
		case 109/* comment_line_pre */: l_r = l_c(l__g.x, undefined); break;
		case 103/* return */: l_r = l_c(l__g.v, undefined); break;
		case 44/* env_aop */: l_r = l_c(l__g.val, undefined); break;
		case 31/* from_bool */: l_r = l_c(l__g.v, undefined); break;
		case 34/* local_set */: l_r = l_c(l__g.val, undefined); break;
		case 15/* arg_index */: l_r = l_c(l__g.id, undefined); break;
		case 110/* comment_line_post */: l_r = l_c(l__g.x, undefined); break;
		case 30/* to_bool */: l_r = l_c(l__g.v, undefined); break;
		case 113/* comment_block_pre */: l_r = l_c(l__g.x, undefined); break;
		case 38/* global_aop */: l_r = l_c(l__g.val, undefined); break;
		case 35/* local_aop */: l_r = l_c(l__g.val, undefined); break;
		case 6/* ensure_array */: l_r = l_c(l__g.expr, undefined); break;
		case 25/* prefix */: l_r = l_c(l__g.x, undefined); break;
		case 102/* once */: l_r = l_c(l__g.node, undefined); break;
		case 43/* env_set */: l_r = l_c(l__g.val, undefined); break;
		case 111/* comment_line_sep */: l_r = l_c(l__g.x, undefined); break;
		case 3/* enum_ctr */: l_r = false; break;
		case 11/* script */: l_r = false; break;
		case 2/* cstring */: l_r = false; break;
		case 95/* fork */: l_r = false; break;
		case 33/* local */: l_r = false; break;
		case 8/* self */: l_r = false; break;
		case 108/* comment_line */: l_r = false; break;
		case 107/* debugger */: l_r = false; break;
		case 9/* other */: l_r = false; break;
		case 0/* undefined */: l_r = false; break;
		case 16/* arg_count */: l_r = false; break;
		case 104/* exit */: l_r = false; break;
		case 106/* continue */: l_r = false; break;
		case 36/* global */: l_r = false; break;
		case 112/* comment_block */: l_r = false; break;
		case 12/* native_script */: l_r = false; break;
		case 105/* break */: l_r = false; break;
		case 7/* ident */: l_r = false; break;
		case 1/* number */: l_r = false; break;
		case 14/* arg_const */: l_r = false; break;
		case 42/* env */: l_r = false; break;
		case 13/* const */: l_r = false; break;
		case 10/* global_ref */: l_r = false; break;
		case 28/* bin_op */:
			switch (l__g.o) {
				case 80:
					var l_b = l__g.b;
					l_r = l_c(l__g.a, undefined) && l_c(l_b, undefined);
					break;
				case 96: l_r = l_c(l__g.a, undefined); break;
				default:
					var l_l_b = l__g.b;
					l_r = l_c(l__g.a, undefined) || l_c(l_l_b, undefined);
			}
			break;
		case 5/* object_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 4/* array_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 89/* var_decl */:
			var l_v = l__g.value;
			l_r = l_v != undefined && l_c(l_v, undefined);
			break;
		case 27/* un_op */: l_r = l_c(l__g.x, undefined); break;
		case 90/* block */:
			l_w = l__g.nodes;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 20/* call_script_id */:
			var l_m = l__g.args;
			if (l_c(l__g.index, undefined)) {
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
			var l_m = l__g.args;
			if (l_c(l__g.x, undefined)) {
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
			var l_m = l__g.args;
			if (l_c(l__g.inst, undefined)) {
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
			var l_m = l__g.args;
			if (l_c(l__g.inst, undefined)) {
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
			var l_m = l__g.args;
			if (l_c(l__g.x, undefined)) {
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
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 18/* call_script */:
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], undefined)) break;
			}
			l_r = l_i < l_n;
			break;
		case 21/* call_script_with_array */:
			var l_y = l__g.array;
			l_r = l_c(l__g.index, undefined) || l_c(l_y, undefined);
			break;
		case 91/* if_then */:
			var l_b = l__g.i_not;
			var l_a = l__g.i_then;
			l_r = l_c(l__g.cond, undefined) || l_b != undefined && l_c(l_a, undefined) && l_c(l_b, undefined);
			break;
		case 92/* ternary */:
			var l_b = l__g.i_not;
			var l_a = l__g.i_then;
			l_r = l_c(l__g.cond, undefined) || l_c(l_a, undefined) && l_c(l_b, undefined);
			break;
		case 100/* for */:
			var l_c1 = l__g.cond;
			l_r = l_c(l__g.pre, undefined) || l_c(l_c1, undefined);
			break;
		case 96/* while */: l_r = l_c(l__g.cond, undefined); break;
		case 101/* with */: l_r = l_c(l__g.ctx, undefined); break;
		case 98/* do_while */: l_r = l_c(l__g.node, undefined); break;
		case 97/* do_until */: l_r = l_c(l__g.node, undefined); break;
		case 99/* repeat */: l_r = l_c(l__g.times, undefined); break;
		case 93/* switch */:
			var l__d = l__g.def;
			var l__cc = l__g.list;
			if (l_c(l__g.expr, undefined)) {
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
		case 29/* set_op */:
			var l_l_b = l__g.b;
			l_r = l_c(l__g.a, undefined) || l_c(l_l_b, undefined);
			break;
		case 32/* in */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.fd, undefined) || l_c(l_l_val, undefined);
			break;
		case 48/* env1d */: l_r = l_c(l__g.k, undefined); break;
		case 49/* env1d_set */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.k, undefined) || l_c(l_l_val, undefined);
			break;
		case 50/* env1d_aop */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.k, undefined) || l_c(l_l_val, undefined);
			break;
		case 51/* alarm */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 52/* alarm_set */:
			var l_l_v = l__g.v;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_v, undefined);
			break;
		case 53/* alarm_aop */:
			var l_l_v = l__g.v;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_v, undefined);
			break;
		case 54/* index */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined);
			break;
		case 55/* index_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 56/* index_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 57/* index_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 58/* index_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 59/* index2d */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 60/* index2d_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 61/* index2d_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 62/* index2d_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 63/* index2d_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 64/* raw_id */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined);
			break;
		case 65/* raw_id_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 66/* raw_id_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 67/* raw_id_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 68/* raw_id_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 69/* raw_id2d */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 70/* raw_id2d_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 71/* raw_id2d_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 72/* raw_id2d_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 73/* raw_id2d_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 39/* field */: l_r = l_c(l__g.x, undefined); break;
		case 40/* field_set */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_val, undefined);
			break;
		case 41/* field_aop */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_val, undefined);
			break;
		case 45/* env_fd */: l_r = l_c(l__g.x, undefined); break;
		case 46/* env_fd_set */:
			var l_l_v = l__g.v;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_v, undefined);
			break;
		case 47/* env_fd_aop */:
			var l_l_v = l__g.v;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_v, undefined);
			break;
		case 74/* ds_list */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined);
			break;
		case 75/* ds_list_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 76/* ds_list_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 77/* ds_list_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 78/* ds_list_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 79/* ds_map */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined);
			break;
		case 80/* ds_map_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 81/* ds_map_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_id, undefined) || l_c(l_l_v, undefined);
			break;
		case 82/* ds_map_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 83/* ds_map_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined);
			break;
		case 84/* ds_grid */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined);
			break;
		case 85/* ds_grid_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 86/* ds_grid_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, undefined) || l_c(l_l_i1, undefined) || l_c(l_l_i2, undefined) || l_c(l_l_v, undefined);
			break;
		case 87/* ds_grid_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
		case 88/* ds_grid_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, undefined) || l_c(l_l_i, undefined) || l_c(l_l_k, undefined);
			break;
	}
	if (l_st != undefined) ds_list_delete(l_st, 0);
	return false;
}

function gml_node_seek(l_q, l_st, l_c) {
	if (l_st != undefined) ds_list_insert(l_st, 0, l_q);
	var l_r, l_x, l_w, l_i, l_n, l_k, l_l;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: l_r = false; break;
		case 10/* global_ref */: l_r = false; break;
		case 5/* object_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 6/* ensure_array */: l_r = l_c(l__g.expr, l_st); break;
		case 7/* ident */: l_r = false; break;
		case 8/* self */: l_r = false; break;
		case 2/* cstring */: l_r = false; break;
		case 31/* from_bool */: l_r = l_c(l__g.v, l_st); break;
		case 11/* script */: l_r = false; break;
		case 3/* enum_ctr */: l_r = false; break;
		case 14/* arg_const */: l_r = false; break;
		case 15/* arg_index */: l_r = l_c(l__g.id, l_st); break;
		case 16/* arg_count */: l_r = false; break;
		case 17/* call */:
			var l_l_args = l__g.args;
			if (l_c(l__g.x, l_st)) {
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
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 19/* call_script_at */:
			var l_l_args = l__g.args;
			if (l_c(l__g.inst, l_st)) {
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
			var l_l_args = l__g.args;
			if (l_c(l__g.index, l_st)) {
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
			var l_l_array = l__g.array;
			l_r = l_c(l__g.index, l_st) || l_c(l_l_array, l_st);
			break;
		case 22/* call_field */:
			var l_l_args = l__g.args;
			if (l_c(l__g.inst, l_st)) {
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
			l_w = l__g.args;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 24/* call_func_at */:
			var l_l_args = l__g.args;
			if (l_c(l__g.x, l_st)) {
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
		case 25/* prefix */: l_r = l_c(l__g.x, l_st); break;
		case 26/* postfix */: l_r = l_c(l__g.x, l_st); break;
		case 27/* un_op */: l_r = l_c(l__g.x, l_st); break;
		case 28/* bin_op */:
			var l_l_b = l__g.b;
			l_r = l_c(l__g.a, l_st) || l_c(l_l_b, l_st);
			break;
		case 29/* set_op */:
			var l_l_b = l__g.b;
			l_r = l_c(l__g.a, l_st) || l_c(l_l_b, l_st);
			break;
		case 9/* other */: l_r = false; break;
		case 94/* wait */: l_r = l_c(l__g.time, l_st); break;
		case 32/* in */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.fd, l_st) || l_c(l_l_val, l_st);
			break;
		case 33/* local */: l_r = false; break;
		case 34/* local_set */: l_r = l_c(l__g.val, l_st); break;
		case 35/* local_aop */: l_r = l_c(l__g.val, l_st); break;
		case 36/* global */: l_r = false; break;
		case 37/* global_set */: l_r = l_c(l__g.val, l_st); break;
		case 38/* global_aop */: l_r = l_c(l__g.val, l_st); break;
		case 39/* field */: l_r = l_c(l__g.x, l_st); break;
		case 41/* field_aop */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_val, l_st);
			break;
		case 42/* env */: l_r = false; break;
		case 43/* env_set */: l_r = l_c(l__g.val, l_st); break;
		case 44/* env_aop */: l_r = l_c(l__g.val, l_st); break;
		case 45/* env_fd */: l_r = l_c(l__g.x, l_st); break;
		case 46/* env_fd_set */:
			var l_l_v = l__g.v;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_v, l_st);
			break;
		case 47/* env_fd_aop */:
			var l_l_v = l__g.v;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_v, l_st);
			break;
		case 48/* env1d */: l_r = l_c(l__g.k, l_st); break;
		case 49/* env1d_set */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.k, l_st) || l_c(l_l_val, l_st);
			break;
		case 50/* env1d_aop */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.k, l_st) || l_c(l_l_val, l_st);
			break;
		case 51/* alarm */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 52/* alarm_set */:
			var l_l_v = l__g.v;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_v, l_st);
			break;
		case 53/* alarm_aop */:
			var l_l_v = l__g.v;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_v, l_st);
			break;
		case 54/* index */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st);
			break;
		case 55/* index_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 56/* index_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 57/* index_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 58/* index_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 59/* index2d */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 60/* index2d_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 61/* index2d_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 62/* index2d_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 63/* index2d_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 64/* raw_id */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st);
			break;
		case 65/* raw_id_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 66/* raw_id_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 67/* raw_id_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 68/* raw_id_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 69/* raw_id2d */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 70/* raw_id2d_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 71/* raw_id2d_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 72/* raw_id2d_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 73/* raw_id2d_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 74/* ds_list */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st);
			break;
		case 75/* ds_list_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 76/* ds_list_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 77/* ds_list_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 78/* ds_list_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 79/* ds_map */:
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st);
			break;
		case 80/* ds_map_set */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 81/* ds_map_aop */:
			var l_l_v = l__g.v;
			var l_l_id = l__g.id;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_id, l_st) || l_c(l_l_v, l_st);
			break;
		case 82/* ds_map_prefix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 83/* ds_map_postfix */:
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st);
			break;
		case 84/* ds_grid */:
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st);
			break;
		case 85/* ds_grid_set */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 86/* ds_grid_aop */:
			var l_l_v = l__g.v;
			var l_l_i2 = l__g.i2;
			var l_l_i1 = l__g.i1;
			l_r = l_c(l__g.lx, l_st) || l_c(l_l_i1, l_st) || l_c(l_l_i2, l_st) || l_c(l_l_v, l_st);
			break;
		case 87/* ds_grid_prefix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 88/* ds_grid_postfix */:
			var l_l_k = l__g.k;
			var l_l_i = l__g.i;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_i, l_st) || l_c(l_l_k, l_st);
			break;
		case 89/* var_decl */:
			var l_l_value = l__g.value;
			l_r = l_l_value != undefined && l_c(l_l_value, l_st);
			break;
		case 90/* block */:
			l_w = l__g.nodes;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 91/* if_then */:
			var l_l_not = l__g.i_not;
			var l_l_then = l__g.i_then;
			l_r = l_c(l__g.cond, l_st) || l_c(l_l_then, l_st) || l_l_not != undefined && l_c(l_l_not, l_st);
			break;
		case 92/* ternary */:
			var l_l_not = l__g.i_not;
			var l_l_then = l__g.i_then;
			l_r = l_c(l__g.cond, l_st) || l_c(l_l_then, l_st) || l_c(l_l_not, l_st);
			break;
		case 30/* to_bool */: l_r = l_c(l__g.v, l_st); break;
		case 114/* comment_block_post */: l_r = l_c(l__g.x, l_st); break;
		case 95/* fork */: l_r = false; break;
		case 96/* while */:
			var l_l_node = l__g.node;
			l_r = l_c(l__g.cond, l_st) || l_c(l_l_node, l_st);
			break;
		case 97/* do_until */:
			var l_l_cond = l__g.cond;
			l_r = l_c(l__g.node, l_st) || l_c(l_l_cond, l_st);
			break;
		case 98/* do_while */:
			var l_l_cond = l__g.cond;
			l_r = l_c(l__g.node, l_st) || l_c(l_l_cond, l_st);
			break;
		case 99/* repeat */:
			var l_l_node = l__g.node;
			l_r = l_c(l__g.times, l_st) || l_c(l_l_node, l_st);
			break;
		case 100/* for */:
			var l_l_loop = l__g.loop;
			var l_l_post = l__g.post;
			var l_l_cond = l__g.cond;
			l_r = l_c(l__g.pre, l_st) || l_c(l_l_cond, l_st) || l_c(l_l_post, l_st) || l_c(l_l_loop, l_st);
			break;
		case 101/* with */:
			var l_l_node = l__g.node;
			l_r = l_c(l__g.ctx, l_st) || l_c(l_l_node, l_st);
			break;
		case 102/* once */: l_r = l_c(l__g.node, l_st); break;
		case 103/* return */: l_r = l_c(l__g.v, l_st); break;
		case 104/* exit */: l_r = false; break;
		case 105/* break */: l_r = false; break;
		case 106/* continue */: l_r = false; break;
		case 107/* debugger */: l_r = false; break;
		case 108/* comment_line */: l_r = false; break;
		case 109/* comment_line_pre */: l_r = l_c(l__g.x, l_st); break;
		case 110/* comment_line_post */: l_r = l_c(l__g.x, l_st); break;
		case 111/* comment_line_sep */: l_r = l_c(l__g.x, l_st); break;
		case 112/* comment_block */: l_r = false; break;
		case 113/* comment_block_pre */: l_r = l_c(l__g.x, l_st); break;
		case 40/* field_set */:
			var l_l_val = l__g.val;
			l_r = l_c(l__g.x, l_st) || l_c(l_l_val, l_st);
			break;
		case 13/* const */: l_r = false; break;
		case 4/* array_decl */:
			l_w = l__g.values;
			l_n = array_length(l_w);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (l_c(l_w[l_i], l_st)) break;
			}
			l_r = l_i < l_n;
			break;
		case 1/* number */: l_r = false; break;
		case 12/* native_script */: l_r = false; break;
		case 93/* switch */:
			var l_o = l__g.def;
			var l_m = l__g.list;
			if (l_c(l__g.expr, l_st)) {
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

function ast_gml_node_tools_ni_concat_pos_iter(l_q, l_st) {
	gml_std_haxe_enum_tools_setParameter(l_q, 0, gml_std_haxe_enum_tools_getParameter(l_q, 0).concat(ast_gml_node_tools_ni_concat_pos_pos));
	return gml_node_seek(l_q, undefined, ast_gml_node_tools_ni_concat_pos_iter);
}

function ast_gml_node_tools_ni_concat_pos_rec(l_q, l_p) {
	ast_gml_node_tools_ni_concat_pos_pos = l_p;
	ast_gml_node_tools_ni_concat_pos_iter(l_q, undefined);
}

#endregion

#region gml.op

function gml_op_get_priority(l_op) {
	return (l_op >> 4);
}

function gml_op_get_name(l_this1) {
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

function gml_pos(l_src, l_row, l_col) constructor {
	static src = undefined;
	static row = undefined;
	static col = undefined;
	static next = undefined;
	static copy = function() {
		var l_r = new gml_pos(self.src, self.row, self.col);
		if (self.next != undefined) l_r.next = self.next.copy();
		return l_r;
	}
	static concat = function(l_p) {
		var l_r = l_p.copy();
		var l_l = l_r;
		while (l_l.next != undefined) {
			l_l = l_l.next;
		}
		l_l.next = self;
		return l_r;
	}
	static to_string = function() {
		var l_r = self.src.name + ("[L" + string(self.row) + ",c" + string(self.col) + "]");
		if (self.next != undefined) l_r += ">" + self.next.to_string();
		return l_r;
	}
	self.next = undefined;
	self.src = l_src;
	self.row = l_row;
	self.col = l_col;
	static __class__ = mt_gml_pos;
}
mt_gml_pos.i_constructor = gml_pos;

#endregion

#region gml.script

function gml_script(l_src, l_name, l_pos) constructor {
	static name = undefined;
	static pos = undefined;
	static index = undefined;
	static node = undefined;
	static source = undefined;
	static local_map = undefined;
	static locals = undefined;
	static arguments = undefined;
	static named_args = undefined;
	static actions = undefined;
	static destroy = function() {
		if (self.actions != undefined) {
			var l_this1 = self.actions;
			var l_i = 0;
			for (var l__g1 = ds_list_size(l_this1); l_i < l__g1; l_i++) {
				var l_q = l_this1[|l_i];
				if (l_q.__enumIndex__/* gml_action */ == 59/* switch */) ds_map_destroy(l_q.jumptable);
			}
			ds_list_destroy(l_this1);
		}
	}
	static seek = function(l_iter, l_stack) {
		var l__scr = gml_program_seek_script;
		gml_program_seek_script = self;
		l_iter(self.node, l_stack);
		gml_program_seek_script = l__scr;
	}
	self.actions = undefined;
	self.named_args = undefined;
	self.arguments = 0;
	self.locals = 0;
	self.local_map = new haxe_ds_string_map();
	self.source = l_src;
	self.name = l_name;
	self.pos = l_pos;
	static __class__ = mt_gml_script;
}
mt_gml_script.i_constructor = gml_script;

#endregion

#region gml.source

function gml_source(l_name, l_code, l_main, l_opt) constructor {
	static name = undefined;
	static code = undefined;
	static main = undefined;
	static length = undefined;
	static opt = undefined;
	static tokens = undefined;
	static __eof = undefined;
	static eof = undefined;
	static get_eof = function() {
		if (self.__eof == undefined) self.__eof = new gml_pos(self, string_count("\n", self.code) + 2, 1);
		return self.__eof;
	}
	static to_string = function() {
		return "GmlSource(\"" + self.name + "\")";
	}
	if (l_opt == undefined) l_opt = false;
	if (false) throw argument[3];
	self.__eof = undefined;
	self.tokens = undefined;
	self.name = l_name;
	self.code = l_code;
	self.opt = l_opt;
	if (l_main == undefined) {
		l_main = l_name;
		var l_i;
		while (true) {
			l_i = gml_std_string_pos_ext(l_main, "/");
			if (l_i < 0) l_i = gml_std_string_pos_ext(l_main, "\\");
			if (l_i >= 0) l_main = gml_std_string_substring(l_main, l_i + 1);
			if (l_i < 0) break;
		}
		l_i = gml_std_string_pos_ext(l_main, ".");
		if (l_i >= 0) l_main = gml_std_string_substring(l_main, 0, l_i);
	}
	self.main = l_main;
	self.length = string_length(l_code);
	static __class__ = mt_gml_source;
}
mt_gml_source.i_constructor = gml_source;

#endregion

#region gml.token

function mc_gml_token() {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_token;
}

function mc_gml_token_header() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "name", "lb"];
	static __enumIndex__ = 0;
}

function gml_token_header(l_d, l_name, l_lb) {
	var this = new mc_gml_token_header();
	this.d = l_d;
	this.name = l_name;
	this.lb = l_lb;
	return this
}

function mc_gml_token_macro() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 1;
}

function gml_token_macro(l_d) {
	var this = new mc_gml_token_macro();
	this.d = l_d;
	return this
}

function mc_gml_token_hash() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 2;
}

function gml_token_hash(l_d) {
	var this = new mc_gml_token_hash();
	this.d = l_d;
	return this
}

function mc_gml_token_semico() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 3;
}

function gml_token_semico(l_d) {
	var this = new mc_gml_token_semico();
	this.d = l_d;
	return this
}

function mc_gml_token_comma() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 4;
}

function gml_token_comma(l_d) {
	var this = new mc_gml_token_comma();
	this.d = l_d;
	return this
}

function mc_gml_token_period() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 5;
}

function gml_token_period(l_d) {
	var this = new mc_gml_token_period();
	this.d = l_d;
	return this
}

function mc_gml_token_colon() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 6;
}

function gml_token_colon(l_d) {
	var this = new mc_gml_token_colon();
	this.d = l_d;
	return this
}

function mc_gml_token_qmark() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 7;
}

function gml_token_qmark(l_d) {
	var this = new mc_gml_token_qmark();
	this.d = l_d;
	return this
}

function mc_gml_token_at_sign() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 8;
}

function gml_token_at_sign(l_d) {
	var this = new mc_gml_token_at_sign();
	this.d = l_d;
	return this
}

function mc_gml_token_keyword() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "kw"];
	static __enumIndex__ = 9;
}

function gml_token_keyword(l_d, l_kw) {
	var this = new mc_gml_token_keyword();
	this.d = l_d;
	this.kw = l_kw;
	return this
}

function mc_gml_token_ident() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 10;
}

function gml_token_ident(l_d, l_id) {
	var this = new mc_gml_token_ident();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_token_env() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "id"];
	static __enumIndex__ = 11;
}

function gml_token_env(l_d, l_id) {
	var this = new mc_gml_token_env();
	this.d = l_d;
	this.id = l_id;
	return this
}

function mc_gml_token_undefined() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 12;
}

function gml_token_undefined(l_d) {
	var this = new mc_gml_token_undefined();
	this.d = l_d;
	return this
}

function mc_gml_token_number() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "nu", "src"];
	static __enumIndex__ = 13;
}

function gml_token_number(l_d, l_nu, l_src) {
	var this = new mc_gml_token_number();
	this.d = l_d;
	this.nu = l_nu;
	this.src = l_src;
	return this
}

function mc_gml_token_cstring() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "st"];
	static __enumIndex__ = 14;
}

function gml_token_cstring(l_d, l_st) {
	var this = new mc_gml_token_cstring();
	this.d = l_d;
	this.st = l_st;
	return this
}

function mc_gml_token_un_op() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "op"];
	static __enumIndex__ = 15;
}

function gml_token_un_op(l_d, l_op) {
	var this = new mc_gml_token_un_op();
	this.d = l_d;
	this.op = l_op;
	return this
}

function mc_gml_token_in() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 16;
}

function gml_token_in(l_d) {
	var this = new mc_gml_token_in();
	this.d = l_d;
	return this
}

function mc_gml_token_adjfix() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "inc"];
	static __enumIndex__ = 17;
}

function gml_token_adjfix(l_d, l_inc) {
	var this = new mc_gml_token_adjfix();
	this.d = l_d;
	this.inc = l_inc;
	return this
}

function mc_gml_token_bin_op() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "op"];
	static __enumIndex__ = 18;
}

function gml_token_bin_op(l_d, l_op) {
	var this = new mc_gml_token_bin_op();
	this.d = l_d;
	this.op = l_op;
	return this
}

function mc_gml_token_set_op() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "op"];
	static __enumIndex__ = 19;
}

function gml_token_set_op(l_d, l_op) {
	var this = new mc_gml_token_set_op();
	this.d = l_d;
	this.op = l_op;
	return this
}

function mc_gml_token_par_open() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 20;
}

function gml_token_par_open(l_d) {
	var this = new mc_gml_token_par_open();
	this.d = l_d;
	return this
}

function mc_gml_token_par_close() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 21;
}

function gml_token_par_close(l_d) {
	var this = new mc_gml_token_par_close();
	this.d = l_d;
	return this
}

function mc_gml_token_sqb_open() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 22;
}

function gml_token_sqb_open(l_d) {
	var this = new mc_gml_token_sqb_open();
	this.d = l_d;
	return this
}

function mc_gml_token_sqb_close() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 23;
}

function gml_token_sqb_close(l_d) {
	var this = new mc_gml_token_sqb_close();
	this.d = l_d;
	return this
}

function mc_gml_token_cub_open() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 24;
}

function gml_token_cub_open(l_d) {
	var this = new mc_gml_token_cub_open();
	this.d = l_d;
	return this
}

function mc_gml_token_cub_close() : mc_gml_token() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 25;
}

function gml_token_cub_close(l_d) {
	var this = new mc_gml_token_cub_close();
	this.d = l_d;
	return this
}

function mc_gml_token_arg_const() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 26;
}

function gml_token_arg_const(l_d, l_i) {
	var this = new mc_gml_token_arg_const();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_token_comment_post() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "s"];
	static __enumIndex__ = 27;
}

function gml_token_comment_post(l_d, l_s) {
	var this = new mc_gml_token_comment_post();
	this.d = l_d;
	this.s = l_s;
	return this
}

function mc_gml_token_comment_line() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "s"];
	static __enumIndex__ = 28;
}

function gml_token_comment_line(l_d, l_s) {
	var this = new mc_gml_token_comment_line();
	this.d = l_d;
	this.s = l_s;
	return this
}

function mc_gml_token_comment_block() : mc_gml_token() constructor {
	static __enumParams__ = ["d", "s", "pl"];
	static __enumIndex__ = 29;
}

function gml_token_comment_block(l_d, l_s, l_pl) {
	var this = new mc_gml_token_comment_block();
	this.d = l_d;
	this.s = l_s;
	this.pl = l_pl;
	return this
}

#endregion

#region gml

function gml_api_print() {
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

function gml_parse_name(l_s, l_i) {
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

function gml_func_add(l_signature, l_func) {
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
				l_arg1 = 199;
				l_argc = -1;
				l_opt = true;
			}
			l_pos = gml_std_string_pos_ext(l_arg, ":");
			var l_tfun;
			if (l_pos >= 0) {
				if (gml_std_string_pos_ext(gml_std_string_substring(l_arg, 0, l_pos), "?") >= 0) l_opt = true;
				var l_type = gml_std_StringTools_trim(gml_std_string_substring(l_arg, l_pos + 1));
				if (l_tmap.exists(l_type)) {
					var l_tfun1 = l_tmap.get(l_type);
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
	if (l_inst != 0) gml_inst_data.set(l_name, l_inst);
	gml_func_eval.set(l_name, gml_std_string_pos_ext(l_flags, "#") >= 0);
	gml_func_args.set(l_name, l_argt);
	gml_func_rest.set(l_name, l_rest);
	gml_func_arg0.set(l_name, l_arg0);
	gml_func_arg1.set(l_name, l_arg1);
	gml_func_script.set(l_name, l_func);
	gml_func_sig.set(l_name, l_s);
}

function gml_func_copy(l_to, l_from, l_note) {
	if (false) throw argument[2];
	if (!gml_func_script.exists(l_from)) throw gml_std_haxe_Exception_thrown("Can't find " + l_from);
	if (l_note != undefined) {
		gml_note_add("// " + gml_std_Std_stringify(l_note));
		var l_sig = gml_func_sig.get(l_from);
		var l_pos = gml_std_string_pos_ext(l_sig, l_from);
		l_sig = gml_std_string_substring(l_sig, 0, l_pos) + l_to + gml_std_string_substring(l_sig, l_pos + string_length(l_from));
		ds_list_add(gml_sig_list, l_sig);
	}
	gml_func_eval.set(l_to, gml_func_eval.get(l_from));
	gml_func_args.set(l_to, gml_func_args.get(l_from));
	gml_func_rest.set(l_to, gml_func_rest.get(l_from));
	gml_func_arg0.set(l_to, gml_func_arg0.get(l_from));
	gml_func_arg1.set(l_to, gml_func_arg1.get(l_from));
	gml_func_script.set(l_to, gml_func_script.get(l_from));
	gml_func_sig.set(l_to, gml_func_sig.get(l_from));
}

function gml_live_not_found(l_inst) {
	if (object_exists((l_inst | 0))) gml_thread_error("Couldn't find any instances of " + gml_std_Std_stringify(l_inst) + " (" + object_get_name(((l_inst | 0))) + ")"); else gml_thread_error("Couldn't find instance `" + gml_std_Std_stringify(l_inst) + "`");
}

function gml_field_func(l_inst, l_field, l_set, l_val) {
	with (l_inst) {
		if (l_set) {
			variable_instance_set(self, l_field, l_val);
		} else if (variable_instance_exists(self, l_field)) {
			l_val = variable_instance_get(self, l_field);
		} else gml_thread_error("`" + gml_std_Std_stringify(l_inst) + "` (" + object_get_name(self.object_index) + ") does not have a variable `" + l_field + "`");
		return l_val;
	}
	if (l_set) {
		if (variable_instance_get(l_inst, "id") != undefined) {
			variable_instance_set(l_inst, l_field, l_val);
			return l_val;
		}
	} else {
		l_val = variable_instance_get(l_inst, l_field);
		if (l_val != undefined) return l_val;
		if (variable_instance_get(l_inst, "id") != undefined) {
			if (variable_instance_exists(l_inst, l_field)) return l_val;
			var l_obj = variable_instance_get(l_inst, "object_index");
			if (object_exists(l_obj)) {
				gml_thread_error("`" + gml_std_Std_stringify(l_inst) + "` (" + object_get_name(l_obj) + ") does not have a variable `" + l_field + "`");
				return l_val;
			}
		}
	}
	if (object_exists((l_inst | 0))) gml_thread_error("Couldn't find any instances of " + gml_std_Std_stringify(l_inst) + " (" + object_get_name(((l_inst | 0))) + ")"); else gml_thread_error("Couldn't find instance `" + gml_std_Std_stringify(l_inst) + "`");
	return undefined;
}

function gml_field_check(l_inst, l_field) {
	return variable_instance_exists(l_inst, l_field);
}

function gml_field_get(l_inst, l_field, l_defValue) {
	with (l_inst) if (variable_instance_exists(self, l_field)) return variable_instance_get(self, l_field); else return l_defValue;
	return l_defValue;
}

function gml_with_func(l_seek) {
	var l_out, l_i, l_n;
	if (gml_value_is_number(l_seek)) {
		l_i = 0;
		if (l_seek >= 100000) {
			l_out = vm__gml_with_data_gml_with_data_impl__alloc(1);
			with (l_seek) l_out[@l_i++] = self.id;
			return { length: l_i, items: l_out, refc: 1 }
		} else {
			l_out = vm__gml_with_data_gml_with_data_impl__alloc(instance_number(l_seek));
			with (l_seek) l_out[@l_i++] = self.id;
			return { length: l_i, items: l_out, refc: 1 }
		}
	} else if (is_array(l_seek)) {
		if (array_length_2d(l_seek, 2) == 1) {
			l_out = vm__gml_with_data_gml_with_data_impl__alloc(1);
			l_out[@0] = l_seek;
			return { length: 1, items: l_out, refc: 1 }
		} else if (array_height_2d(l_seek) == 2) {
			var l_this1 = l_seek;
			l_n = l_this1[1, 0](4/* gml_class.get_length */, l_this1);
			l_out = vm__gml_with_data_gml_with_data_impl__alloc(l_n);
			array_copy(l_out, 0, l_seek, 0, l_n);
			return { length: l_n, items: l_out, refc: 1 }
		} else return { length: array_length(l_seek), items: l_seek, refc: -1 }
	} else {
		gml_thread_error("Cannot apply with() to " + gml_value_print(l_seek));
		return undefined;
	}
}

function gml_with_first(l_seek) {
	if (is_numeric(l_seek)) {
		with (l_seek) return self.id;
		if (l_seek < 100000) gml_thread_error("Could not find any instances of " + gml_std_Std_stringify(l_seek) + "(" + object_get_name(round(l_seek)) + ")"); else gml_thread_error("Could not find instance " + gml_std_Std_stringify(l_seek));
		return undefined;
	} else return l_seek;
}

function gml_var_add(l_s, l_func) {
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
		if (gml_type_check_map.exists(l_tstr)) {
			l_type = gml_type_check_map.get(l_tstr);
			l_s = gml_std_string_substring(l_s, 0, l_pos);
		} else throw gml_std_haxe_Exception_thrown("`" + l_tstr + "` is not a known type.");
	}
	var l_name = gml_parse_name(l_s, 0);
	if (gml_std_string_pos_ext(l_s, "[") >= 0) l_flags |= 2;
	if (gml_std_string_pos_ext(l_s, "*") >= 0) l_flags |= 1;
	gml_var_flags.set(l_name, l_flags);
	gml_var_refs.set(l_name, l_func);
	gml_var_types.set(l_name, l_type);
}

function gml_const_add(l_name, l_value) {
	ds_list_add(gml_sig_list, l_name + " = " + gml_value_print(l_value));
	gml_const_map.set(l_name, true);
	gml_const_val.set(l_name, l_value);
}

function gml_asset_add(l_name, l_index) {
	gml_asset_index.set(l_name, l_index);
}

#endregion

#region gml_std.haxe.type

function gml_std_haxe_type_get(l_obj) {
	if (is_struct(l_obj)) return l_obj.__class__; else return l_obj[0];
}

#endregion

#region gml_std.haxe.class

function gml_std_haxe_class(l_id, l_name) constructor {
	static superClass = undefined;
	static i_constructor = undefined;
	static marker = undefined;
	static index = undefined;
	static name = undefined;
	self.superClass = undefined;
	self.marker = gml_std_haxe_type_markerValue;
	self.index = l_id;
	self.name = l_name;
	static __class__ = "class";
}
mt_gml_std_haxe_class.i_constructor = gml_std_haxe_class;

#endregion

#region gml_std.haxe.enum

function gml_std_haxe_enum(l_id, l_name, l_constructors) constructor {
	static constructors = undefined;
	static marker = undefined;
	static index = undefined;
	static name = undefined;
	if (false) throw argument[2];
	self.marker = gml_std_haxe_type_markerValue;
	self.index = l_id;
	self.name = l_name;
	self.constructors = l_constructors;
	static __class__ = "enum";
}
mt_gml_std_haxe_enum.i_constructor = gml_std_haxe_enum;

#endregion

#region gml.seek_adjfix

function gml_seek_adjfix_proc(l_q, l_st) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 26/* postfix */:
			var l_b = l__g.inc;
			var l_x = l__g.x;
			var l_d = l__g.d;
			var l_pre;
			if (l_q.__enumIndex__/* gml_node */ == 25/* prefix */) l_pre = true; else l_pre = false;
			var l_o;
			var l_inBlock = gml_node_is_in_block(l_x, l_st[|0]);
			if (l_pre || l_inBlock) {
				var l__g = l_x;
				switch (l__g.__enumIndex__/* gml_node */) {
					case 79/* ds_map */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l__g.lx, l__g.id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 74/* ds_list */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l__g.lx, l__g.id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 84/* ds_grid */:
						l_o = (l_b ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l__g.lx, l__g.i1, l__g.i2, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					default:
						if (l_inBlock) {
							l_o = (l_b ? 16 : 17);
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_set_op(l_d, l_o, l_x, gml_node_number(l_d, 1, undefined)));
						}
				}
			}
			break;
		case 25/* prefix */:
			var l_x = l__g.x;
			var l_d = l__g.d;
			var l_pre;
			if (l_q.__enumIndex__/* gml_node */ == 25/* prefix */) l_pre = true; else l_pre = false;
			var l_o;
			var l_inBlock = gml_node_is_in_block(l_x, l_st[|0]);
			if (l_pre || l_inBlock) {
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 79/* ds_map */:
						l_o = (l__g.inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l__g1.lx, l__g1.id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 74/* ds_list */:
						l_o = (l__g.inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l__g1.lx, l__g1.id, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					case 84/* ds_grid */:
						l_o = (l__g.inc ? 16 : 17);
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l__g1.lx, l__g1.i1, l__g1.i2, l_o, gml_node_number(l_d, 1, undefined)));
						break;
					default:
						if (l_inBlock) {
							l_o = (l__g.inc ? 16 : 17);
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

function gml_seek_alarms_check(l_x) {
	var l__g = l_x;
	if (l__g.__enumIndex__/* gml_node */ == 39/* field */) {
		if (l__g.fd == "alarm") return l__g.x; else return undefined;
	} else return undefined;
}

function gml_seek_alarms_proc(l_q, l_st) {
	var l_r;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 64/* raw_id */:
			l_r = gml_seek_alarms_check(l__g.x);
			if (l_r != undefined) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm(l__g.d, l_r, l__g.id));
			break;
		case 54/* index */:
			l_r = gml_seek_alarms_check(l__g.x);
			if (l_r != undefined) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm(l__g.d, l_r, l__g.id));
			break;
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_arguments

function gml_seek_arguments_proc(l_q, l_st) {
	gml_node_seek(l_q, l_st, gml_program_seek_func);
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 14/* arg_const */) {
		var l_i = l__g.id;
		if (gml_program_seek_script.arguments <= l_i) gml_program_seek_script.arguments = l_i + 1;
	}
	return false;
}

#endregion

#region gml.seek_calls

function gml_seek_calls_proc(l_q, l_st) {
	var l_i, l_n, l_s;
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 17/* call */) {
		var l_w = l__g.args;
		var l_x = l__g.x;
		var l_d = l__g.d;
		var l__g = l_x;
		switch (l__g.__enumIndex__/* gml_node */) {
			case 11/* script */:
				var l_o = l__g.ref;
				l_n = l_o.arguments;
				l_s = l_o.name;
				if (l_n <= 0 || array_length(l_w) == l_n) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script(l_d, l_s, l_w)); else return gml_program_seek_inst.error("Wrong number of arguments for `" + l_s + "`", l_d);
				break;
			case 39/* field */:
				var l_s = l__g.fd;
				if (gml_func_arg0.exists(l_s)) {
					if (gml_inst_data.exists(l_s)) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func_at(l_d, l__g.x, l_s, l_w)); else return gml_program_seek_inst.error("`" + l_s + "` cannot be called on an instance", l__g.d);
				} else if (gml_program_seek_inst.script_map.exists(l_s)) {
					l_n = gml_program_seek_inst.script_map.get(l_s).arguments;
					if (l_n <= 0 || array_length(l_w) == l_n) gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_script_at(l_d, l__g.x, l_s, l_w)); else return gml_program_seek_inst.error("Wrong number of arguments for `" + l_s + "`", l_d);
				} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_field(l_d, l__g.x, l_s, l_w));
				break;
			case 12/* native_script */:
				var l_s = l__g.name;
				var l_n0 = gml_func_arg0.get(l_s);
				if (l_n0 != undefined) {
					var l_n1 = gml_func_arg1.get(l_s);
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
						return gml_program_seek_inst.error(l_s, gml_std_haxe_enum_tools_getParameter(l_x, 0));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func(l_d, l_s, l_w));
				} else return gml_program_seek_inst.error("`" + l_s + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
				break;
			case 7/* ident */:
				var l_s1 = l__g.id;
				var l_n0 = gml_func_arg0.get(l_s1);
				if (l_n0 != undefined) {
					var l_n1 = gml_func_arg1.get(l_s1);
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
						return gml_program_seek_inst.error(l_s1, gml_std_haxe_enum_tools_getParameter(l_x, 0));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_call_func(l_d, l_s1, l_w));
				} else return gml_program_seek_inst.error("`" + l_s1 + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
				break;
			default: return gml_program_seek_inst.error("Expression is not callable", gml_std_haxe_enum_tools_getParameter(l_x, 0));
		}
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_enum_fields

function gml_seek_enum_fields_proc(l_q, l_st) {
	if (gml_node_seek(l_q, l_st, gml_program_seek_func)) return true;
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 39/* field */) {
		var l_f = l__g.fd;
		var l_x = l__g.x;
		var l_d = l__g.d;
		var l__g = l_x;
		if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
			var l_s = l__g.id;
			var l_e = gml_program_seek_inst.enum_map.get(l_s);
			if (l_e == undefined) l_e = gml_enum_map.get(l_s);
			if (l_e != undefined) {
				var l_c = l_e.ctr_map.get(l_f);
				if (l_c != undefined) {
					gml_std_haxe_enum_tools_setTo(l_q, gml_node_number(l_d, l_c.value, undefined));
					return false;
				} else return gml_program_seek_inst.error("Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
			}
		}
		if (gml_var_flags.exists(l_f)) {
			if ((gml_var_flags.get(l_f) & 4) == 0) return gml_program_seek_inst.error("`" + l_f + "` is not an instance-specific variable.", l_d);
		}
	}
	return false;
}

#endregion

#region gml.seek_enum_values

function gml_seek_enum_values_proc() {
	var l__g = 0;
	var l__g1 = gml_program_seek_inst.enums;
	while (l__g < array_length(l__g1)) {
		var l_e = l__g1[l__g];
		l__g++;
		var l_next = 0;
		var l__g2 = 0;
		var l__g3 = l_e.ctr_list;
		while (l__g2 < array_length(l__g3)) {
			var l_c = l__g3[l__g2];
			l__g2++;
			if (l_c.node != undefined) {
				var l_st = ds_list_create();
				var l__seekFunc = gml_program_seek_func;
				gml_program_seek_func = gml_seek_idents_proc;
				gml_program_seek_script = undefined;
				gml_seek_idents_proc(l_c.node, l_st);
				gml_program_seek_func = l__seekFunc;
				ds_list_destroy(l_st);
				gml_seek_eval_eval(l_c.node);
				var l_v = gml_seek_eval_node_to_value(l_c.node);
				if (gml_value_is_number(l_v)) {
					l_c.value = floor(l_v);
					l_next = l_c.value + 1;
				} else if (l_v != gml_seek_eval_invalid_value) {
					return gml_program_seek_inst.error("Enum values should be integer", gml_std_haxe_enum_tools_getParameter(l_c.node, 0));
				} else return gml_program_seek_inst.error("Enum values should be constant", gml_std_haxe_enum_tools_getParameter(l_c.node, 0));
			} else l_c.value = l_next++;
		}
	}
	return false;
}

#endregion

#region gml.seek_eval

function gml_seek_eval_node_to_value(l_node) {
	var l__g = l_node;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: return undefined;
		case 1/* number */: return l__g.value;
		case 2/* cstring */: return l__g.value;
		case 13/* const */: return gml_const_val.get(l__g.id);
		case 12/* native_script */: return l__g.id;
		default: return gml_seek_eval_invalid_value;
	}
}

function gml_seek_eval_value_to_node(l_val, l_d) {
	if (is_bool(l_val)) {
		return gml_node_number(l_d, (l_val ? 1 : 0), undefined);
	} else if (gml_value_is_number(l_val)) {
		return gml_node_number(l_d, l_val, undefined);
	} else if (is_string(l_val)) {
		return gml_node_cstring(l_d, l_val);
	} else if (l_val == undefined) {
		return gml_node_undefined(l_d);
	} else return undefined;
}

function gml_seek_eval_proc(l_q, l_st) {
	var l_f1, l_f2;
	var l_z = true;
	var l_v1, l_v2, l_i, l_n;
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 0/* undefined */: break;
		case 1/* number */: break;
		case 2/* cstring */: break;
		case 13/* const */: break;
		case 28/* bin_op */:
			var l__g3 = l__g.o;
			if (l__g3 == 16) {
				var l_b = l__g.b;
				var l_a = l__g.a;
				var l_d = l__g.d;
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
							if (l__g.__enumIndex__/* gml_node */ == 28/* bin_op */) {
								if (l__g.o == 16) {
									var l__hx_tmp = l__g.a;
									if (l__hx_tmp.__enumIndex__/* gml_node */ == 2/* cstring */) {
										gml_std_haxe_enum_tools_setTo(l_q, gml_node_bin_op(l_d, 16, gml_node_cstring(l_d, l_v1 + l__hx_tmp.value), l__g.b));
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
					} else if (gml_value_is_number(l_v1)) {
						if (gml_value_is_number(l_v2)) {
							gml_std_haxe_enum_tools_setTo(l_q, gml_node_number(l_d, l_v1 + l_v2, undefined));
						} else {
							gml_seek_eval_error_text = "Can't add " + gml_std_Type_enumConstructor(l_a) + " and " + gml_std_Type_enumConstructor(l_b) + " at compile time";
							gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
							l_z = false;
						}
					} else if (is_string(l_v2)) {
						var l__g = l_a;
						if (l__g.__enumIndex__/* gml_node */ == 28/* bin_op */) {
							if (l__g.o == 16) {
								var l__hx_tmp = l__g.b;
								if (l__hx_tmp.__enumIndex__/* gml_node */ == 2/* cstring */) {
									gml_std_haxe_enum_tools_setTo(l_q, gml_node_bin_op(l_d, 16, l__g.a, gml_node_cstring(l_d, l__hx_tmp.value + l_v2)));
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
				var l_b1 = l__g.b;
				var l_a1 = l__g.a;
				var l_d = l__g.d;
				var l_o = l__g3;
				if (gml_seek_eval_proc(l_a1, l_st)) l_z = false;
				if (gml_seek_eval_proc(l_b1, l_st)) l_z = false;
				if (l_z) {
					l_v1 = gml_seek_eval_node_to_value(l_a1);
					l_v2 = gml_seek_eval_node_to_value(l_b1);
					if (gml_value_is_number(l_v1) && gml_value_is_number(l_v2)) {
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
			var l_args1 = l__g.args;
			var l_name = l__g.s;
			l_n = array_length(l_args1);
			for (l_i = 0; l_i < l_n; l_i++) {
				if (gml_seek_eval_proc(l_args1[l_i], l_st)) l_z = false;
			}
			if (l_z && gml_func_eval.get(l_name)) {
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
					l_th.status = gml_thread_status.running;
					l_val = vm_gml_thread_exec_call(gml_func_script.get(l_name), l_evalArgs, l_n);
					gml_thread_current = l_th0;
					if (l_th.status != gml_thread_status.error) {
						var l_next = gml_seek_eval_value_to_node(l_val, gml_std_haxe_enum_tools_getParameter(l_q, 0));
						if (l_next != undefined) {
							gml_std_haxe_enum_tools_setTo(l_q, l_next);
						} else {
							gml_seek_eval_error_text = "Could not translate " + gml_value_print(l_val) + " (" + gml_value_get_type(l_val) + ") compile-time";
							gml_seek_eval_error_pos = gml_std_haxe_enum_tools_getParameter(l_q, 0);
						}
					} else {
						gml_seek_eval_error_text = "Could not evaluate compile-time: " + l_th.error_text;
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

function gml_seek_eval_eval(l_q) {
	gml_seek_eval_eval_rec = false;
	var l_r = gml_seek_eval_proc(l_q, undefined);
	gml_seek_eval_eval_thread = undefined;
	return l_r;
}

function gml_seek_eval_opt() {
	gml_seek_eval_eval_rec = true;
	gml_program_seek_inst.seek(gml_seek_eval_proc);
	gml_seek_eval_eval_thread = undefined;
	return false;
}

#endregion

#region gml.seek_fields

function gml_seek_fields_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 39/* field */) {
		var l_s = l__g.fd;
		var l_x = l__g.x;
		var l_d = l__g.d;
		if (l_x.__enumIndex__/* gml_node */ == 10/* global_ref */) gml_std_haxe_enum_tools_setTo(l_q, gml_node_global(l_d, l_s));
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_idents

function gml_seek_idents_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
		var l_s = l__g.id;
		var l_d = l__g.d;
		var l_scr = gml_program_seek_script;
		if (l_scr != undefined && l_scr.named_args.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_arg_const(l_d, l_scr.named_args.get(l_s)));
		} else if (l_scr != undefined && l_scr.local_map.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_local(l_d, l_s));
		} else if (gml_program_seek_inst.macros.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_clone(gml_program_seek_inst.macros.get(l_s)));
			ast_gml_node_tools_ni_concat_pos_rec(l_q, l_d);
			gml_seek_idents_proc(l_q, l_st);
		} else if (gml_const_map.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_seek_eval_value_to_node(gml_const_val.get(l_s), l_d));
		} else if (gml_var_flags.exists(l_s)) {
			var l_flags = gml_var_flags.get(l_s);
			if ((l_flags & 4) != 0) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd(l_d, gml_node_self(l_d), l_s)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env(l_d, l_s));
			if (ds_list_size(l_st) > 0) {
				var l__g = l_st[|0];
				switch (l__g.__enumIndex__/* gml_node */) {
					case 54/* index */:
						var l_k = l__g.id;
						var l_d1 = l__g.d;
						if ((l_flags & 2) != 0) gml_std_haxe_enum_tools_setTo(l_st[|0], gml_node_env1d(l_d1, l_s, l_k)); else return gml_program_seek_inst.error("`" + l_s + "` is not an array.", l_d1);
						break;
					case 59/* index2d */: return gml_program_seek_inst.error("`" + l_s + "` is not a 2d array.", l__g.d);
					default: if ((l_flags & 2) != 0) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d(l_d, l_s, gml_node_number(l_d, 0, undefined)));
				}
			}
		} else if (gml_program_seek_inst.script_map.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_script(l_d, gml_program_seek_inst.script_map.get(l_s)));
		} else if (gml_func_script_id.exists(l_s)) {
			gml_std_haxe_enum_tools_setTo(l_q, gml_node_native_script(l_d, l_s, gml_func_script_id.get(l_s)));
		}
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_locals

function gml_seek_locals_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 89/* var_decl */) {
		var l_s = l__g.name;
		if (!gml_program_seek_script.local_map.exists(l_s)) gml_program_seek_script.local_map.set(l_s, gml_program_seek_script.locals++);
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_self_fields

function gml_seek_self_fields_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 7/* ident */) {
		var l_s = l__g.id;
		var l_d = l__g.d;
		gml_std_haxe_enum_tools_setTo(l_q, gml_node_field(l_d, gml_node_self(l_d), l_s));
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml.seek_set_op

function gml_seek_set_op_resolve_set_op_rfn(l_q, l_st) {
	var l__g = l_q;
	switch (l__g.__enumIndex__/* gml_node */) {
		case 56/* index_aop */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 60/* index2d_set */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 61/* index2d_aop */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 55/* index_set */:
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.x)) {
				gml_seek_set_op_resolve_set_op_safe = true;
				return true;
			}
			break;
		case 29/* set_op */:
			var l_v2 = l__g.b;
			if (gml_node_equals(gml_seek_set_op_resolve_set_op_xw, l__g.a)) {
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

function gml_seek_set_op_proc(l_q, l_st) {
	var l__g = l_q;
	if (l__g.__enumIndex__/* gml_node */ == 29/* set_op */) {
		var l_v = l__g.b;
		var l_x = l__g.a;
		var l_o = l__g.o;
		var l_d = l__g.d;
		var l__g = gml_node_unpack(l_x);
		switch (l__g.__enumIndex__/* gml_node */) {
			case 33/* local */:
				var l_s = l__g.id;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_local_aop(l_d, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_local_set(l_d, l_s, l_v));
				break;
			case 36/* global */:
				var l_s = l__g.id;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_global_aop(l_d, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_global_set(l_d, l_s, l_v));
				break;
			case 14/* arg_const */: break;
			case 15/* arg_index */: break;
			case 39/* field */:
				var l_s = l__g.fd;
				var l_x1 = l__g.x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_field_aop(l_d, l_x1, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_field_set(l_d, l_x1, l_s, l_v));
				break;
			case 51/* alarm */:
				var l_i = l__g.i;
				var l_x1 = l__g.x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm_aop(l_d, l_x1, l_i, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_alarm_set(l_d, l_x1, l_i, l_v));
				break;
			case 59/* index2d */:
				var l_xw = l__g.x;
				var l_xd = l__g.d;
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 54/* index */:
						var l_xi = l__g1.id;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_aop(l_xd, l_xw, l_xi, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_set(l_xd, l_xw, l_xi, l_v));
						break;
					case 59/* index2d */:
						var l_i2 = l__g1.i2;
						var l_i1 = l__g1.i1;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_aop(l_xd, l_xw, l_i1, l_i2, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_set(l_xd, l_xw, l_i1, l_i2, l_v));
						break;
				}
				gml_seek_set_op_resolve_set_op_safe = false;
				gml_seek_set_op_resolve_set_op_xw = l_xw;
				gml_node_seek_all_out(l_q, l_st, gml_seek_set_op_resolve_set_op_rfn, 0);
				if (!gml_seek_set_op_resolve_set_op_safe) gml_std_haxe_enum_tools_setTo(l_q, gml_node_block(l_xd, [gml_node_ensure_array(l_xd, gml_node_clone(l_xw)), gml_node_clone(l_q)]));
				break;
			case 54/* index */:
				var l_xw = l__g.x;
				var l_xd = l__g.d;
				var l__g1 = l_x;
				switch (l__g1.__enumIndex__/* gml_node */) {
					case 54/* index */:
						var l_xi = l__g1.id;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_aop(l_xd, l_xw, l_xi, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index_set(l_xd, l_xw, l_xi, l_v));
						break;
					case 59/* index2d */:
						var l_i2 = l__g1.i2;
						var l_i1 = l__g1.i1;
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_aop(l_xd, l_xw, l_i1, l_i2, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_index2d_set(l_xd, l_xw, l_i1, l_i2, l_v));
						break;
				}
				gml_seek_set_op_resolve_set_op_safe = false;
				gml_seek_set_op_resolve_set_op_xw = l_xw;
				gml_node_seek_all_out(l_q, l_st, gml_seek_set_op_resolve_set_op_rfn, 0);
				if (!gml_seek_set_op_resolve_set_op_safe) gml_std_haxe_enum_tools_setTo(l_q, gml_node_block(l_xd, [gml_node_ensure_array(l_xd, gml_node_clone(l_xw)), gml_node_clone(l_q)]));
				break;
			case 42/* env */:
				var l_s = l__g.id;
				var l_f = gml_var_flags.get(l_s);
				if ((l_f & 1) == 0) {
					if ((l_f & 2) != 0) {
						var l_k = gml_node_number(l_d, 0, undefined);
						if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_aop(l_d, l_s, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_set(l_d, l_s, l_k, l_v));
					} else if (l_o != -1) {
						gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_aop(l_d, l_s, l_o, l_v));
					} else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_set(l_d, l_s, l_v));
				} else return gml_program_seek_inst.error("`" + l_s + "` is read-only", l__g.d);
				break;
			case 45/* env_fd */:
				var l_s = l__g.fd;
				if ((gml_var_flags.get(l_s) & 1) == 0) {
					if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd_aop(l_d, l__g.x, l_s, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env_fd_set(l_d, l__g.x, l_s, l_v));
				} else return gml_program_seek_inst.error("`" + l_s + "` is read-only", l__g.d);
				break;
			case 48/* env1d */:
				var l_s = l__g.id;
				if ((gml_var_flags.get(l_s) & 1) == 0) {
					if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_aop(l_d, l_s, l__g.k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_env1d_set(l_d, l_s, l__g.k, l_v));
				} else return gml_program_seek_inst.error("`" + l_s + "` is read-only", l__g.d);
				break;
			case 74/* ds_list */:
				var l_k = l__g.id;
				var l_x1 = l__g.lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_list_set(l_d, l_x1, l_k, l_v));
				break;
			case 79/* ds_map */:
				var l_k = l__g.id;
				var l_x1 = l__g.lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_map_set(l_d, l_x1, l_k, l_v));
				break;
			case 84/* ds_grid */:
				var l_k = l__g.i2;
				var l_i = l__g.i1;
				var l_x1 = l__g.lx;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_aop(l_d, l_x1, l_i, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_ds_grid_set(l_d, l_x1, l_i, l_k, l_v));
				break;
			case 64/* raw_id */:
				var l_k = l__g.id;
				var l_x1 = l__g.x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id_aop(l_d, l_x1, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id_set(l_d, l_x1, l_k, l_v));
				break;
			case 69/* raw_id2d */:
				var l_k = l__g.i2;
				var l_i = l__g.i1;
				var l_x1 = l__g.x;
				if (l_o != -1) gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id2d_aop(l_d, l_x1, l_i, l_k, l_o, l_v)); else gml_std_haxe_enum_tools_setTo(l_q, gml_node_raw_id2d_set(l_d, l_x1, l_i, l_k, l_v));
				break;
			default: return gml_program_seek_inst.error("Expression is not settable", gml_std_haxe_enum_tools_getParameter(l_x, 0));
		}
	}
	return gml_node_seek(l_q, l_st, gml_program_seek_func);
}

#endregion

#region gml_std.gml.internal.ArrayImpl

function gml_std_gml_internal_ArrayImpl_push(l_arr, l_val) {
	var l_i = array_length(l_arr);
	l_arr[@l_i] = l_val;
	return l_i;
}

function gml_std_gml_internal_ArrayImpl_join(l_arr, l_sep) {
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

function gml_std_gml_internal_ArrayImpl_slice(l_arr, l_pos, l_end) {
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

function gml_std_gml_internal_ArrayImpl_copy(l_arr) {
	var l_out;
	var l_len = array_length(l_arr);
	if (l_len > 0) {
		l_out = [];
		array_copy(l_out, 0, l_arr, 0, l_len);
	} else l_out = [];
	return l_out;
}

#endregion

#region gml_std.haxe.Exception

function gml_std_haxe_Exception_new(l_message, l_previous, l_native) {
	if (false) throw argument[2];
	self.native = (l_native != undefined ? l_native : self);
}

function gml_std_haxe_Exception(l_message, l_previous, l_native) constructor {
	static native = undefined;
	static unwrap = method(undefined, gml_std_haxe_Exception_unwrap);
	switch (argument_count) {
		case 1: method(self, gml_std_haxe_Exception_new)(argument[0]); break;
		case 2: method(self, gml_std_haxe_Exception_new)(argument[0], argument[1]); break;
		case 3: method(self, gml_std_haxe_Exception_new)(argument[0], argument[1], argument[2]); break;
		default: show_error("Expected 1..3 arguments.", true);
	}
	static __class__ = mt_gml_std_haxe_Exception;
}
mt_gml_std_haxe_Exception.i_constructor = gml_std_haxe_Exception;

function gml_std_haxe_Exception_isNativeException(l_value) {
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

function gml_std_haxe_Exception_caught(l_value) {
	if (gml_std_haxe_Exception_isNativeException(l_value)) return l_value;
	return new gml_std_haxe_ValueException(l_value);
}

function gml_std_haxe_Exception_thrown(l_value) {
	if (gml_std_haxe_Exception_isNativeException(l_value)) return l_value.native;
	return new gml_std_haxe_ValueException(l_value);
}

function gml_std_haxe_Exception_unwrap() {
	return self.native;
}

#endregion

#region gml_std.haxe.ValueException

function gml_std_haxe_ValueException(l_value, l_previous, l_native) constructor {
	static value = undefined;
	static unwrap = function() {
		return self.value;
	}
	static native = undefined;
	if (false) throw argument[2];
	method(self, gml_std_haxe_Exception_new)(string(l_value), l_previous, l_native);
	self.value = l_value;
	static __class__ = mt_gml_std_haxe_ValueException;
}
mt_gml_std_haxe_ValueException.i_constructor = gml_std_haxe_ValueException;

#endregion

#region haxe.ds.basic_map

function haxe_ds_basic_map_new() {
	self.cached_keys = undefined;
	self.blanks = 0;
	self.obj = { }
}

function haxe_ds_basic_map() constructor {
	static obj = undefined;
	static blanks = undefined;
	static cached_keys = undefined;
	static clear = method(undefined, haxe_ds_basic_map_clear);
	static exists = method(undefined, haxe_ds_basic_map_exists);
	static get = method(undefined, haxe_ds_basic_map_get);
	static set = method(undefined, haxe_ds_basic_map_set);
	method(self, haxe_ds_basic_map_new)();
	static __class__ = mt_haxe_ds_basic_map;
}
mt_haxe_ds_basic_map.i_constructor = haxe_ds_basic_map;

function haxe_ds_basic_map_clear() {
	var l_obj = self.obj;
	var l_keys = variable_struct_get_names(l_obj);
	var l_keyCount = array_length(l_keys);
	if (self.blanks == l_keyCount) return 0;
	var l_blank = haxe_ds_basic_map_blank;
	var l_i = -1;
	while (++l_i < l_keyCount) {
		variable_struct_set(l_obj, l_keys[l_i], l_blank);
	}
	self.blanks = l_keyCount;
}

function haxe_ds_basic_map_exists(l_key) {
	if (variable_struct_exists(self.obj, l_key)) {
		if (self.blanks > 0) return variable_struct_get(self.obj, l_key) != haxe_ds_basic_map_blank; else return true;
	} else return false;
}

function haxe_ds_basic_map_get(l_key) {
	var l_val = variable_struct_get(self.obj, l_key);
	if (l_val != haxe_ds_basic_map_blank) return l_val; else return undefined;
}

function haxe_ds_basic_map_set(l_key, l_val) {
	if (self.blanks > 0) {
		var l_cachedKeys = self.cached_keys;
		if (l_cachedKeys != undefined) {
			if (variable_struct_exists(self.obj, l_key)) {
				if (variable_struct_get(self.obj, l_key) == haxe_ds_basic_map_blank) self.blanks--;
			} else l_cachedKeys[@array_length(l_cachedKeys)] = l_key;
		} else if (variable_struct_get(self.obj, l_key) == haxe_ds_basic_map_blank) {
			self.blanks--;
		}
	}
	variable_struct_set(self.obj, l_key, l_val);
}

#endregion

#region haxe.ds.string_map

function haxe_ds_string_map() constructor {
	static obj = undefined;
	static blanks = undefined;
	static cached_keys = undefined;
	static clear = method(undefined, haxe_ds_basic_map_clear);
	static exists = method(undefined, haxe_ds_basic_map_exists);
	static get = method(undefined, haxe_ds_basic_map_get);
	static set = method(undefined, haxe_ds_basic_map_set);
	method(self, haxe_ds_basic_map_new)();
	static __class__ = mt_haxe_ds_string_map;
}
mt_haxe_ds_string_map.i_constructor = haxe_ds_string_map;

#endregion

#region haxe.iterators.array_iterator

function haxe_iterators_array_iterator(l_array1) constructor {
	static array = undefined;
	static current = undefined;
	static has_next = function() {
		return self.current < array_length(self.array);
	}
	static next = function() {
		return self.array[self.current++];
	}
	self.current = 0;
	self.array = l_array1;
	static __class__ = mt_haxe_iterators_array_iterator;
}
mt_haxe_iterators_array_iterator.i_constructor = haxe_iterators_array_iterator;

#endregion

#region live

function live_async_http_0(l_map) {
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
		gml_func_script_id.set(l_scrName, l_scrFunc);
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
	l_srcMap.clear();
	l_list = l_map[?"macros"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i += 2) {
		l_s = l_list[|l_i];
		var l_s1 = "macro:" + l_s;
		l_srcMap.set(l_s, new gml_source(l_s1, "#macro " + l_s + " " + gml_std_Std_stringify(l_list[|l_i + 1]), l_s1, true));
	}
	l_srcMap = live_live_enums;
	l_srcMap.clear();
	l_list = l_map[?"enums"];
	l_names = l_map[?"enumnames"];
	l_n = ds_list_size(l_list);
	for (l_i = 0; l_i < l_n; l_i++) {
		l_s = l_list[|l_i];
		l_s = l_names[|l_i];
		l_srcMap.set(l_s, new gml_source("enum " + l_s, l_list[|l_i], "enum " + l_s, true));
	}
	live_log("Ready!");
}

function live_async_http_1(l_map) {
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
			var l_rq = asset_get_index(l_ru.name);
			live_live_room_data[?l_rq] = l_ru.json;
			live_room_updated(l_rq);
		}
	}
}

function live_async_http_check(l_e) {
	return l_e[?"id"] == live_request_id && l_e[?"status"] <= 0;
}

function live_async_http(l_e) {
	if (false) throw argument[0];
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

#endregion

#region live_shader

function live_shader_updated_default(l__, l__1, l__2) {
	throw gml_std_haxe_Exception_thrown("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation");
}

function shader_set_live(l_sh, l_live1) {
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

#endregion

#region gml.action

function mc_gml_action() {
	static getIndex = method(undefined, gml_std_enum_getIndex);
	static toString = method(undefined, gml_std_enum_toString);
	static __enum__ = mt_gml_action;
}

function mc_gml_action_discard() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 0;
}

function gml_action_discard(l_d) {
	var this = new mc_gml_action_discard();
	this.d = l_d;
	return this
}

function mc_gml_action_dup() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 1;
}

function gml_action_dup(l_d) {
	var this = new mc_gml_action_dup();
	this.d = l_d;
	return this
}

function mc_gml_action_dup2x() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 2;
}

function gml_action_dup2x(l_d) {
	var this = new mc_gml_action_dup2x();
	this.d = l_d;
	return this
}

function mc_gml_action_dup_in() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "z"];
	static __enumIndex__ = 3;
}

function gml_action_dup_in(l_d, l_z) {
	var this = new mc_gml_action_dup_in();
	this.d = l_d;
	this.z = l_z;
	return this
}

function mc_gml_action_undefined() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 4;
}

function gml_action_undefined(l_d) {
	var this = new mc_gml_action_undefined();
	this.d = l_d;
	return this
}

function mc_gml_action_number() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "f"];
	static __enumIndex__ = 5;
}

function gml_action_number(l_d, l_f) {
	var this = new mc_gml_action_number();
	this.d = l_d;
	this.f = l_f;
	return this
}

function mc_gml_action_cstring() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "s"];
	static __enumIndex__ = 6;
}

function gml_action_cstring(l_d, l_s) {
	var this = new mc_gml_action_cstring();
	this.d = l_d;
	this.s = l_s;
	return this
}

function mc_gml_action_array_decl() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "size"];
	static __enumIndex__ = 7;
}

function gml_action_array_decl(l_d, l_size) {
	var this = new mc_gml_action_array_decl();
	this.d = l_d;
	this.size = l_size;
	return this
}

function mc_gml_action_object_decl() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "keys", "sig"];
	static __enumIndex__ = 8;
}

function gml_action_object_decl(l_d, l_keys, l_sig) {
	var this = new mc_gml_action_object_decl();
	this.d = l_d;
	this.keys = l_keys;
	this.sig = l_sig;
	return this
}

function mc_gml_action_const() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "v"];
	static __enumIndex__ = 9;
}

function gml_action_const(l_d, l_v) {
	var this = new mc_gml_action_const();
	this.d = l_d;
	this.v = l_v;
	return this
}

function mc_gml_action_self() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 10;
}

function gml_action_self(l_d) {
	var this = new mc_gml_action_self();
	this.d = l_d;
	return this
}

function mc_gml_action_other() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 11;
}

function gml_action_other(l_d) {
	var this = new mc_gml_action_other();
	this.d = l_d;
	return this
}

function mc_gml_action_local() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 12;
}

function gml_action_local(l_d, l_i) {
	var this = new mc_gml_action_local();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_local_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 13;
}

function gml_action_local_set(l_d, l_i) {
	var this = new mc_gml_action_local_set();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_local_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "i"];
	static __enumIndex__ = 14;
}

function gml_action_local_aop(l_d, l_o, l_i) {
	var this = new mc_gml_action_local_aop();
	this.d = l_d;
	this.o = l_o;
	this.i = l_i;
	return this
}

function mc_gml_action_global() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 15;
}

function gml_action_global(l_d, l_fd) {
	var this = new mc_gml_action_global();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_global_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 16;
}

function gml_action_global_set(l_d, l_fd) {
	var this = new mc_gml_action_global_set();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_global_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "fd"];
	static __enumIndex__ = 17;
}

function gml_action_global_aop(l_d, l_o, l_fd) {
	var this = new mc_gml_action_global_aop();
	this.d = l_d;
	this.o = l_o;
	this.fd = l_fd;
	return this
}

function mc_gml_action_field() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 18;
}

function gml_action_field(l_d, l_fd) {
	var this = new mc_gml_action_field();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_field_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 19;
}

function gml_action_field_set(l_d, l_fd) {
	var this = new mc_gml_action_field_set();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_field_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "fd"];
	static __enumIndex__ = 20;
}

function gml_action_field_aop(l_d, l_o, l_fd) {
	var this = new mc_gml_action_field_aop();
	this.d = l_d;
	this.o = l_o;
	this.fd = l_fd;
	return this
}

function mc_gml_action_index() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 21;
}

function gml_action_index(l_d) {
	var this = new mc_gml_action_index();
	this.d = l_d;
	return this
}

function mc_gml_action_index_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 22;
}

function gml_action_index_set(l_d) {
	var this = new mc_gml_action_index_set();
	this.d = l_d;
	return this
}

function mc_gml_action_index_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o"];
	static __enumIndex__ = 23;
}

function gml_action_index_aop(l_d, l_o) {
	var this = new mc_gml_action_index_aop();
	this.d = l_d;
	this.o = l_o;
	return this
}

function mc_gml_action_index2d() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 24;
}

function gml_action_index2d(l_d) {
	var this = new mc_gml_action_index2d();
	this.d = l_d;
	return this
}

function mc_gml_action_index2d_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 25;
}

function gml_action_index2d_set(l_d) {
	var this = new mc_gml_action_index2d_set();
	this.d = l_d;
	return this
}

function mc_gml_action_index2d_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o"];
	static __enumIndex__ = 26;
}

function gml_action_index2d_aop(l_d, l_o) {
	var this = new mc_gml_action_index2d_aop();
	this.d = l_d;
	this.o = l_o;
	return this
}

function mc_gml_action_env() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "f"];
	static __enumIndex__ = 27;
}

function gml_action_env(l_d, l_f) {
	var this = new mc_gml_action_env();
	this.d = l_d;
	this.f = l_f;
	return this
}

function mc_gml_action_env_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "f", "ch"];
	static __enumIndex__ = 28;
}

function gml_action_env_set(l_d, l_f, l_ch) {
	var this = new mc_gml_action_env_set();
	this.d = l_d;
	this.f = l_f;
	this.ch = l_ch;
	return this
}

function mc_gml_action_env_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "f"];
	static __enumIndex__ = 29;
}

function gml_action_env_aop(l_d, l_o, l_f) {
	var this = new mc_gml_action_env_aop();
	this.d = l_d;
	this.o = l_o;
	this.f = l_f;
	return this
}

function mc_gml_action_env1d() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "f"];
	static __enumIndex__ = 30;
}

function gml_action_env1d(l_d, l_f) {
	var this = new mc_gml_action_env1d();
	this.d = l_d;
	this.f = l_f;
	return this
}

function mc_gml_action_env1d_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "f", "ch"];
	static __enumIndex__ = 31;
}

function gml_action_env1d_set(l_d, l_f, l_ch) {
	var this = new mc_gml_action_env1d_set();
	this.d = l_d;
	this.f = l_f;
	this.ch = l_ch;
	return this
}

function mc_gml_action_env1d_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "f"];
	static __enumIndex__ = 32;
}

function gml_action_env1d_aop(l_d, l_o, l_f) {
	var this = new mc_gml_action_env1d_aop();
	this.d = l_d;
	this.o = l_o;
	this.f = l_f;
	return this
}

function mc_gml_action_ds_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "argc", "get", "set", "out"];
	static __enumIndex__ = 33;
}

function gml_action_ds_aop(l_d, l_o, l_argc, l_get, l_set, l_out) {
	var this = new mc_gml_action_ds_aop();
	this.d = l_d;
	this.o = l_o;
	this.argc = l_argc;
	this.get = l_get;
	this.set = l_set;
	this.out = l_out;
	return this
}

function mc_gml_action_arg_const() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 34;
}

function gml_action_arg_const(l_d, l_i) {
	var this = new mc_gml_action_arg_const();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_arg_const_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 35;
}

function gml_action_arg_const_set(l_d, l_i) {
	var this = new mc_gml_action_arg_const_set();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_arg_const_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o", "i"];
	static __enumIndex__ = 36;
}

function gml_action_arg_const_aop(l_d, l_o, l_i) {
	var this = new mc_gml_action_arg_const_aop();
	this.d = l_d;
	this.o = l_o;
	this.i = l_i;
	return this
}

function mc_gml_action_arg_index() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 37;
}

function gml_action_arg_index(l_d) {
	var this = new mc_gml_action_arg_index();
	this.d = l_d;
	return this
}

function mc_gml_action_arg_index_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 38;
}

function gml_action_arg_index_set(l_d) {
	var this = new mc_gml_action_arg_index_set();
	this.d = l_d;
	return this
}

function mc_gml_action_arg_index_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o"];
	static __enumIndex__ = 39;
}

function gml_action_arg_index_aop(l_d, l_o) {
	var this = new mc_gml_action_arg_index_aop();
	this.d = l_d;
	this.o = l_o;
	return this
}

function mc_gml_action_arg_count() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 40;
}

function gml_action_arg_count(l_d) {
	var this = new mc_gml_action_arg_count();
	this.d = l_d;
	return this
}

function mc_gml_action_add_int() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 41;
}

function gml_action_add_int(l_d, l_i) {
	var this = new mc_gml_action_add_int();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_equ_op() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 42;
}

function gml_action_equ_op(l_d) {
	var this = new mc_gml_action_equ_op();
	this.d = l_d;
	return this
}

function mc_gml_action_neq_op() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 43;
}

function gml_action_neq_op(l_d) {
	var this = new mc_gml_action_neq_op();
	this.d = l_d;
	return this
}

function mc_gml_action_add_op() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 44;
}

function gml_action_add_op(l_d) {
	var this = new mc_gml_action_add_op();
	this.d = l_d;
	return this
}

function mc_gml_action_concat() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 45;
}

function gml_action_concat(l_d) {
	var this = new mc_gml_action_concat();
	this.d = l_d;
	return this
}

function mc_gml_action_bin_op() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o"];
	static __enumIndex__ = 46;
}

function gml_action_bin_op(l_d, l_o) {
	var this = new mc_gml_action_bin_op();
	this.d = l_d;
	this.o = l_o;
	return this
}

function mc_gml_action_un_op() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "o"];
	static __enumIndex__ = 47;
}

function gml_action_un_op(l_d, l_o) {
	var this = new mc_gml_action_un_op();
	this.d = l_d;
	this.o = l_o;
	return this
}

function mc_gml_action_in() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i_not"];
	static __enumIndex__ = 48;
}

function gml_action_in(l_d, l_i_not) {
	var this = new mc_gml_action_in();
	this.d = l_d;
	this.i_not = l_i_not;
	return this
}

function mc_gml_action_call_script() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "script", "argc"];
	static __enumIndex__ = 49;
}

function gml_action_call_script(l_d, l_script, l_argc) {
	var this = new mc_gml_action_call_script();
	this.d = l_d;
	this.script = l_script;
	this.argc = l_argc;
	return this
}

function mc_gml_action_call_script_id() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "argc"];
	static __enumIndex__ = 50;
}

function gml_action_call_script_id(l_d, l_argc) {
	var this = new mc_gml_action_call_script_id();
	this.d = l_d;
	this.argc = l_argc;
	return this
}

function mc_gml_action_call_script_with_array() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 51;
}

function gml_action_call_script_with_array(l_d) {
	var this = new mc_gml_action_call_script_with_array();
	this.d = l_d;
	return this
}

function mc_gml_action_call_script_at() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "script", "argc"];
	static __enumIndex__ = 52;
}

function gml_action_call_script_at(l_d, l_script, l_argc) {
	var this = new mc_gml_action_call_script_at();
	this.d = l_d;
	this.script = l_script;
	this.argc = l_argc;
	return this
}

function mc_gml_action_call_func() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "func", "argc", "args", "rest", "inst", "out"];
	static __enumIndex__ = 53;
}

function gml_action_call_func(l_d, l_func, l_argc, l_args, l_rest, l_inst, l_out) {
	var this = new mc_gml_action_call_func();
	this.d = l_d;
	this.func = l_func;
	this.argc = l_argc;
	this.args = l_args;
	this.rest = l_rest;
	this.inst = l_inst;
	this.out = l_out;
	return this
}

function mc_gml_action_jump() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 54;
}

function gml_action_jump(l_d, l_p) {
	var this = new mc_gml_action_jump();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_jump_if() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 55;
}

function gml_action_jump_if(l_d, l_p) {
	var this = new mc_gml_action_jump_if();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_jump_unless() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 56;
}

function gml_action_jump_unless(l_d, l_p) {
	var this = new mc_gml_action_jump_unless();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_bool_and() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 57;
}

function gml_action_bool_and(l_d, l_p) {
	var this = new mc_gml_action_bool_and();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_bool_or() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 58;
}

function gml_action_bool_or(l_d, l_p) {
	var this = new mc_gml_action_bool_or();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_switch() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "jumptable", "p"];
	static __enumIndex__ = 59;
}

function gml_action_switch(l_d, l_jumptable, l_p) {
	var this = new mc_gml_action_switch();
	this.d = l_d;
	this.jumptable = l_jumptable;
	this.p = l_p;
	return this
}

function mc_gml_action_repeat_jump() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 60;
}

function gml_action_repeat_jump(l_d, l_p) {
	var this = new mc_gml_action_repeat_jump();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_repeat_pre() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 61;
}

function gml_action_repeat_pre(l_d, l_p) {
	var this = new mc_gml_action_repeat_pre();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_with_pre() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 62;
}

function gml_action_with_pre(l_d) {
	var this = new mc_gml_action_with_pre();
	this.d = l_d;
	return this
}

function mc_gml_action_with_next() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "p"];
	static __enumIndex__ = 63;
}

function gml_action_with_next(l_d, l_p) {
	var this = new mc_gml_action_with_next();
	this.d = l_d;
	this.p = l_p;
	return this
}

function mc_gml_action_with_post() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 64;
}

function gml_action_with_post(l_d) {
	var this = new mc_gml_action_with_post();
	this.d = l_d;
	return this
}

function mc_gml_action_break() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "lp"];
	static __enumIndex__ = 65;
}

function gml_action_break(l_d, l_lp) {
	var this = new mc_gml_action_break();
	this.d = l_d;
	this.lp = l_lp;
	return this
}

function mc_gml_action_continue() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "lp"];
	static __enumIndex__ = 66;
}

function gml_action_continue(l_d, l_lp) {
	var this = new mc_gml_action_continue();
	this.d = l_d;
	this.lp = l_lp;
	return this
}

function mc_gml_action_return() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 67;
}

function gml_action_return(l_d) {
	var this = new mc_gml_action_return();
	this.d = l_d;
	return this
}

function mc_gml_action_result() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 68;
}

function gml_action_result(l_d) {
	var this = new mc_gml_action_result();
	this.d = l_d;
	return this
}

function mc_gml_action_wait() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 69;
}

function gml_action_wait(l_d) {
	var this = new mc_gml_action_wait();
	this.d = l_d;
	return this
}

function mc_gml_action_fork() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "out"];
	static __enumIndex__ = 70;
}

function gml_action_fork(l_d, l_out) {
	var this = new mc_gml_action_fork();
	this.d = l_d;
	this.out = l_out;
	return this
}

function mc_gml_action_ensure_array_local() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "i"];
	static __enumIndex__ = 71;
}

function gml_action_ensure_array_local(l_d, l_i) {
	var this = new mc_gml_action_ensure_array_local();
	this.d = l_d;
	this.i = l_i;
	return this
}

function mc_gml_action_ensure_array_global() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 72;
}

function gml_action_ensure_array_global(l_d, l_fd) {
	var this = new mc_gml_action_ensure_array_global();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_ensure_array_field() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "fd"];
	static __enumIndex__ = 73;
}

function gml_action_ensure_array_field(l_d, l_fd) {
	var this = new mc_gml_action_ensure_array_field();
	this.d = l_d;
	this.fd = l_fd;
	return this
}

function mc_gml_action_alarm() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 74;
}

function gml_action_alarm(l_d) {
	var this = new mc_gml_action_alarm();
	this.d = l_d;
	return this
}

function mc_gml_action_alarm_set() : mc_gml_action() constructor {
	static __enumParams__ = ["d"];
	static __enumIndex__ = 75;
}

function gml_action_alarm_set(l_d) {
	var this = new mc_gml_action_alarm_set();
	this.d = l_d;
	return this
}

function mc_gml_action_alarm_aop() : mc_gml_action() constructor {
	static __enumParams__ = ["d", "op"];
	static __enumIndex__ = 76;
}

function gml_action_alarm_aop(l_d, l_op) {
	var this = new mc_gml_action_alarm_aop();
	this.d = l_d;
	this.op = l_op;
	return this
}

#endregion

#region live

function live_script_get_index(l_name) {
	return asset_get_index(l_name);
}

function live_log_impl(l_v) {
	show_debug_message(l_v);
}

function live_log(l_s) {
	live_log_script("[live][" + date_datetime_string(gml_std_Date_now().date) + "] " + l_s);
}

function live_update_script_impl(l_name, l_ident, l_code) {
	var l_found = live_async_http_1_found;
	var l_macros = live_live_macros;
	var l_enums = live_live_enums;
	var l_acc = live_async_http_1_acc;
	var l_data = live_live_map.get(l_ident);
	if (l_data == undefined) {
		l_data = { program: undefined, ident: l_ident }
		live_live_map.set(l_ident, l_data);
	}
	var l_source = new gml_source(l_name, l_code, l_name);
	var l_tokens = gml_parser_run(l_source);
	if (l_tokens == undefined) {
		live_log("Error in " + l_name + ":");
		live_log(gml_parser_error_text);
		return 0;
	}
	l_found.clear();
	ds_list_clear(l_acc);
	if (live_live_globals != undefined) ds_list_add(l_acc, live_live_globals);
	l_source.tokens = l_tokens;
	var l_tokensLen = array_length(l_tokens);
	var l_tokensLen1 = l_tokensLen - 1;
	var l_tokensPos = -1;
	while (++l_tokensPos < l_tokensLen) {
		var l_tk = l_tokens[l_tokensPos];
		var l_id;
		if (l_tk.__enumIndex__/* gml_token */ == 10/* ident */) l_id = l_tk.id; else continue;
		if (l_found.exists(l_id)) continue;
		var l_src = l_macros.get(l_id);
		if (l_src != undefined) {
			ds_list_add(l_acc, l_src);
			l_found.set(l_id, true);
			continue;
		}
		l_src = l_enums.get(l_id);
		if (l_src != undefined) {
			if (l_tokensPos > 0) {
				if (l_tokens[l_tokensPos - 1].__enumIndex__/* gml_token */ == 5/* period */) continue;
			}
			if (l_tokensPos < l_tokensLen1) {
				var l__g3 = l_tokens[l_tokensPos + 1];
				if (l__g3.__enumIndex__/* gml_token */ == 5/* period */) var l__g4 = l__g3.d; else continue;
			}
			ds_list_add(l_acc, l_src);
			l_found.set(l_id, true);
			continue;
		}
		l_found.set(l_id, true);
	}
	ds_list_add(l_acc, l_source);
	var l_srci = ds_list_size(l_acc);
	var l_srcs = array_create(l_srci);
	while (--l_srci >= 0) {
		l_srcs[@l_srci] = l_acc[|l_srci];
	}
	var l_pg = new gml_program(l_srcs);
	if (!l_pg.is_ready) {
		live_log("Error in " + l_name + ":");
		live_log(l_pg.error_text);
		l_pg.destroy();
		return 0;
	}
	if (l_pg.error_text != undefined) {
		live_log("Warning in " + l_name + ":");
		live_log(l_pg.error_text);
	}
	l_pg.tag = l_name;
	live_log("Reloaded " + l_name + ".");
	if (l_data.program != undefined) l_data.program.destroy();
	l_data.program = l_pg;
}

function live_call(l_args1) {
	if (live_request_guid == undefined) {
		return false;
	} else {
		var l_stack = debug_get_callstack();
		var l_origin = l_stack[1];
		var l_data = live_live_map.get(l_origin);
		if (l_data == undefined) {
			var l_co = gml_std_string_pos_ext(l_origin, ":");
			if (l_co >= 0) {
				l_data = live_live_map.get(gml_std_string_substr(l_origin, 0, l_co));
				if (l_data != undefined) live_live_map.set(l_origin, l_data);
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
				var l_pg1 = l_pg.tag;
				var l_argc = argument_count;
				var l_vals = array_create(l_argc);
				while (--l_argc >= 0) {
					l_vals[@l_argc] = argument[l_argc];
				}
				var l_th = l_pg.call_v(l_pg1, l_vals, false);
				if (l_th.status == gml_thread_status.done) {
					live_result = l_th.result;
					return true;
				} else if (l_th.status == gml_thread_status.error) {
					live_result = 0;
					live_log("Runtime error: " + l_th.get_error());
					return true;
				} else return false;
			}
		}
	}
}

function live_defcall(l_args1) {
	var l_argc = argument_count - 1;
	var l_def = argument[l_argc];
	if (live_request_guid == undefined) {
		return false;
	} else {
		var l_stack = debug_get_callstack();
		var l_origin = l_stack[1];
		var l_data = live_live_map.get(l_origin);
		if (l_data == undefined) {
			var l_co = gml_std_string_pos_ext(l_origin, ":");
			if (l_co >= 0) {
				l_data = live_live_map.get(gml_std_string_substr(l_origin, 0, l_co));
				if (l_data != undefined) live_live_map.set(l_origin, l_data);
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
				var l_pg1 = l_pg.tag;
				var l_vals = array_create(l_argc);
				while (--l_argc >= 0) {
					l_vals[@l_argc] = argument[l_argc];
				}
				var l_th = l_pg.call_v(l_pg1, l_vals, false);
				if (l_th.status == gml_thread_status.done) {
					live_result = l_th.result;
					return true;
				} else if (l_th.status == gml_thread_status.error) {
					live_result = l_def;
					live_log("Runtime error: " + l_th.get_error());
					return true;
				} else return false;
			}
		}
	}
}

function live_call_ext(l_args1) {
	if (live_request_guid == undefined) {
		return false;
	} else {
		var l_stack = debug_get_callstack();
		var l_origin = l_stack[1];
		var l_data = live_live_map.get(l_origin);
		if (l_data == undefined) {
			var l_co = gml_std_string_pos_ext(l_origin, ":");
			if (l_co >= 0) {
				l_data = live_live_map.get(gml_std_string_substr(l_origin, 0, l_co));
				if (l_data != undefined) live_live_map.set(l_origin, l_data);
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
				var l_th = l_pg.call_v(l_pg.tag, gml_value_list_copy(l_args1), false);
				if (l_th.status == gml_thread_status.done) {
					live_result = l_th.result;
					return true;
				} else if (l_th.status == gml_thread_status.error) {
					live_result = 0;
					live_log("Runtime error: " + l_th.get_error());
					return true;
				} else return false;
			}
		}
	}
}

function live_defcall_ext(l_args1, l_def) {
	if (live_request_guid == undefined) {
		return false;
	} else {
		var l_stack = debug_get_callstack();
		var l_origin = l_stack[1];
		var l_data = live_live_map.get(l_origin);
		if (l_data == undefined) {
			var l_co = gml_std_string_pos_ext(l_origin, ":");
			if (l_co >= 0) {
				l_data = live_live_map.get(gml_std_string_substr(l_origin, 0, l_co));
				if (l_data != undefined) live_live_map.set(l_origin, l_data);
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
				var l_th = l_pg.call_v(l_pg.tag, gml_value_list_copy(l_args1), false);
				if (l_th.status == gml_thread_status.done) {
					live_result = l_th.result;
					return true;
				} else if (l_th.status == gml_thread_status.error) {
					live_result = l_def;
					live_log("Runtime error: " + l_th.get_error());
					return true;
				} else return false;
			}
		}
	}
}

function sprite_set_live(l_spr, l_live1) {
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

function room_set_live(l_rm, l_enable) {
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

function room_goto_live(l_rm) {
	if (ds_map_exists(live_live_rooms, l_rm) && ds_map_exists(live_live_room_data, l_rm)) {
		live_live_room = l_rm;
		if (!room_exists(live_blank_room)) throw gml_std_haxe_Exception_thrown("Please add a completely empty room, add live_room_start(); to it's Creation Code, and assign it to live_blank_room in obj_gmlive's create event.");
		room_goto(live_blank_room);
		return 0;
	}
	room_goto(l_rm);
}

function live_room_updated_impl(l_rm) {
	room_goto_live(l_rm);
}

function live_execute_string(l_gml_code) {
	var l_pg = new gml_program([new gml_source("execute_string", l_gml_code, "execute_string")]);
	var l_ok;
	live_custom_self = self;
	live_custom_other = other;
	if (l_pg.error_text == undefined) {
		var l_th = l_pg.call_v("execute_string", array_create(0));
		if (l_th.status == 3) {
			l_ok = true;
			live_result = l_th.result;
		} else {
			l_ok = false;
			live_result = l_th.error_text;
			if (live_result == undefined) live_result = "(unknown error)";
		}
	} else {
		l_ok = false;
		live_result = l_pg.error_text;
	}
	l_pg.destroy();
	return l_ok;
}

function live_snippet_create(l_gml_code, l_name) {
	if (l_name == undefined) l_name = "snippet";
	if (false) throw argument[1];
	var l_pg = new gml_program([new gml_source(l_name, l_gml_code, "")]);
	if (l_pg.error_text == undefined) {
		return l_pg;
	} else {
		live_result = l_pg.error_text;
		l_pg.destroy();
		return undefined;
	}
}

function live_snippet_destroy(l_snippet) {
	if (l_snippet.scripts != undefined) l_snippet.destroy(); else throw gml_std_haxe_Exception_thrown("This snippet is already destroyed");
}

function live_snippet_call(l_snippet, l_args1) {
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
	var l_th = l_snippet.call_v("", l_argv, false);
	if (l_th.status == 3) {
		live_result = l_th.result;
		return true;
	} else {
		live_result = l_th.error_text;
		if (live_result == undefined) live_result = "(unknown error)";
		return false;
	}
}

function live_update() {
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

function live_init(l_updateRate, l_url, l_password) {
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
		gml_func_script_id.set(l_s, l_i);
	}
}

function live_preinit_project_fake_call() {
	return false;
}

function live_preinit_project() {
	gml_const_add("live_result", false);
	gml_func_add("live_call(...):", live_preinit_project_fake_call);
	gml_func_add("live_defcall(...):", live_preinit_project_fake_call);
	gml_func_add("live_call_ext(...):", live_preinit_project_fake_call);
	gml_func_add("live_defcall_ext(...):", live_preinit_project_fake_call);
	gml_func_add("live_execute_string(:string):", live_execute_string);
	gml_func_add("sprite_set_live(spr:index, status:bool)", sprite_set_live);
	gml_func_add("room_goto_live(rm:index)", room_goto_live);
}

#endregion

#region live.room_loader

function live_room_loader_run_cc(l_ccRaw, l_ccPath) {
	var l_ccProgram = new gml_program([new gml_source(l_ccPath, l_ccRaw, l_ccPath)]);
	var l_ccError = l_ccProgram.error_text;
	if (l_ccError == undefined) {
		var l_ccThread = l_ccProgram.call_v(l_ccPath, array_create(0));
		if (l_ccThread.status != gml_thread_status.done) {
			l_ccError = l_ccThread.error_text;
			if (l_ccError == undefined) l_ccError = l_ccPath + ": unknown execution error";
		}
	}
	l_ccProgram.destroy();
	if (l_ccError != undefined) live_log(l_ccError);
}

function live_room_loader_init_physics(l_phs) {
	if (l_phs == undefined) return 0;
	if (l_phs.PhysicsWorld) {
		live_room_loader_use_physics = true;
		physics_world_create(l_phs.PhysicsWorldPixToMeters);
		physics_world_gravity(l_phs.PhysicsWorldGravityX, l_phs.PhysicsWorldGravityY);
	} else live_room_loader_use_physics = false;
}

function live_room_loader_anim_speed(l_val, l_type) {
	if (l_type == "0") return l_val / room_speed; else return l_val;
}

function live_room_loader_run_yy_inst_cc(l_inst, l_qinst) {
	with (l_inst) {
		var l_rname = l_qinst.name;
		event_perform(14, 0);
		var l_rcc = l_qinst.propertyCode;
		if (l_rcc != undefined && l_rcc != "") live_room_loader_run_cc(l_rcc, l_rname + ":Properties");
		event_perform(ev_create, 0);
		l_rcc = l_qinst.creationCode;
		if (l_rcc != undefined && l_rcc != "") live_room_loader_run_cc(l_rcc, l_rname + ":CreationCode");
	}
}

function live_room_loader_add_layer(l_ql) {
	var l_ql_depth = l_ql.depth;
	var l_ql_name = l_ql.name;
	var l_rl, l_i, l_n, l_f, l_s, l_aval, l_rx, l_ry;
	switch (l_ql.modelName) {
		case "GMRLayer":
			l_rl = layer_get_id(l_ql_name);
			if (l_rl == -1) {
				l_rl = layer_create(l_ql_depth, l_ql_name);
				if (l_ql.visible != undefined) layer_set_visible(l_rl, l_ql.visible);
			}
			var l_sublayers = l_ql.layers;
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
					if (l_ql.visible != undefined) layer_set_visible(l_rl, l_ql.visible);
				}
				var l_qb = l_ql;
				l_s = l_qb.sprite;
				var l_rb = layer_background_create(l_rl, (l_s != undefined ? asset_get_index(l_s) : -1));
				l_aval = l_qb.color;
				if (l_aval != undefined) {
					layer_background_blend(l_rb, (l_aval & 16777215));
					layer_background_alpha(l_rb, ((l_aval >> 24) / 255));
				}
				l_aval = l_qb.htiled;
				if (l_aval != undefined) layer_background_htiled(l_rb, l_aval); else layer_background_htiled(l_rb, true);
				l_aval = l_qb.vtiled;
				if (l_aval != undefined) layer_background_vtiled(l_rb, l_aval); else layer_background_vtiled(l_rb, true);
				l_aval = l_qb.stretch;
				if (l_aval != undefined) layer_background_stretch(l_rb, l_aval); else layer_background_stretch(l_rb, false);
				l_aval = l_qb.animationFPS;
				if (l_aval != undefined) layer_background_speed(l_rb, live_room_loader_anim_speed(l_aval, l_qb.animationSpeedType));
				l_aval = l_qb.x;
				if (l_aval == undefined) l_aval = 0;
				layer_x(l_rl, live_room_loader_room_x + l_aval);
				l_aval = l_qb.y;
				if (l_aval == undefined) l_aval = 0;
				layer_y(l_rl, live_room_loader_room_y + l_aval);
			}
			break;
		case "GMRTileLayer":
			if (live_room_loader_apply_tiles) {
				l_rl = layer_get_id(l_ql_name);
				if (l_rl == -1) {
					l_rl = layer_create(l_ql_depth, l_ql_name);
					if (l_ql.visible != undefined) layer_set_visible(l_rl, l_ql.visible);
				}
				var l_qt = l_ql;
				var l_qtt = l_qt.tiles;
				var l_qtw = l_qtt.SerialiseWidth;
				var l_qth = l_qtt.SerialiseHeight;
				var l_rt = layer_tilemap_create(l_rl, live_room_loader_room_x + l_qt.x, live_room_loader_room_y + l_qt.y, asset_get_index(l_qt.tileset), l_qtw, l_qth);
				var l_qtd = l_qtt.TileSerialiseData;
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
					if (l_ql.visible != undefined) layer_set_visible(l_rl, l_ql.visible);
				}
				var l_qi = l_ql;
				l_rx = live_room_loader_room_x;
				l_ry = live_room_loader_room_y;
				var l_instances = l_qi.instances;
				l_n = ds_list_size(l_instances);
				var l_base = live_blank_object;
				if (l_n != 0) {
					if (!object_exists(l_base)) throw gml_std_haxe_Exception_thrown("Please add a blank object and set live_blank_object to point at it in obj_gmlive's create event.");
				}
				var l_lco = live_room_loader_object_cache;
				l_i = -1;
				while (++l_i < l_n) {
					var l_qinst = l_instances[|l_i];
					var l_rnext = instance_create_layer((l_rx + l_qinst.x), (l_ry + l_qinst.y), l_rl, l_base);
					var l_qid = l_qinst.name;
					live_room_loader_inst_map_yy[?l_qid] = l_qinst;
					live_room_loader_inst_map_gml[?l_qid] = l_rnext;
					with (l_rnext) {
						gml_const_add(l_qinst.name, self);
						l_aval = l_qinst.rotation;
						if (l_aval != undefined) self.image_angle = l_aval;
						l_aval = l_qinst.scaleX;
						if (l_aval != undefined) self.image_xscale = l_aval;
						l_aval = l_qinst.scaleY;
						if (l_aval != undefined) self.image_yscale = l_aval;
						l_aval = l_qinst.imageIndex;
						if (l_aval != undefined) self.image_index = l_aval;
						l_aval = l_qinst.imageSpeed;
						if (l_aval != undefined) self.image_speed = l_aval;
						l_f = l_qinst.color;
						if (l_f != undefined) {
							self.image_blend = (l_f & 16777215);
							self.image_alpha = (l_f >> 24) / 255;
						}
						l_s = l_qinst.obj;
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
					if (l_ql.visible != undefined) layer_set_visible(l_rl, l_ql.visible);
				}
				var l_sprites = l_ql.assets;
				l_n = ds_list_size(l_sprites);
				var l_lcs = live_room_loader_sprite_cache;
				l_rx = live_room_loader_room_x;
				l_ry = live_room_loader_room_y;
				l_i = -1;
				while (++l_i < l_n) {
					var l_qspr = l_sprites[|l_i];
					l_s = l_qspr.sprite;
					var l_rspr = l_rx + l_qspr.x;
					var l_rspr1 = l_ry + l_qspr.y;
					var l_id = l_lcs[?l_s];
					if (l_id == undefined) {
						l_id = asset_get_index(l_s);
						l_lcs[?l_s] = l_id;
					}
					var l_rspr2 = layer_sprite_create(l_rl, l_rspr, l_rspr1, l_id);
					l_aval = l_qspr.frameIndex;
					if (l_aval != undefined) layer_sprite_index(l_rspr2, l_aval);
					l_aval = l_qspr.scaleX;
					if (l_aval != undefined) layer_sprite_xscale(l_rspr2, l_aval);
					l_aval = l_qspr.scaleY;
					if (l_aval != undefined) layer_sprite_yscale(l_rspr2, l_aval);
					l_aval = l_qspr.rotation;
					if (l_aval != undefined) layer_sprite_angle(l_rspr2, l_aval);
					l_f = l_qspr.color;
					if (l_f != undefined) {
						layer_sprite_blend(l_rspr2, (l_f & 16777215));
						layer_sprite_alpha(l_rspr2, ((l_f >> 24) / 255));
					}
					if (l_qspr.userdefined_animFPS) layer_sprite_speed(l_rspr2, live_room_loader_anim_speed(l_qspr.animationFPS, l_qspr.animationSpeedType));
				}
			}
			break;
	}
}

function live_room_loader_run_impl2(l_rm) {
	live_log("Loading " + l_rm.name + "...");
	ds_map_clear(live_room_loader_inst_map_gml);
	ds_map_clear(live_room_loader_inst_map_yy);
	if (live_room_loader_apply_settings) {
		room_width = l_rm.roomSettings.Width;
		room_height = l_rm.roomSettings.Height;
		live_room_loader_init_physics(l_rm.physicsSettings);
	}
	var l_aval;
	var l_lrs = l_rm.layers;
	var l_lrk = ds_list_size(l_lrs);
	while (--l_lrk >= 0) {
		live_room_loader_add_layer(l_lrs[|l_lrk]);
	}
	var l__g_list = l_rm.instanceCreationOrderIDs;
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
		l_aval = l_rm.viewSettings.enableViews;
		if (l_aval != undefined) view_enabled = l_aval; else view_enabled = false;
		var l_qvs = l_rm.views;
		if (l_qvs != undefined) {
			var l_i = 0;
			for (var l__g1 = ds_list_size(l_qvs); l_i < l__g1; l_i++) {
				var l_qv = l_qvs[|l_i];
				if (l_qv == undefined) continue;
				var l_rv = l_i;
				l_aval = l_qv.visible;
				if (l_aval != undefined) view_visible[l_rv] = l_aval; else view_visible[l_rv] = false;
				l_aval = l_qv.xport;
				if (l_aval != undefined) view_xport[l_rv] = l_aval; else view_xport[l_rv] = 0;
				l_aval = l_qv.yport;
				if (l_aval != undefined) view_yport[l_rv] = l_aval; else view_yport[l_rv] = 0;
				l_aval = l_qv.wport;
				if (l_aval != undefined) view_wport[l_rv] = l_aval; else view_wport[l_rv] = 1024;
				l_aval = l_qv.hport;
				if (l_aval != undefined) view_hport[l_rv] = l_aval; else view_hport[l_rv] = 768;
				var l_rc = view_camera[l_rv];
				var l_vx, l_vy;
				l_vx = l_qv.xview;
				if (l_vx == undefined) l_vx = 0;
				l_vy = l_qv.yview;
				if (l_vy == undefined) l_vy = 0;
				camera_set_view_pos(l_rc, live_room_loader_room_x + l_vx, live_room_loader_room_y + l_vy);
				l_vx = l_qv.wview;
				if (l_vx == undefined) l_vx = 1024;
				l_vy = l_qv.hview;
				if (l_vy == undefined) l_vy = 768;
				camera_set_view_size(l_rc, l_vx, l_vy);
				l_aval = l_qv.obj;
				if (l_aval != undefined) camera_set_view_target(l_rc, asset_get_index(l_aval));
				l_vx = l_qv.hspeed;
				if (l_vx == undefined) l_vx = -1;
				l_vy = l_qv.vspeed;
				if (l_vy == undefined) l_vy = -1;
				camera_set_view_speed(l_rc, l_vx, l_vy);
				l_vx = l_qv.hborder;
				if (l_vx == undefined) l_vx = 32;
				l_vy = l_qv.vborder;
				if (l_vy == undefined) l_vy = 32;
				camera_set_view_border(l_rc, l_vx, l_vy);
			}
		}
	}
	var l_s = l_rm.creationCode;
	if (l_s != undefined && l_s != "") live_room_loader_run_cc(l_s, l_rm.name + ":CreationCode");
}

function live_room_start() {
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

#endregion

#region gml.link

function gml_link(l_value, l_next) constructor {
	static value = undefined;
	static next = undefined;
	self.value = l_value;
	self.next = l_next;
	//
}

#endregion

#region gml.stack

function gml_stack_push(l_this1, l_v) {
	var l_i = l_this1[0] + 1;
	if (l_i >= array_length(l_this1)) l_this1[@array_length(l_this1) * 2] = 0;
	l_this1[@l_i] = l_v;
	l_this1[@0] = l_i;
}

function gml_stack_pop(l_this1) {
	var l_i = l_this1[0];
	var l_r = l_this1[l_i];
	l_this1[@l_i] = 0;
	l_this1[@0] = l_i - 1;
	return l_r;
}

function gml_stack_pop_multi(l_this1, l_n) {
	var l_arr = [];
	var l_k = l_this1[0] - l_n;
	array_copy(l_arr, 0, l_this1, l_k + 1, l_n);
	array_copy(l_this1, l_k + 1, gml_stack_fill_value_arr, 0, l_n);
	l_this1[@0] = l_k;
	return l_arr;
}

function gml_stack_discard_multi(l_this1, l_n) {
	var l_i = l_this1[0] - l_n;
	array_copy(l_this1, l_i + 1, gml_stack_fill_value_arr, 0, l_n);
	l_this1[@0] = l_i;
}

#endregion

#region gml.action_list

function gml_action_list_print_action(l_act) {
	var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
	var l_r = "L" + string(l_pos.row) + "\tc" + string(l_pos.col) + "\t" + gml_std_Type_enumConstructor(l_act);
	switch (l_act.__enumIndex__/* gml_action */) {
		case 49/* call_script */: return l_r + "(" + l_act.script.name + ", " + string(l_act.argc) + ")";
		case 8/* object_decl */: return l_r + "(" + gml_std_gml_internal_ArrayImpl_join(l_act.keys, ",") + ")";
		case 53/* call_func */:
			var l_args1 = l_act.args;
			l_r += "(\"" + script_get_name(l_act.func) + "\", " + string(l_act.argc) + ", [";
			var l_sep = false;
			var l__g = 0;
			while (l__g < array_length(l_args1)) {
				var l_f = l_args1[l__g];
				l__g++;
				if (l_sep) l_r += ","; else l_sep = true;
				l_r += script_get_name(l_f);
			}
			l_r += "], " + script_get_name(l_act.rest) + (", " + gml_std_Std_stringify(l_act.inst) + ", " + (string(l_act.out)) + ")");
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

function gml_action_list_print(l_this1) {
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

function gml_object_init() {
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
	var l_fds = gml_object_fields[l_object1];
	if (!l_fds.exists(l_field)) ds_list_add(gml_object_field_names[l_object1], l_field);
	l_fds.set(l_field, l_func);
	var l_children = gml_object_children[l_object1];
	var l_i = 0;
	for (var l__g1 = array_length(l_children); l_i < l__g1; l_i++) {
		var l_child = l_children[l_i];
		var l_m = gml_object_fields[l_child];
		if (!l_m.exists(l_field)) {
			l_m.set(l_field, l_func);
			ds_list_add(gml_object_field_names[l_child], l_field);
		}
	}
}

function gml_object_setup(l_object1, l_access) {
	var l_acc = gml_object_access;
	l_acc[@l_object1] = l_access;
	var l_children = gml_object_children[l_object1];
	var l_i = 0;
	for (var l__g1 = array_length(l_children); l_i < l__g1; l_i++) {
		l_acc[@l_children[l_i]] = l_access;
	}
}

#endregion

#region vm._gml_class.gml_class_impl_

function gml_class_else(l_q, l_inst) {
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
}

#endregion

#region gml.thread_scope

function gml_thread_scope(l_actions, l_offset, l_args1, l_locals, l_self1, l_other1, l_next) constructor {
	static actions = undefined;
	static offset = undefined;
	static args = undefined;
	static locals = undefined;
	static stack = undefined;
	static inst = undefined;
	static i_with = undefined;
	static xhdl = undefined;
	static program = undefined;
	static next = undefined;
	self.xhdl = undefined;
	self.i_with = undefined;
	self.stack = array_create(16);
	self.actions = l_actions;
	self.offset = l_offset;
	self.args = l_args1;
	self.locals = l_locals;
	self.inst = [2, l_other1, l_self1];
	self.next = l_next;
	static __class__ = mt_gml_thread_scope;
}
mt_gml_thread_scope.i_constructor = gml_thread_scope;

#endregion

#region gml.thread

function gml_thread(l_program, l_actions, l_args1, l_locals, l_self1, l_other1, l_offset) constructor {
	static result = undefined;
	static status = undefined;
	static callback = undefined;
	static scope = undefined;
	static wait_time = undefined;
	static time_tag = undefined;
	static error_text = undefined;
	static error_pos = undefined;
	static get_error = function() {
		return self.error_text;
	}
	static get_error_ptr = function() {
		if (self.error_pos != undefined) return self.error_pos.to_string(); else return "?";
	}
	static stack_error = function(l_pos, l_e) {
		var l_s = "[error] " + gml_std_Std_stringify(l_e) + "\n called from " + l_pos.to_string();
		var l_q = self.scope;
		if (l_q != undefined) for (l_q = self.scope.next; l_q != undefined; l_q = l_q.next) {
			var l_p = l_q.offset;
			l_s += "\n called from " + gml_std_haxe_enum_tools_getParameter(l_q.actions[|(l_p > 0 ? l_p - 1 : 0)], 0).to_string();
		}
		return l_s;
	}
	static proc_error = function(l_text, l_act) {
		var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
		self.error_text = self.stack_error(l_pos, l_text);
		self.error_pos = l_pos;
		self.status = gml_thread_status.error;
		return false;
	}
	static proc_error2 = function(l_e, l_act) {
		var l_pos = gml_std_haxe_enum_tools_getParameter(l_act, 0);
		self.error_text = self.stack_error(l_pos, l_e);
		self.error_pos = l_pos;
		self.status = gml_thread_status.error;
		return 1/* gml_thread_proc_result.error */;
	}
	static exec = function() {
		var l_previous = gml_thread_current;
		gml_thread_current = self;
		var l_stack;
		var l_scope = self.scope;
		var l_actions, l_pos, l_len;
		l_actions = l_scope.actions;
		l_len = ds_list_size(l_actions);
		l_stack = l_scope.stack;
		var l__callback;
		self.status = gml_thread_status.running;
		while (true) {
			var l_proc, l_act;
			while (l_scope.offset < l_len) {
				var l_pos = l_scope.offset;
				l_act = l_actions[|l_pos];
				l_scope.offset = l_pos + 1;
				try {
					var l_ar = vm_v2_gml_thread_v2_handlers[l_act.__enumIndex__](self, l_act);
					if (l_ar == 1/* gml_thread_proc_result.error */ || self.status == gml_thread_status.error) {
						break;
					} else if (l_ar == 3/* gml_thread_proc_result.sync_scope */) {
						l_scope = self.scope;
						l_actions = l_scope.actions;
						l_len = ds_list_size(l_actions);
						l_stack = l_scope.stack;
					}
				} catch (_g) {
					self.proc_error(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act);
					break;
				}
			}
			if (self.status == gml_thread_status.error) {
				l_proc = false;
				while (l_scope != undefined) {
					if (l_scope.xhdl != undefined) {
						l_scope.offset = l_scope.xhdl.value;
						self.status = gml_thread_status.running;
						break;
					} else {
						l_scope = l_scope.next;
						l_proc = true;
					}
				}
				if (l_scope == undefined) {
					self.result = undefined;
					l__callback = self.callback;
					if (l__callback != undefined) l__callback(self);
					break;
				} else if (l_proc) {
					if (l_scope.i_with != undefined) gml_with_scope_destroy(l_scope.i_with);
					l_actions = l_scope.actions;
					l_len = ds_list_size(l_actions);
					l_stack = l_scope.stack;
				}
			} else if (l_scope.offset >= l_len && self.status == gml_thread_status.running) {
				if (l_scope.i_with != undefined) gml_with_scope_destroy(l_scope.i_with);
				if (l_stack[0] > 0) self.result = l_stack[l_stack[0]]; else self.result = 0;
				l_scope = l_scope.next;
				if (l_scope != undefined) {
					self.scope = l_scope;
					l_actions = l_scope.actions;
					l_len = ds_list_size(l_actions);
					l_stack = l_scope.stack;
				} else {
					self.status = gml_thread_status.done;
					l__callback = self.callback;
					if (l__callback != undefined) l__callback(self);
					break;
				}
			} else break;
		}
		self.scope = l_scope;
		gml_thread_current = l_previous;
	}
	static fork = function() {
		var l_q = self.scope;
		var l_q_inst = l_q.inst;
		var l_r = new gml_thread(l_q.program, l_q.actions, gml_value_list_copy(l_q.args), gml_value_list_copy(l_q.locals), l_q_inst[l_q_inst[0]], l_q_inst[l_q_inst[0] - 1], l_q.offset);
		l_r.callback = self.callback;
		var l_n = l_r.scope;
		l_n.inst = gml_std_gml_internal_ArrayImpl_copy(l_q_inst);
		l_n.stack = gml_std_gml_internal_ArrayImpl_copy(l_q.stack);
		l_n.i_with = gml_with_scope_copy(l_q.i_with);
		return l_r;
	}
	if (l_offset == undefined) l_offset = 0;
	if (false) throw argument[6];
	self.error_pos = undefined;
	self.error_text = undefined;
	self.time_tag = undefined;
	self.callback = undefined;
	self.status = gml_thread_status.none;
	self.result = undefined;
	if (l_self1 == undefined) l_self1 = live_custom_self;
	if (l_other1 == undefined) l_other1 = live_custom_other;
	self.scope = new gml_thread_scope(l_actions, l_offset, l_args1, l_locals, l_self1, l_other1, undefined);
	self.scope.program = l_program;
	//
}

function gml_thread_error(l_text) {
	throw gml_std_haxe_Exception_thrown(l_text);
}

#endregion

#region vm.gml_thread_exec

function vm_gml_thread_exec_call_fn0(l_f, l_w, l_n) {
	switch (l_n) {
		case 0: return l_f();
		case 1: return l_f(l_w[0]);
		case 2: return l_f(l_w[0], l_w[1]);
		case 3: return l_f(l_w[0], l_w[1], l_w[2]);
		case 4: return l_f(l_w[0], l_w[1], l_w[2], l_w[3]);
		case 5: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4]);
		case 6: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5]);
		case 7: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn1(l_f, l_w, l_n) {
	switch (l_n) {
		case 8: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7]);
		case 9: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8]);
		case 10: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9]);
		case 11: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10]);
		case 12: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11]);
		case 13: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12]);
		case 14: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13]);
		case 15: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn2(l_f, l_w, l_n) {
	switch (l_n) {
		case 16: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15]);
		case 17: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16]);
		case 18: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17]);
		case 19: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18]);
		case 20: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19]);
		case 21: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20]);
		case 22: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21]);
		case 23: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn3(l_f, l_w, l_n) {
	switch (l_n) {
		case 24: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23]);
		case 25: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24]);
		case 26: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25]);
		case 27: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26]);
		case 28: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27]);
		case 29: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28]);
		case 30: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29]);
		case 31: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn4(l_f, l_w, l_n) {
	switch (l_n) {
		case 32: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31]);
		case 33: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32]);
		case 34: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33]);
		case 35: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34]);
		case 36: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35]);
		case 37: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36]);
		case 38: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37]);
		case 39: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn5(l_f, l_w, l_n) {
	switch (l_n) {
		case 40: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39]);
		case 41: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40]);
		case 42: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41]);
		case 43: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42]);
		case 44: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43]);
		case 45: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44]);
		case 46: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45]);
		case 47: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn6(l_f, l_w, l_n) {
	switch (l_n) {
		case 48: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47]);
		case 49: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48]);
		case 50: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49]);
		case 51: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50]);
		case 52: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51]);
		case 53: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52]);
		case 54: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53]);
		case 55: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn7(l_f, l_w, l_n) {
	switch (l_n) {
		case 56: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55]);
		case 57: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56]);
		case 58: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57]);
		case 59: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58]);
		case 60: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59]);
		case 61: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60]);
		case 62: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61]);
		case 63: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn8(l_f, l_w, l_n) {
	switch (l_n) {
		case 64: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63]);
		case 65: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64]);
		case 66: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65]);
		case 67: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66]);
		case 68: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67]);
		case 69: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68]);
		case 70: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69]);
		case 71: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn9(l_f, l_w, l_n) {
	switch (l_n) {
		case 72: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71]);
		case 73: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72]);
		case 74: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73]);
		case 75: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74]);
		case 76: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75]);
		case 77: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76]);
		case 78: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77]);
		case 79: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn10(l_f, l_w, l_n) {
	switch (l_n) {
		case 80: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79]);
		case 81: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80]);
		case 82: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81]);
		case 83: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82]);
		case 84: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83]);
		case 85: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84]);
		case 86: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85]);
		case 87: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn11(l_f, l_w, l_n) {
	switch (l_n) {
		case 88: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87]);
		case 89: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88]);
		case 90: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89]);
		case 91: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90]);
		case 92: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91]);
		case 93: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92]);
		case 94: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93]);
		case 95: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn12(l_f, l_w, l_n) {
	switch (l_n) {
		case 96: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95]);
		case 97: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96]);
		case 98: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97]);
		case 99: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98]);
		case 100: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99]);
		case 101: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100]);
		case 102: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101]);
		case 103: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn13(l_f, l_w, l_n) {
	switch (l_n) {
		case 104: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103]);
		case 105: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104]);
		case 106: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105]);
		case 107: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106]);
		case 108: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107]);
		case 109: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108]);
		case 110: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109]);
		case 111: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn14(l_f, l_w, l_n) {
	switch (l_n) {
		case 112: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111]);
		case 113: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112]);
		case 114: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113]);
		case 115: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114]);
		case 116: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115]);
		case 117: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116]);
		case 118: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117]);
		case 119: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn15(l_f, l_w, l_n) {
	switch (l_n) {
		case 120: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119]);
		case 121: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120]);
		case 122: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121]);
		case 123: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122]);
		case 124: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123]);
		case 125: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124]);
		case 126: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125]);
		case 127: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn16(l_f, l_w, l_n) {
	switch (l_n) {
		case 128: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127]);
		case 129: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128]);
		case 130: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129]);
		case 131: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130]);
		case 132: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131]);
		case 133: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132]);
		case 134: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133]);
		case 135: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn17(l_f, l_w, l_n) {
	switch (l_n) {
		case 136: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135]);
		case 137: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136]);
		case 138: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137]);
		case 139: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138]);
		case 140: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139]);
		case 141: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140]);
		case 142: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141]);
		case 143: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn18(l_f, l_w, l_n) {
	switch (l_n) {
		case 144: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143]);
		case 145: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144]);
		case 146: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145]);
		case 147: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146]);
		case 148: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147]);
		case 149: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148]);
		case 150: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149]);
		case 151: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn19(l_f, l_w, l_n) {
	switch (l_n) {
		case 152: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151]);
		case 153: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152]);
		case 154: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153]);
		case 155: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154]);
		case 156: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155]);
		case 157: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156]);
		case 158: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157]);
		case 159: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn20(l_f, l_w, l_n) {
	switch (l_n) {
		case 160: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159]);
		case 161: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160]);
		case 162: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161]);
		case 163: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162]);
		case 164: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163]);
		case 165: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164]);
		case 166: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165]);
		case 167: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn21(l_f, l_w, l_n) {
	switch (l_n) {
		case 168: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167]);
		case 169: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168]);
		case 170: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169]);
		case 171: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170]);
		case 172: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171]);
		case 173: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172]);
		case 174: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173]);
		case 175: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn22(l_f, l_w, l_n) {
	switch (l_n) {
		case 176: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175]);
		case 177: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176]);
		case 178: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177]);
		case 179: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178]);
		case 180: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179]);
		case 181: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180]);
		case 182: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181]);
		case 183: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn23(l_f, l_w, l_n) {
	switch (l_n) {
		case 184: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183]);
		case 185: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184]);
		case 186: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185]);
		case 187: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186]);
		case 188: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187]);
		case 189: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188]);
		case 190: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189]);
		case 191: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call_fn24(l_f, l_w, l_n) {
	switch (l_n) {
		case 192: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191]);
		case 193: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192]);
		case 194: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193]);
		case 195: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193], l_w[194]);
		case 196: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193], l_w[194], l_w[195]);
		case 197: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193], l_w[194], l_w[195], l_w[196]);
		case 198: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193], l_w[194], l_w[195], l_w[196], l_w[197]);
		case 199: return l_f(l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6], l_w[7], l_w[8], l_w[9], l_w[10], l_w[11], l_w[12], l_w[13], l_w[14], l_w[15], l_w[16], l_w[17], l_w[18], l_w[19], l_w[20], l_w[21], l_w[22], l_w[23], l_w[24], l_w[25], l_w[26], l_w[27], l_w[28], l_w[29], l_w[30], l_w[31], l_w[32], l_w[33], l_w[34], l_w[35], l_w[36], l_w[37], l_w[38], l_w[39], l_w[40], l_w[41], l_w[42], l_w[43], l_w[44], l_w[45], l_w[46], l_w[47], l_w[48], l_w[49], l_w[50], l_w[51], l_w[52], l_w[53], l_w[54], l_w[55], l_w[56], l_w[57], l_w[58], l_w[59], l_w[60], l_w[61], l_w[62], l_w[63], l_w[64], l_w[65], l_w[66], l_w[67], l_w[68], l_w[69], l_w[70], l_w[71], l_w[72], l_w[73], l_w[74], l_w[75], l_w[76], l_w[77], l_w[78], l_w[79], l_w[80], l_w[81], l_w[82], l_w[83], l_w[84], l_w[85], l_w[86], l_w[87], l_w[88], l_w[89], l_w[90], l_w[91], l_w[92], l_w[93], l_w[94], l_w[95], l_w[96], l_w[97], l_w[98], l_w[99], l_w[100], l_w[101], l_w[102], l_w[103], l_w[104], l_w[105], l_w[106], l_w[107], l_w[108], l_w[109], l_w[110], l_w[111], l_w[112], l_w[113], l_w[114], l_w[115], l_w[116], l_w[117], l_w[118], l_w[119], l_w[120], l_w[121], l_w[122], l_w[123], l_w[124], l_w[125], l_w[126], l_w[127], l_w[128], l_w[129], l_w[130], l_w[131], l_w[132], l_w[133], l_w[134], l_w[135], l_w[136], l_w[137], l_w[138], l_w[139], l_w[140], l_w[141], l_w[142], l_w[143], l_w[144], l_w[145], l_w[146], l_w[147], l_w[148], l_w[149], l_w[150], l_w[151], l_w[152], l_w[153], l_w[154], l_w[155], l_w[156], l_w[157], l_w[158], l_w[159], l_w[160], l_w[161], l_w[162], l_w[163], l_w[164], l_w[165], l_w[166], l_w[167], l_w[168], l_w[169], l_w[170], l_w[171], l_w[172], l_w[173], l_w[174], l_w[175], l_w[176], l_w[177], l_w[178], l_w[179], l_w[180], l_w[181], l_w[182], l_w[183], l_w[184], l_w[185], l_w[186], l_w[187], l_w[188], l_w[189], l_w[190], l_w[191], l_w[192], l_w[193], l_w[194], l_w[195], l_w[196], l_w[197], l_w[198]);
		default: return undefined;
	}
}

function vm_gml_thread_exec_call(l_fn, l_args1, l_argc) {
	switch (l_argc >> 3) {
		case 0: return vm_gml_thread_exec_call_fn0(l_fn, l_args1, l_argc);
		case 1: return vm_gml_thread_exec_call_fn1(l_fn, l_args1, l_argc);
		case 2: return vm_gml_thread_exec_call_fn2(l_fn, l_args1, l_argc);
		case 3: return vm_gml_thread_exec_call_fn3(l_fn, l_args1, l_argc);
		case 4: return vm_gml_thread_exec_call_fn4(l_fn, l_args1, l_argc);
		case 5: return vm_gml_thread_exec_call_fn5(l_fn, l_args1, l_argc);
		case 6: return vm_gml_thread_exec_call_fn6(l_fn, l_args1, l_argc);
		case 7: return vm_gml_thread_exec_call_fn7(l_fn, l_args1, l_argc);
		case 8: return vm_gml_thread_exec_call_fn8(l_fn, l_args1, l_argc);
		case 9: return vm_gml_thread_exec_call_fn9(l_fn, l_args1, l_argc);
		case 10: return vm_gml_thread_exec_call_fn10(l_fn, l_args1, l_argc);
		case 11: return vm_gml_thread_exec_call_fn11(l_fn, l_args1, l_argc);
		case 12: return vm_gml_thread_exec_call_fn12(l_fn, l_args1, l_argc);
		case 13: return vm_gml_thread_exec_call_fn13(l_fn, l_args1, l_argc);
		case 14: return vm_gml_thread_exec_call_fn14(l_fn, l_args1, l_argc);
		case 15: return vm_gml_thread_exec_call_fn15(l_fn, l_args1, l_argc);
		case 16: return vm_gml_thread_exec_call_fn16(l_fn, l_args1, l_argc);
		case 17: return vm_gml_thread_exec_call_fn17(l_fn, l_args1, l_argc);
		case 18: return vm_gml_thread_exec_call_fn18(l_fn, l_args1, l_argc);
		case 19: return vm_gml_thread_exec_call_fn19(l_fn, l_args1, l_argc);
		case 20: return vm_gml_thread_exec_call_fn20(l_fn, l_args1, l_argc);
		case 21: return vm_gml_thread_exec_call_fn21(l_fn, l_args1, l_argc);
		case 22: return vm_gml_thread_exec_call_fn22(l_fn, l_args1, l_argc);
		case 23: return vm_gml_thread_exec_call_fn23(l_fn, l_args1, l_argc);
		case 24: return vm_gml_thread_exec_call_fn24(l_fn, l_args1, l_argc);
		default:
			gml_thread_error("Calls only support up to " + string(199) + " arguments for now.");
			return undefined;
	}
}

#endregion

#region vm.gml_thread_exec_slice

function vm_gml_thread_exec_slice_error() {
	gml_thread_error("Calls only support up to " + string(81) + " arguments at this time");
	return undefined;
}

function vm_gml_thread_exec_slice_init() {
	return [vm_gml_thread_exec_slice_with0, vm_gml_thread_exec_slice_with1, vm_gml_thread_exec_slice_with2, vm_gml_thread_exec_slice_with3, vm_gml_thread_exec_slice_with4, vm_gml_thread_exec_slice_with5, vm_gml_thread_exec_slice_with6, vm_gml_thread_exec_slice_with7, vm_gml_thread_exec_slice_with8, vm_gml_thread_exec_slice_with9, vm_gml_thread_exec_slice_with10, vm_gml_thread_exec_slice_with11, vm_gml_thread_exec_slice_with12, vm_gml_thread_exec_slice_with13, vm_gml_thread_exec_slice_with14, vm_gml_thread_exec_slice_with15, vm_gml_thread_exec_slice_with16, vm_gml_thread_exec_slice_with17, vm_gml_thread_exec_slice_with18, vm_gml_thread_exec_slice_with19, vm_gml_thread_exec_slice_with20, vm_gml_thread_exec_slice_with21, vm_gml_thread_exec_slice_with22, vm_gml_thread_exec_slice_with23, vm_gml_thread_exec_slice_with24, vm_gml_thread_exec_slice_with25, vm_gml_thread_exec_slice_with26, vm_gml_thread_exec_slice_with27, vm_gml_thread_exec_slice_with28, vm_gml_thread_exec_slice_with29, vm_gml_thread_exec_slice_with30, vm_gml_thread_exec_slice_with31, vm_gml_thread_exec_slice_with32, vm_gml_thread_exec_slice_with33, vm_gml_thread_exec_slice_with34, vm_gml_thread_exec_slice_with35, vm_gml_thread_exec_slice_with36, vm_gml_thread_exec_slice_with37, vm_gml_thread_exec_slice_with38, vm_gml_thread_exec_slice_with39, vm_gml_thread_exec_slice_with40, vm_gml_thread_exec_slice_with41, vm_gml_thread_exec_slice_with42, vm_gml_thread_exec_slice_with43, vm_gml_thread_exec_slice_with44, vm_gml_thread_exec_slice_with45, vm_gml_thread_exec_slice_with46, vm_gml_thread_exec_slice_with47, vm_gml_thread_exec_slice_with48, vm_gml_thread_exec_slice_with49, vm_gml_thread_exec_slice_with50, vm_gml_thread_exec_slice_with51, vm_gml_thread_exec_slice_with52, vm_gml_thread_exec_slice_with53, vm_gml_thread_exec_slice_with54, vm_gml_thread_exec_slice_with55, vm_gml_thread_exec_slice_with56, vm_gml_thread_exec_slice_with57, vm_gml_thread_exec_slice_with58, vm_gml_thread_exec_slice_with59, vm_gml_thread_exec_slice_with60, vm_gml_thread_exec_slice_with61, vm_gml_thread_exec_slice_with62, vm_gml_thread_exec_slice_with63, vm_gml_thread_exec_slice_with64, vm_gml_thread_exec_slice_with65, vm_gml_thread_exec_slice_with66, vm_gml_thread_exec_slice_with67, vm_gml_thread_exec_slice_with68, vm_gml_thread_exec_slice_with69, vm_gml_thread_exec_slice_with70, vm_gml_thread_exec_slice_with71, vm_gml_thread_exec_slice_with72, vm_gml_thread_exec_slice_with73, vm_gml_thread_exec_slice_with74, vm_gml_thread_exec_slice_with75, vm_gml_thread_exec_slice_with76, vm_gml_thread_exec_slice_with77, vm_gml_thread_exec_slice_with78, vm_gml_thread_exec_slice_with79, vm_gml_thread_exec_slice_with80];
}

function vm_gml_thread_exec_slice_with0(l_f, l_w, l_i) {
	return l_f();
}

function vm_gml_thread_exec_slice_with1(l_f, l_w, l_i) {
	return l_f(l_w[l_i]);
}

function vm_gml_thread_exec_slice_with2(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1]);
}

function vm_gml_thread_exec_slice_with3(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2]);
}

function vm_gml_thread_exec_slice_with4(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3]);
}

function vm_gml_thread_exec_slice_with5(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4]);
}

function vm_gml_thread_exec_slice_with6(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5]);
}

function vm_gml_thread_exec_slice_with7(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6]);
}

function vm_gml_thread_exec_slice_with8(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7]);
}

function vm_gml_thread_exec_slice_with9(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8]);
}

function vm_gml_thread_exec_slice_with10(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9]);
}

function vm_gml_thread_exec_slice_with11(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10]);
}

function vm_gml_thread_exec_slice_with12(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11]);
}

function vm_gml_thread_exec_slice_with13(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12]);
}

function vm_gml_thread_exec_slice_with14(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13]);
}

function vm_gml_thread_exec_slice_with15(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14]);
}

function vm_gml_thread_exec_slice_with16(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15]);
}

function vm_gml_thread_exec_slice_with17(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16]);
}

function vm_gml_thread_exec_slice_with18(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17]);
}

function vm_gml_thread_exec_slice_with19(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18]);
}

function vm_gml_thread_exec_slice_with20(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19]);
}

function vm_gml_thread_exec_slice_with21(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20]);
}

function vm_gml_thread_exec_slice_with22(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21]);
}

function vm_gml_thread_exec_slice_with23(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22]);
}

function vm_gml_thread_exec_slice_with24(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23]);
}

function vm_gml_thread_exec_slice_with25(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24]);
}

function vm_gml_thread_exec_slice_with26(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25]);
}

function vm_gml_thread_exec_slice_with27(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26]);
}

function vm_gml_thread_exec_slice_with28(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27]);
}

function vm_gml_thread_exec_slice_with29(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28]);
}

function vm_gml_thread_exec_slice_with30(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29]);
}

function vm_gml_thread_exec_slice_with31(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30]);
}

function vm_gml_thread_exec_slice_with32(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31]);
}

function vm_gml_thread_exec_slice_with33(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32]);
}

function vm_gml_thread_exec_slice_with34(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33]);
}

function vm_gml_thread_exec_slice_with35(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34]);
}

function vm_gml_thread_exec_slice_with36(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35]);
}

function vm_gml_thread_exec_slice_with37(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36]);
}

function vm_gml_thread_exec_slice_with38(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37]);
}

function vm_gml_thread_exec_slice_with39(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38]);
}

function vm_gml_thread_exec_slice_with40(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39]);
}

function vm_gml_thread_exec_slice_with41(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40]);
}

function vm_gml_thread_exec_slice_with42(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41]);
}

function vm_gml_thread_exec_slice_with43(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42]);
}

function vm_gml_thread_exec_slice_with44(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43]);
}

function vm_gml_thread_exec_slice_with45(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44]);
}

function vm_gml_thread_exec_slice_with46(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45]);
}

function vm_gml_thread_exec_slice_with47(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46]);
}

function vm_gml_thread_exec_slice_with48(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47]);
}

function vm_gml_thread_exec_slice_with49(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48]);
}

function vm_gml_thread_exec_slice_with50(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49]);
}

function vm_gml_thread_exec_slice_with51(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50]);
}

function vm_gml_thread_exec_slice_with52(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51]);
}

function vm_gml_thread_exec_slice_with53(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52]);
}

function vm_gml_thread_exec_slice_with54(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53]);
}

function vm_gml_thread_exec_slice_with55(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54]);
}

function vm_gml_thread_exec_slice_with56(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55]);
}

function vm_gml_thread_exec_slice_with57(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56]);
}

function vm_gml_thread_exec_slice_with58(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57]);
}

function vm_gml_thread_exec_slice_with59(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58]);
}

function vm_gml_thread_exec_slice_with60(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59]);
}

function vm_gml_thread_exec_slice_with61(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60]);
}

function vm_gml_thread_exec_slice_with62(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61]);
}

function vm_gml_thread_exec_slice_with63(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62]);
}

function vm_gml_thread_exec_slice_with64(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63]);
}

function vm_gml_thread_exec_slice_with65(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64]);
}

function vm_gml_thread_exec_slice_with66(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65]);
}

function vm_gml_thread_exec_slice_with67(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66]);
}

function vm_gml_thread_exec_slice_with68(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67]);
}

function vm_gml_thread_exec_slice_with69(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68]);
}

function vm_gml_thread_exec_slice_with70(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69]);
}

function vm_gml_thread_exec_slice_with71(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70]);
}

function vm_gml_thread_exec_slice_with72(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71]);
}

function vm_gml_thread_exec_slice_with73(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72]);
}

function vm_gml_thread_exec_slice_with74(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73]);
}

function vm_gml_thread_exec_slice_with75(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74]);
}

function vm_gml_thread_exec_slice_with76(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75]);
}

function vm_gml_thread_exec_slice_with77(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76]);
}

function vm_gml_thread_exec_slice_with78(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77]);
}

function vm_gml_thread_exec_slice_with79(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78]);
}

function vm_gml_thread_exec_slice_with80(l_f, l_w, l_i) {
	return l_f(l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3], l_w[l_i + 4], l_w[l_i + 5], l_w[l_i + 6], l_w[l_i + 7], l_w[l_i + 8], l_w[l_i + 9], l_w[l_i + 10], l_w[l_i + 11], l_w[l_i + 12], l_w[l_i + 13], l_w[l_i + 14], l_w[l_i + 15], l_w[l_i + 16], l_w[l_i + 17], l_w[l_i + 18], l_w[l_i + 19], l_w[l_i + 20], l_w[l_i + 21], l_w[l_i + 22], l_w[l_i + 23], l_w[l_i + 24], l_w[l_i + 25], l_w[l_i + 26], l_w[l_i + 27], l_w[l_i + 28], l_w[l_i + 29], l_w[l_i + 30], l_w[l_i + 31], l_w[l_i + 32], l_w[l_i + 33], l_w[l_i + 34], l_w[l_i + 35], l_w[l_i + 36], l_w[l_i + 37], l_w[l_i + 38], l_w[l_i + 39], l_w[l_i + 40], l_w[l_i + 41], l_w[l_i + 42], l_w[l_i + 43], l_w[l_i + 44], l_w[l_i + 45], l_w[l_i + 46], l_w[l_i + 47], l_w[l_i + 48], l_w[l_i + 49], l_w[l_i + 50], l_w[l_i + 51], l_w[l_i + 52], l_w[l_i + 53], l_w[l_i + 54], l_w[l_i + 55], l_w[l_i + 56], l_w[l_i + 57], l_w[l_i + 58], l_w[l_i + 59], l_w[l_i + 60], l_w[l_i + 61], l_w[l_i + 62], l_w[l_i + 63], l_w[l_i + 64], l_w[l_i + 65], l_w[l_i + 66], l_w[l_i + 67], l_w[l_i + 68], l_w[l_i + 69], l_w[l_i + 70], l_w[l_i + 71], l_w[l_i + 72], l_w[l_i + 73], l_w[l_i + 74], l_w[l_i + 75], l_w[l_i + 76], l_w[l_i + 77], l_w[l_i + 78], l_w[l_i + 79]);
}

#endregion

#region gml.type_check

function gml_type_check_init() {
	var l_r = new haxe_ds_string_map();
	l_r.set("any", gml_type_check_any);
	l_r.set("bool", gml_type_check_number);
	l_r.set("number", gml_type_check_number);
	l_r.set("?number", gml_type_check_z_number);
	l_r.set("float", gml_type_check_number);
	l_r.set("?float", gml_type_check_z_number);
	l_r.set("real", gml_type_check_number);
	l_r.set("?real", gml_type_check_z_number);
	l_r.set("color", gml_type_check_number);
	l_r.set("date", gml_type_check_number);
	l_r.set("int", gml_type_check_int);
	l_r.set("index", gml_type_check_index);
	l_r.set("id", gml_type_check_index);
	l_r.set("sprite", gml_type_check_index);
	l_r.set("background", gml_type_check_index);
	l_r.set("sound", gml_type_check_index);
	l_r.set("font", gml_type_check_index);
	l_r.set("script", gml_type_check_index);
	l_r.set("shader", gml_type_check_index);
	l_r.set("timeline", gml_type_check_index);
	l_r.set("object", gml_type_check_index);
	l_r.set("room", gml_type_check_index);
	l_r.set("buffer", gml_type_check_index);
	l_r.set("list", gml_type_check_index);
	l_r.set("grid", gml_type_check_index);
	l_r.set("string", gml_type_check_string);
	l_r.set("?string", gml_type_check_z_string);
	l_r.set("array", gml_type_check_array);
	l_r.set("?array", gml_type_check_z_array);
	l_r.set("sprite", gml_type_check_index);
	l_r.set("background", gml_type_check_index);
	l_r.set("sound", gml_type_check_index);
	l_r.set("font", gml_type_check_index);
	l_r.set("path", gml_type_check_index);
	l_r.set("timeline", gml_type_check_index);
	l_r.set("script", gml_type_check_index);
	l_r.set("object", gml_type_check_index);
	l_r.set("room", gml_type_check_index);
	return l_r;
}

function gml_type_check_any(l_v) {
	return "";
}

function gml_type_check_number(l_v) {
	if (gml_value_is_number(l_v)) return "";
	return "Expected a number";
}

function gml_type_check_int(l_v) {
	if (is_bool(l_v) || is_int64(l_v) || is_int32(l_v) || is_real(l_v) && l_v % 1 == 0) return "";
	return "Expected an integer";
}

function gml_type_check_index(l_v) {
	if (is_bool(l_v) || is_int64(l_v) || is_int32(l_v) || is_real(l_v) && l_v % 1 == 0) return "";
	return "Expected an index";
}

function gml_type_check_string(l_v) {
	if (is_string(l_v)) return "";
	return "Expected a string";
}

function gml_type_check_array(l_v) {
	if (is_array(l_v)) return "";
	return "Expected an array";
}

function gml_type_check_z_number(l_v) {
	if (l_v == undefined || gml_value_is_number(l_v)) return "";
	return "Expected a number or null";
}

function gml_type_check_z_string(l_v) {
	if (l_v == undefined || is_string(l_v)) return "";
	return "Expected a string or null";
}

function gml_type_check_z_array(l_v) {
	if (l_v == undefined || is_array(l_v)) return "";
	return "Expected an array or null";
}

#endregion

#region gml.value

function gml_value_is_number(l_this1) {
	return (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1)) || is_int32(l_this1);
}

function gml_value_get_type(l_this1) {
	if (l_this1 == undefined) {
		return "undefined";
	} else if (gml_value_is_number(l_this1)) {
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

function gml_value_print_rec(l_v, l_z) {
	var l_r, l_i, l_n, l_w;
	var l_id = gml_value_print_num++;
	if (l_v == undefined) {
		return "undefined";
	} else if (gml_value_is_number(l_v)) {
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
				l_r = gml_std_haxe_type_get(l_v).name + "(";
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
	} else return gml_std_Std_stringify(l_v);
}

function gml_value_print(l_this1) {
	ds_map_clear(gml_value_print_refs);
	gml_value_print_num = 0;
	var l_r = gml_value_print_rec(l_this1, 0);
	ds_map_clear(gml_value_print_refs);
	return l_r;
}

function gml_value_dump(l_this1) {
	return "`" + gml_value_print(l_this1) + "` (" + gml_value_get_type(l_this1) + ")";
}

#endregion

#region gml.value_list

function gml_value_list_copy(l_this1) {
	var l_n = array_length(l_this1);
	var l_r = array_create(l_n);
	array_copy(l_r, 0, l_this1, 0, l_n);
	return l_r;
}

#endregion

#region gml.with_scope

function gml_with_scope(l_data, l_nxt) constructor {
	static index = undefined;
	static length = undefined;
	static array = undefined;
	static next = undefined;
	static data = undefined;
	self.index = 0;
	self.data = l_data;
	self.length = l_data.length;
	self.array = l_data.items;
	self.next = l_nxt;
	static __class__ = mt_gml_with_scope;
}
mt_gml_with_scope.i_constructor = gml_with_scope;

function gml_with_scope_copy(l_q) {
	if (l_q == undefined) return undefined;
	var l_q_data = l_q.data;
	l_q_data.refc++;
	var l_r = new gml_with_scope(l_q_data, gml_with_scope_copy(l_q.next));
	l_r.index = l_q.index;
	return l_r;
}

function gml_with_scope_destroy(l_q) {
	while (l_q != undefined) {
		vm__gml_with_data_gml_with_data_impl__destroy(l_q.data);
		l_q = l_q.next;
	}
}

#endregion

#region vm._gml_with_data.gml_with_data_impl_

function vm__gml_with_data_gml_with_data_impl__init() {
	var l_pools = array_create(5, undefined);
	l_pools[@0] = ds_stack_create();
	l_pools[@1] = ds_stack_create();
	l_pools[@2] = ds_stack_create();
	l_pools[@3] = ds_stack_create();
	l_pools[@4] = ds_stack_create();
	return l_pools;
}

function vm__gml_with_data_gml_with_data_impl__alloc(l_size) {
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
	if (l_sln >= 5) return array_create(l_size);
	var l_pool = vm__gml_with_data_gml_with_data_impl__pools[l_sln];
	if (ds_stack_empty(l_pool)) return array_create((power(10, l_sln) | 0)); else return ds_stack_pop(l_pool);
}

function vm__gml_with_data_gml_with_data_impl__destroy(l_this1) {
	if (--l_this1.refc != 0) return 0;
	var l_size = l_this1.length;
	var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
	if (l_sln >= 5) return 0;
	ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln], l_this1.items);
}

#endregion

#region vm_group_alarm

function vm_group_alarm_on_alarm(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z].alarm[l_st[l_z + 1]];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_alarm_on_alarm_set(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	l_st[l_z].alarm[l_st[l_z + 1]] = l_st[l_z + 2];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_alarm_on_alarm_aop(l_th, l_act) {
	var l_o = l_act.op;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_v;
	try {
		l_v = l_a.alarm[l_i]
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 2])
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	l_a.alarm[l_i] = (l_v | 0);
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_arg

function vm_group_arg_on_arg_count(l_th, l_act) {
	var l_q = l_th.scope;
	gml_stack_push(l_q.stack, array_length(l_q.args));
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_const(l_th, l_act) {
	var l_i = l_act.i;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_args1 = l_q.args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_i1 = l_st[0] + 1;
		if (l_i1 >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
		l_st[@l_i1] = l_args1[l_i];
		l_st[@0] = l_i1;
	} else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_const_set(l_th, l_act) {
	var l_i = l_act.i;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_args1 = l_q.args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_i1 = l_st[0];
		var l_r = l_st[l_i1];
		l_st[@l_i1] = 0;
		l_st[@0] = l_i1 - 1;
		l_args1[@l_i] = l_r;
	} else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_const_aop(l_th, l_act) {
	var l_i = l_act.i;
	var l_o = l_act.o;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_args1 = l_q.args;
	if (l_i >= 0 && l_i < array_length(l_args1)) {
		var l_arg = l_args1[l_i];
		var l_i1 = l_st[0];
		var l_val = l_st[l_i1];
		l_st[@l_i1] = 0;
		l_st[@0] = l_i1 - 1;
		try {
			l_val = vm_group_op_funcs[l_o](l_arg, l_val)
		} catch (_g) {
			return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
		}
		l_args1[@l_i] = l_val;
	} else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_index(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_v;
	var l_z = l_st[0];
	var l_k = l_st[l_z];
	if (gml_value_is_number(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.args;
		if (l_i >= 0 && l_i < array_length(l_args1)) l_st[@l_z] = l_args1[l_i]; else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_index_set(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_v, l_k;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_k = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (gml_value_is_number(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.args;
		if (l_i >= 0 && l_i < array_length(l_args1)) l_args1[@l_i] = l_v; else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_arg_on_arg_index_aop(l_th, l_act) {
	var l_o = l_act.o;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_v, l_k;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_k = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (gml_value_is_number(l_k)) {
		var l_i = (l_k | 0);
		var l_args1 = l_q.args;
		if (l_i >= 0 && l_i < array_length(l_args1)) {
			try {
				l_v = vm_group_op_funcs[l_o](l_args1[l_i], l_v)
			} catch (_g) {
				return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
			}
			l_args1[@l_i] = l_v;
		} else return l_th.proc_error2("Argument index " + string(l_i) + " is out of range (0.." + string(array_length(l_args1)) + ")", l_act);
	} else return l_th.proc_error2("Index is not a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_array

function vm_group_array_on_index(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	var l_a = l_st[l_z];
	l_st[@l_z] = l_a[l_st[l_z + 1]];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_array_on_index_set(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	l_st[l_z][@l_st[l_z + 1]] = l_st[l_z + 2];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_array_on_index_aop(l_th, l_act) {
	var l_o = l_act.o;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 2;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_v;
	try {
		l_v = l_a[l_i]
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 2])
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	l_a[@l_i] = l_v;
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_array_on_index2d(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_a;
	var l_z = l_st[0] - 2;
	l_st[@0] = l_z;
	l_a = l_st[l_z];
	l_st[@l_z] = l_a[l_st[l_z + 1], l_st[l_z + 2]];
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_array_on_index2d_set(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 3;
	l_st[@0] = (l_z - 1);
	array_set_2D(l_st[l_z], l_st[l_z + 1], l_st[l_z + 2], l_st[l_z + 3]);
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	l_st[@l_z + 2] = 0;
	l_st[@l_z + 3] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_array_on_index2d_aop(l_th, l_act) {
	var l_o = l_act.o;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 3;
	l_st[@0] = (l_z - 1);
	var l_a = l_st[l_z];
	var l_i = l_st[l_z + 1];
	var l_k = l_st[l_z + 2];
	var l_v;
	try {
		l_v = l_a[l_i, l_k]
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	try {
		l_v = vm_group_op_funcs[l_o](l_v, l_st[l_z + 3])
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
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

function vm_group_call_check_func_args(l_th, l_act, l_argChecks, l_restCheck, l_array1, l_arrOffset, l_argc) {
	var l_argChecks_len = array_length(l_argChecks);
	var l_i = 0;
	for (var l__g1 = l_argc; l_i < l__g1; l_i++) {
		var l_err;
		if (l_i < l_argChecks_len) l_err = l_argChecks[l_i](l_array1[l_arrOffset + l_i]); else l_err = l_restCheck(l_array1[l_arrOffset + l_i]);
		if (l_err != "") return l_th.proc_error(l_err, l_act);
	}
	return true;
}

function vm_group_call_call_func(l_th, l_act, l_func, l_instFlags, l_array1, l_arrOffset, l_argc) {
	var l_inst = l_th.scope.inst;
	var l_v1 = undefined;
	var l_notFound;
	var l_status = 0/* gml_thread_proc_result.ok */;
	var l_qn0, l_qn1, l_qc0, l_qc1;
	switch (l_instFlags) {
		case 3:
			l_qn0 = l_inst[l_inst[0]];
			l_qn1 = l_inst[l_inst[0] - 1];
			l_qc0 = self;
			l_qc1 = other;
			if (l_qn0 == l_qc0 && l_qn1 == l_qc1) {
				l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else if (l_qn0 == l_qc1 && l_qn1 == l_qc0) {
				with (other) l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else {
				l_notFound = true;
				var l_this1 = l_qn1;
				if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn1) {
					var l_this1 = l_qn0;
					if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn0) {
						l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
						l_notFound = false;
					}
				}
				if (l_notFound) {
					var l_this1 = l_qn0;
					if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn0) with (l_qn0) {
						l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
						l_notFound = false;
					}
					if (l_notFound) return l_th.proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + "` does not exist.", l_act);
				}
			}
			break;
		case 2:
			l_qn0 = l_inst[l_inst[0]];
			l_qn1 = l_inst[l_inst[0] - 1];
			l_qc0 = self;
			l_qc1 = other;
			if (l_qn0 == l_qc0 && l_qn1 == l_qc1) {
				l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else if (l_qn0 == l_qc1 && l_qn1 == l_qc0) {
				with (other) l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else {
				l_notFound = true;
				var l_this1 = l_qn1;
				if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn1) {
					var l_this1 = l_qn0;
					if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn0) {
						l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
						l_notFound = false;
					}
				}
				if (l_notFound) return l_th.proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + "` does not exist.", l_act);
			}
			break;
		case 1:
			l_qn0 = l_inst[l_inst[0]];
			if (l_qn0 == self) {
				l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else if (l_qn0 == other) {
				with (other) l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
			} else {
				l_notFound = true;
				var l_this1 = l_qn0;
				if (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1)) with (l_qn0) {
					l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
					l_notFound = false;
				}
				if (l_notFound) return l_th.proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + "` does not exist.", l_act);
			}
			break;
		case -5:
			l_th.result = undefined;
			l_status = l_func(l_array1, l_arrOffset, l_argc);
			break;
		default: l_v1 = (l_argc < 81 ? vm_gml_thread_exec_slice_funcs[l_argc](l_func, l_array1, l_arrOffset) : vm_gml_thread_exec_slice_error());
	}
	if (l_th.status != gml_thread_status.error) {
		vm_group_call_call_func_result = l_v1;
		vm_group_call_call_func_status = l_status;
		return true;
	} else return false;
}

function vm_group_call_call_value(l_th, l_act, l_v1, l_argArray, l_argOffset, l_n) {
	var l_q = l_th.scope;
	if (gml_value_is_number(l_v1)) {
		var l_k = (l_v1 | 0) - gml_script_index_offset;
		var l_program = l_q.program;
		if (l_k >= 0 && l_k < array_length(l_program.scripts)) {
			var l_scr = l_program.scripts[l_k];
			var l_inst = l_q.inst;
			var l_newArgs = array_create(l_n);
			array_copy(l_newArgs, 0, l_argArray, l_argOffset, l_n);
			var l_nq = new gml_thread_scope(l_scr.actions, 0, l_newArgs, array_create(l_scr.locals), l_inst[l_inst[0]], l_inst[l_inst[0] - 1], l_q);
			l_nq.program = l_q.program;
			l_th.scope = l_nq;
			return 3/* gml_thread_proc_result.sync_scope */;
		} else return l_th.proc_error2("Script index `" + gml_value_print(l_v1) + "` is out of bounds (" + string(gml_script_index_offset) + ".." + string(gml_script_index_offset + array_length(l_program.scripts)) + " excl.)", l_act);
	} else return l_th.proc_error2("Script index must be a number, got " + gml_value_dump(l_v1), l_act);
}

function vm_group_call_on_call_script(l_th, l_act) {
	var l_n = l_act.argc;
	var l_scr = l_act.script;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_args1 = [];
	var l_k = l_st[0] - l_n;
	array_copy(l_args1, 0, l_st, l_k + 1, l_n);
	array_copy(l_st, l_k + 1, gml_stack_fill_value_arr, 0, l_n);
	l_st[@0] = l_k;
	var l_inst = l_q.inst;
	var l_nq = new gml_thread_scope(l_scr.actions, 0, l_args1, array_create(l_scr.locals), l_inst[l_inst[0]], l_inst[l_inst[0] - 1], l_q);
	l_nq.program = l_q.program;
	l_th.scope = l_nq;
	return 3/* gml_thread_proc_result.sync_scope */;
}

function vm_group_call_on_call_script_id(l_th, l_act) {
	var l_n = l_act.argc;
	var l_stack = l_th.scope.stack;
	var l_r = vm_group_call_call_value(l_th, l_act, l_stack[l_stack[0] - l_n], l_stack, (l_stack[0] - l_n + 1), l_n);
	gml_stack_discard_multi(l_stack, l_n + 1);
	return l_r;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_call_on_call_script_with_array(l_th, l_act) {
	var l_stack = l_th.scope.stack;
	var l_v1, l_arr;
	var l_z = l_stack[0] - 1;
	l_stack[@0] = (l_z - 1);
	l_v1 = l_stack[l_z];
	l_arr = l_stack[l_z + 1];
	l_stack[@l_z] = 0;
	l_stack[@l_z + 1] = 0;
	if (is_array(l_arr)) return vm_group_call_call_value(l_th, l_act, l_v1, l_arr, 0, array_length(l_arr)); else return l_th.proc_error2("Expected an array with arguments, got " + gml_value_dump(l_arr), l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_call_on_call_func(l_th, l_act) {
	var l__out = l_act.out;
	var l__inst = l_act.inst;
	var l__restCheck = l_act.rest;
	var l__argChecks = l_act.args;
	var l__argc = l_act.argc;
	var l__func = l_act.func;
	var l_stack = l_th.scope.stack;
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

#endregion

#region vm_group_ensure

function vm_group_ensure_on_ensure_array_local(l_th, l_act) {
	var l_i = l_act.i;
	var l_locals = l_th.scope.locals;
	if (!is_array(l_locals[l_i])) l_locals[@l_i] = array_create(0);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_ensure_on_ensure_array_global(l_th, l_act) {
	var l_s = l_act.fd;
	if (!is_array(variable_global_get(l_s))) variable_global_set(l_s, []);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_ensure_on_ensure_array_field(l_th, l_act) {
	var l_field = l_act.fd;
	var l_st = l_th.scope.stack;
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

function vm_group_env_on_env(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_v = l_act.f(false, undefined);
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_v;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_env_on_env_set(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	l_act.f(true, l_r);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_env_on_env_aop(l_th, l_act) {
	var l_fn = l_act.f;
	var l_op = l_act.o;
	var l_st = l_th.scope.stack;
	var l_ev;
	try {
		l_ev = l_fn(false, undefined)
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	var l_i = l_st[0];
	var l_sv = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	try {
		l_ev = vm_group_op_funcs[l_op](l_ev, l_sv)
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	l_fn(true, l_ev);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_env_on_env1d(l_th, l_act) {
	var l_fn = l_act.f;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0];
	var l_i = l_st[l_z];
	if (gml_value_is_number(l_i)) l_st[@l_z] = l_fn(false, undefined, (l_i | 0)); else return l_th.proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_env_on_env1d_set(l_th, l_act) {
	var l_fn = l_act.f;
	var l_st = l_th.scope.stack;
	var l_i, l_v;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_i = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (gml_value_is_number(l_i)) l_fn(true, l_v, (l_i | 0)); else return l_th.proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_env_on_env1d_aop(l_th, l_act) {
	var l_fn = l_act.f;
	var l_o = l_act.o;
	var l_st = l_th.scope.stack;
	var l_i, l_v;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	l_i = l_st[l_z];
	l_v = l_st[l_z + 1];
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (!gml_value_is_number(l_i)) return l_th.proc_error2("Index " + gml_value_print(l_i) + " is not a number.", l_act);
	var l_ev;
	try {
		l_ev = l_fn(false, undefined, (l_i | 0))
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	try {
		l_ev = vm_group_op_funcs[l_o](l_ev, l_v)
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	l_fn(true, l_ev, (l_i | 0));
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_field

function vm_group_field_on_field(l_th, l_act) {
	var l_s = l_act.fd;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0];
	var l_ctx = l_st[l_z];
	var l_val;
	if (l_ctx >= 100000) {
		l_val = variable_instance_get(l_ctx, l_s);
		if (l_val != undefined || variable_instance_exists(l_ctx, l_s)) {
			l_st[@l_z] = l_val;
			return 0/* gml_thread_proc_result.ok */;
		}
		if (variable_instance_exists(l_ctx, "id")) return l_th.proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
	} else with (l_ctx) {
		l_val = variable_instance_get(self, l_s);
		if (l_val != undefined || variable_instance_exists(self, l_s)) {
			l_st[@l_z] = l_val;
			return 0/* gml_thread_proc_result.ok */;
		}
		return l_th.proc_error2("`" + gml_std_Std_stringify(self) + "` (" + object_get_name(self.object_index) + ") does not have a variable `" + l_s + "`", l_act);
	}
	if (object_exists(l_ctx)) return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_field_on_field_set(l_th, l_act) {
	var l_s = l_act.fd;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	var l_ctx = l_st[l_z];
	var l_val = l_st[l_z + 1];
	var l_checkExists;
	if (l_ctx >= 100000) {
		try {
			l_checkExists = l_ctx.id
		} catch (_g) {
			var l_x = gml_std_haxe_Exception_caught(l__g).unwrap();
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.proc_error2(l_x, l_act);
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
	if (object_exists(l_ctx)) return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_field_on_field_aop(l_th, l_act) {
	var l_s = l_act.fd;
	var l_o = l_act.o;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = (l_z - 1);
	var l_ctx = l_st[l_z];
	var l_val = l_st[l_z + 1];
	var l_checkExists;
	if (l_ctx >= 100000) {
		try {
			l_checkExists = l_ctx.id
		} catch (_g) {
			var l_x = gml_std_haxe_Exception_caught(l__g).unwrap();
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.proc_error2(l_x, l_act);
		}
		var l_cur = variable_instance_get(l_ctx, l_s);
		if (l_cur != undefined || variable_instance_exists(l_ctx, l_s)) {
			try {
				l_cur = vm_group_op_funcs[l_o](l_cur, l_val)
			} catch (_g) {
				var l_x = gml_std_haxe_Exception_caught(l__g).unwrap();
				l_st[@l_z] = 0;
				l_st[@l_z + 1] = 0;
				return l_th.proc_error2(l_x, l_act);
			}
			variable_instance_set(l_ctx, l_s, l_cur);
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return 0/* gml_thread_proc_result.ok */;
		} else {
			l_st[@l_z] = 0;
			l_st[@l_z + 1] = 0;
			return l_th.proc_error2("`" + gml_std_Std_stringify(l_ctx) + "` (" + object_get_name(l_ctx.object_index) + ") does not have a variable `" + l_s + "`", l_act);
		}
	} else with (l_ctx) {
		variable_instance_set(self, l_s, l_val);
		l_st[@l_z] = 0;
		l_st[@l_z + 1] = 0;
		return 0/* gml_thread_proc_result.ok */;
	}
	l_st[@l_z] = 0;
	l_st[@l_z + 1] = 0;
	if (object_exists(l_ctx)) return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_field_on_in(l_th, l_act) {
	var l_not = l_act.i_not;
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	var l_ctx = l_st[l_z + 1];
	if (l_ctx >= 100000) {
		l_st[@l_z] = l_not != variable_instance_exists(l_ctx, l_st[l_z]);
		return 0/* gml_thread_proc_result.ok */;
	} else with (l_ctx) {
		l_st[@l_z] = l_not != variable_instance_exists(self, l_st[l_z]);
		return 0/* gml_thread_proc_result.ok */;
	}
	if (object_exists(l_ctx)) return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + " (" + object_get_name(l_ctx) + ")", l_act); else return l_th.proc_error2("Couldn't find any instances of " + gml_std_Std_stringify(l_ctx) + ".", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_global

function vm_group_global_on_global(l_th, l_act) {
	var l_s = l_act.fd;
	var l_q = l_th.scope;
	if (variable_global_exists(l_s)) {
		var l_st = l_q.stack;
		var l_v = variable_global_get(l_s);
		var l_i = l_st[0] + 1;
		if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
		l_st[@l_i] = l_v;
		l_st[@0] = l_i;
	} else return l_th.proc_error2("Global variable `" + l_s + "` is not set.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_global_on_global_set(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	variable_global_set(l_act.fd, l_r);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_global_on_global_aop(l_th, l_act) {
	var l_s = l_act.fd;
	var l_o = l_act.o;
	var l_q = l_th.scope;
	if (variable_global_exists(l_s)) {
		var l_st = l_q.stack;
		var l_i = l_st[0];
		var l_val = l_st[l_i];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
		try {
			l_val = vm_group_op_funcs[l_o](variable_global_get(l_s), l_val)
		} catch (_g) {
			return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
		}
		variable_global_set(l_s, l_val);
	} else return l_th.proc_error2("Global variable `" + l_s + "` is not set.", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_jump

function vm_group_jump_on_jump(l_th, l_act) {
	l_th.scope.offset = l_act.p;
	return 2/* gml_thread_proc_result.sync_pos */;
}

function vm_group_jump_on_jump_if(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (l_r) {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_jump_unless(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i = l_st[0];
	var l_r = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (!l_r) {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_bool_and(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	if (l_st[l_st[0]]) {
		var l_i = l_st[0];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
	} else {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_bool_or(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	if (l_st[l_st[0]]) {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	} else {
		var l_i = l_st[0];
		l_st[@l_i] = 0;
		l_st[@0] = l_i - 1;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_switch(l_th, l_act) {
	var l_p = l_act.p;
	var l_jt = l_act.jumptable;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i = l_st[0];
	var l_val = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	if (ds_map_exists(l_jt, l_val)) l_q.offset = l_jt[?l_val]; else l_q.offset = l_p;
	return 2/* gml_thread_proc_result.sync_pos */;
}

function vm_group_jump_on_repeat_pre(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_val = l_st[l_st[0]];
	if (gml_value_is_number(l_val)) {
		if (l_val <= 0) {
			l_q.offset = l_p;
			var l_i = l_st[0];
			l_st[@l_i] = 0;
			l_st[@0] = l_i - 1;
			return 2/* gml_thread_proc_result.sync_pos */;
		}
	} else return l_th.proc_error2("Repeat `times` must be a number", l_act);
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_repeat_jump(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_f = l_st[l_st[0]] - 1;
	l_st[@l_st[0]] = l_f;
	if (l_f >= 1) {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_jump_on_break(l_th, l_act) {
	l_th.scope.offset = l_act.lp;
	return 2/* gml_thread_proc_result.sync_pos */;
}

function vm_group_jump_on_continue(l_th, l_act) {
	l_th.scope.offset = l_act.lp;
	return 2/* gml_thread_proc_result.sync_pos */;
}

function vm_group_jump_on_return(l_th, l_act) {
	var l_q = l_th.scope;
	l_q.offset = ds_list_size(l_q.actions);
	return 2/* gml_thread_proc_result.sync_pos */;
}

#endregion

#region vm_group_literal

function vm_group_literal_on_undefined(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = undefined;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_number(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.f;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_cstring(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.s;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_const(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_act.v;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_self(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_inst = l_q.inst;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_inst[l_inst[0]];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_other(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_inst = l_q.inst;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_inst[l_inst[0] - 1];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_result(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_th.result;
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_literal_on_array_decl(l_th, l_act) {
	var l_n = l_act.size;
	var l_st = l_th.scope.stack;
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

function vm_group_literal_on_object_decl(l_th, l_act) {
	var l_keys = l_act.keys;
	var l_obj = { }
	var l_n = array_length(l_keys);
	var l_stack = l_th.scope.stack;
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

function vm_group_local_on_local(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i1 = l_st[0] + 1;
	if (l_i1 >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i1] = l_q.locals[l_act.i];
	l_st[@0] = l_i1;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_local_on_local_set(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i1 = l_st[0];
	var l_r = l_st[l_i1];
	l_st[@l_i1] = 0;
	l_st[@0] = l_i1 - 1;
	l_q.locals[@l_act.i] = l_r;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_local_on_local_aop(l_th, l_act) {
	var l_i = l_act.i;
	var l_op = l_act.o;
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_locals = l_q.locals;
	var l_i1 = l_st[0];
	var l_val = l_st[l_i1];
	l_st[@l_i1] = 0;
	l_st[@0] = l_i1 - 1;
	var l_cur = l_locals[l_i];
	try {
		l_cur = vm_group_op_funcs[l_op](l_cur, l_val)
	} catch (_g) {
		return l_th.proc_error2(gml_std_haxe_Exception_caught(l__g).unwrap(), l_act)
	}
	l_locals[@l_i] = l_cur;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_op

function vm_group_op_impl_unknown(l_a, l_b) {
	throw gml_std_haxe_Exception_thrown("No idea how to apply this operator");
}

function vm_group_op_impl_add(l_a, l_b) {
	if (is_string(l_a) && is_string(l_b)) return l_a + l_b; else return l_a + l_b;
}

function vm_group_op_impl_sub(l_a, l_b) {
	return l_a - l_b;
}

function vm_group_op_impl_mul(l_a, l_b) {
	return l_a * l_b;
}

function vm_group_op_impl_div1(l_a, l_b) {
	return l_a / l_b;
}

function vm_group_op_impl_mod(l_a, l_b) {
	return l_a % l_b;
}

function vm_group_op_impl_idiv(l_a, l_b) {
	return (l_a div l_b);
}

function vm_group_op_impl_and(l_a, l_b) {
	return (l_a & l_b);
}

function vm_group_op_impl_or(l_a, l_b) {
	return (l_a | l_b);
}

function vm_group_op_impl_xor(l_a, l_b) {
	return (l_a ^ l_b);
}

function vm_group_op_impl_shl(l_a, l_b) {
	return (l_a << l_b);
}

function vm_group_op_impl_shr(l_a, l_b) {
	return (l_a >> l_b);
}

function vm_group_op_impl_eq(l_a, l_b) {
	return (l_a == l_b ? 1 : 0);
}

function vm_group_op_impl_ne(l_a, l_b) {
	return (l_a != l_b ? 1 : 0);
}

function vm_group_op_impl_gt(l_a, l_b) {
	return (l_a > l_b ? 1 : 0);
}

function vm_group_op_impl_ge(l_a, l_b) {
	return (l_a >= l_b ? 1 : 0);
}

function vm_group_op_impl_lt(l_a, l_b) {
	return (l_a < l_b ? 1 : 0);
}

function vm_group_op_impl_le(l_a, l_b) {
	return (l_a <= l_b ? 1 : 0);
}

function vm_group_op_impl() {
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

function vm_group_op_on_bin_op(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = vm_group_op_funcs[l_act.o](l_st[l_z], l_st[l_z + 1]);
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_op_on_un_op(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0];
	switch (l_act.o) {
		case 2: l_st[@l_z] = ~l_st[l_z]; break;
		case 1: l_st[@l_z] = !l_st[l_z]; break;
		case 0: l_st[@l_z] = -l_st[l_z]; break;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_op_on_equ_op(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z] == l_st[l_z + 1];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_op_on_neq_op(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0] - 1;
	l_st[@0] = l_z;
	l_st[@l_z] = l_st[l_z] != l_st[l_z + 1];
	l_st[@l_z + 1] = 0;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_op_on_add_int(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_z = l_st[0];
	l_st[@l_z] = l_st[l_z] + l_act.i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_op_on_concat(l_th, l_act) {
	var l_st = l_th.scope.stack;
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

function vm_group_op_on_ds_aop(l_th, l_act) {
	var l__out = l_act.out;
	var l_setterFunc = l_act.set;
	var l_getterFunc = l_act.get;
	var l_setterArgc = l_act.argc;
	var l__o = l_act.o;
	var l_st = l_th.scope.stack;
	var l_k = 1 + l_setterArgc;
	var l_getterArgc = l_setterArgc - 1;
	var l_v;
	try {
		l_v = (l_getterArgc < 81 ? vm_gml_thread_exec_slice_funcs[l_getterArgc](l_getterFunc, l_st, l_k) : vm_gml_thread_exec_slice_error())
	} catch (_g) {
		var l_x = gml_std_haxe_Exception_caught(l__g).unwrap();
		gml_stack_pop_multi(l_st, l_setterArgc);
		return l_th.proc_error2(l_x, l_act);
	}
	try {
		l_st[@l_k + l_getterArgc] = vm_group_op_funcs[l__o](l_v, l_st[l_k + l_getterArgc])
	} catch (_g) {
		var l_x = gml_std_haxe_Exception_caught(l__g).unwrap();
		gml_stack_pop_multi(l_st, l_setterArgc);
		return l_th.proc_error2(l_x, l_act);
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

function vm_group_special_on_wait(l_th, l_act) {
	var l_q = l_th.scope;
	var l_t = gml_stack_pop(l_q.stack);
	l_th.status = gml_thread_status.waiting;
	l_th.wait_time = (gml_value_is_number(l_t) ? l_t : 0);
	ds_list_add(l_q.program.wait_list, l_th);
	return 1/* gml_thread_proc_result.error */;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_special_on_fork(l_th, l_act) {
	var l_out = l_act.out;
	var l_st = l_th.scope.stack;
	if (l_out) gml_stack_push(l_st, 1);
	l_th.fork().exec();
	if (l_out) l_st[@l_st[0]] = 0;
	return 2/* gml_thread_proc_result.sync_pos */;
}

#endregion

#region vm_group_stack

function vm_group_stack_on_discard(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_stack_on_dup(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 1;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i] = l_st[l_i - 1];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_stack_on_dup2x(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0] + 2;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	l_st[@l_i - 1] = l_st[l_i - 3];
	l_st[@l_i] = l_st[l_i - 2];
	l_st[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_stack_on_dup_in(l_th, l_act) {
	var l_st = l_th.scope.stack;
	var l_i = l_st[0];
	var l_v = l_st[l_i++];
	l_st[@0] = l_i;
	var l_k = l_i - l_act.z;
	if (l_i >= array_length(l_st)) l_st[@array_length(l_st) * 2] = 0;
	while (--l_i >= l_k) {
		l_st[@l_i + 1] = l_st[l_i];
	}
	l_st[@l_k] = l_v;
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm_group_with

function vm_group_with_on_with_pre(l_th, l_act) {
	var l_q = l_th.scope;
	var l_st = l_q.stack;
	var l_i = l_st[0];
	var l_val = l_st[l_i];
	l_st[@l_i] = 0;
	l_st[@0] = l_i - 1;
	var l_ctx = l_val;
	var l_arr, l_i, l_n;
	if (gml_value_is_number(l_val)) {
		if (l_ctx >= 100000) {
			if (instance_exists(l_ctx)) {
				l_arr = vm__gml_with_data_gml_with_data_impl__alloc(1);
				l_arr[@0] = l_ctx;
				l_n = 1;
			} else {
				l_arr = vm__gml_with_data_gml_with_data_impl__alloc(0);
				l_n = 0;
			}
			l_q.i_with = new gml_with_scope({ length: l_n, items: l_arr, refc: 1 }, l_q.i_with);
		} else {
			l_n = instance_number(l_ctx);
			l_arr = vm__gml_with_data_gml_with_data_impl__alloc(l_n);
			l_i = 0;
			with (l_ctx) {
				l_arr[@l_i] = self;
				l_i++;
			}
			l_q.i_with = new gml_with_scope({ length: l_i, items: l_arr, refc: 1 }, l_q.i_with);
		}
	} else {
		l_arr = vm__gml_with_data_gml_with_data_impl__alloc(0);
		l_q.i_with = new gml_with_scope({ length: 0, items: l_arr, refc: 1 }, l_q.i_with);
	}
	var l_inst = l_q.inst;
	var l_i = l_inst[0] + 1;
	if (l_i >= array_length(l_inst)) l_inst[@array_length(l_inst) * 2] = 0;
	l_inst[@l_i] = undefined;
	l_inst[@0] = l_i;
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_with_on_with_next(l_th, l_act) {
	var l_p = l_act.p;
	var l_q = l_th.scope;
	var l_with1 = l_q.i_with;
	if (l_with1.index < l_with1.length) {
		var l_inst = l_q.inst;
		l_inst[@l_inst[0]] = l_with1.array[l_with1.index++];
	} else {
		l_q.offset = l_p;
		return 2/* gml_thread_proc_result.sync_pos */;
	}
	return 0/* gml_thread_proc_result.ok */;
}

function vm_group_with_on_with_post(l_th, l_act) {
	var l_q = l_th.scope;
	var l_with1 = l_q.i_with;
	if (l_with1 != undefined) {
		var l_this1 = l_with1.data;
		if (--l_this1.refc == 0) {
			var l_size = l_this1.length;
			var l_sln = (l_size > 0 ? (log10(l_size) | 0) : 0);
			if (l_sln < 5) ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln], l_this1.items);
		}
		l_q.i_with = l_with1.next;
		var l_this1 = l_q.inst;
		var l_i = l_this1[0];
		l_this1[@l_i] = 0;
		l_this1[@0] = l_i - 1;
	}
	return 0/* gml_thread_proc_result.ok */;
}

#endregion

#region vm.v2.gml_thread_v2

function vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, l_name, l_fn) {
	var l_id = l_map.get(l_name);
	if (l_id != undefined) l_funcs[@l_id] = l_fn; else throw gml_std_haxe_Exception_thrown("Can't find " + l_name);
}

function vm_v2_gml_thread_v2_handlers_init() {
	var l_names = gml_std_Type_getEnumConstructs(mt_gml_action);
	var l_map = new haxe_ds_string_map();
	var l_funcs = array_create(array_length(l_names), undefined);
	var l_i = 0;
	for (var l__g1 = array_length(l_names); l_i < l__g1; l_i++) {
		l_map.set(l_names[l_i], l_i);
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
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "repeat_pre", vm_group_jump_on_repeat_pre);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "repeat_jump", vm_group_jump_on_repeat_jump);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "break", vm_group_jump_on_break);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "continue", vm_group_jump_on_continue);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "return", vm_group_jump_on_return);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "wait", vm_group_special_on_wait);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "fork", vm_group_special_on_fork);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script", vm_group_call_on_call_script);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script_id", vm_group_call_on_call_script_id);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_script_with_array", vm_group_call_on_call_script_with_array);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs, l_map, "call_func", vm_group_call_on_call_func);
	var l_i = 0;
	for (var l__g1 = array_length(l_names); l_i < l__g1; l_i++) {
		var l_tmp = l_funcs[l_i] == vm_v2_gml_thread_v2_on_unknown;
	}
	return l_funcs;
}

function vm_v2_gml_thread_v2_on_unknown(l_th, l_act) {
	l_th.proc_error("Can't execute " + gml_std_Type_enumConstructor(l_act), l_act);
	return 1/* gml_thread_proc_result.error */;
}

#endregion

// gml.compile:
globalvar gml_compile_error_text;
globalvar gml_compile_error_pos;
globalvar gml_compile_curr_script;
globalvar gml_compile_curr_program;
globalvar gml_compile_curr_break; gml_compile_curr_break = -1;
globalvar gml_compile_curr_continue; gml_compile_curr_continue = -1;
// gml.parser:
globalvar gml_parser_error_text;
globalvar gml_parser_error_pos;
globalvar gml_parser_src_buf; gml_parser_src_buf = buffer_create(1024, buffer_fast, 1);
globalvar gml_parser_str_buf; gml_parser_str_buf = buffer_create(1024, buffer_grow, 1);
globalvar gml_parser_buf_sub_buf; gml_parser_buf_sub_buf = buffer_create(1024, buffer_grow, 1);
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
globalvar gml_script_index_offset; gml_script_index_offset = 0;
// gml:
globalvar gml_sig_list; gml_sig_list = ds_list_create();
globalvar gml_func_sig; gml_func_sig = new haxe_ds_string_map();
globalvar gml_func_arg0; gml_func_arg0 = new haxe_ds_string_map();
globalvar gml_func_arg1; gml_func_arg1 = new haxe_ds_string_map();
globalvar gml_func_args; gml_func_args = new haxe_ds_string_map();
globalvar gml_func_rest; gml_func_rest = new haxe_ds_string_map();
globalvar gml_func_eval; gml_func_eval = new haxe_ds_string_map();
globalvar gml_func_script; gml_func_script = new haxe_ds_string_map();
globalvar gml_func_script_id; gml_func_script_id = new haxe_ds_string_map();
globalvar gml_inst_data; gml_inst_data = new haxe_ds_string_map();
globalvar gml_var_flags; gml_var_flags = new haxe_ds_string_map();
globalvar gml_var_refs; gml_var_refs = new haxe_ds_string_map();
globalvar gml_var_types; gml_var_types = new haxe_ds_string_map();
globalvar gml_pf_readonly; gml_pf_readonly = 1;
globalvar gml_pf_array; gml_pf_array = 2;
globalvar gml_pf_inst; gml_pf_inst = 4;
globalvar gml_const_map; gml_const_map = new haxe_ds_string_map();
globalvar gml_const_val; gml_const_val = new haxe_ds_string_map();
globalvar gml_asset_kind; gml_asset_kind = new haxe_ds_string_map();
globalvar gml_asset_index; gml_asset_index = new haxe_ds_string_map();
globalvar gml_enum_map; gml_enum_map = new haxe_ds_string_map();
// gml.seek_eval:
globalvar gml_seek_eval_error_text;
globalvar gml_seek_eval_error_pos;
globalvar gml_seek_eval_eval_rec;
globalvar gml_seek_eval_eval_thread; gml_seek_eval_eval_thread = undefined;
globalvar gml_seek_eval_eval_actions; gml_seek_eval_eval_actions = ds_list_create();
globalvar gml_seek_eval_invalid_value; gml_seek_eval_invalid_value = [];
// gml.seek_set_op:
globalvar gml_seek_set_op_resolve_set_op_safe;
globalvar gml_seek_set_op_resolve_set_op_xw;
// gml_std.gml.internal.ArrayImpl:
globalvar gml_std_gml_internal_ArrayImpl_join_buf; gml_std_gml_internal_ArrayImpl_join_buf = undefined;
// haxe.ds.basic_map:
globalvar haxe_ds_basic_map_blank; haxe_ds_basic_map_blank = [];
// live:
globalvar live_async_http_1_found; live_async_http_1_found = new haxe_ds_string_map();
globalvar live_async_http_1_acc; live_async_http_1_acc = ds_list_create();
// live_shader:
globalvar live_shader_updated; live_shader_updated = live_shader_updated_default;
globalvar live_shader_live_shaders; live_shader_live_shaders = ds_map_create();
globalvar live_shader_live_shaders_start; live_shader_live_shaders_start = ds_list_create();
globalvar live_shader_live_shaders_stop; live_shader_live_shaders_stop = ds_list_create();
// live:
globalvar live_is_ready; live_is_ready = false;
globalvar live_request_url; live_request_url = undefined;
globalvar live_request_guid; live_request_guid = undefined;
globalvar live_request_id; live_request_id = undefined;
globalvar live_request_time; live_request_time = 0;
globalvar live_request_rate; live_request_rate = 1;
globalvar live_request_password; live_request_password = "";
globalvar live_result; live_result = "";
globalvar live_directory;
globalvar live_live_map; live_live_map = new haxe_ds_string_map();
globalvar live_live_list; live_live_list = ds_list_create();
globalvar live_live_enums; live_live_enums = new haxe_ds_string_map();
globalvar live_live_macros; live_live_macros = new haxe_ds_string_map();
globalvar live_live_globals; live_live_globals = undefined;
globalvar live_live_sprites; live_live_sprites = ds_map_create();
globalvar live_live_sprites_start; live_live_sprites_start = ds_list_create();
globalvar live_live_sprites_stop; live_live_sprites_stop = ds_list_create();
globalvar live_live_room; live_live_room = -1;
globalvar live_live_room_data; live_live_room_data = ds_map_create();
globalvar live_live_rooms; live_live_rooms = ds_map_create();
globalvar live_live_rooms_start; live_live_rooms_start = ds_list_create();
globalvar live_live_rooms_stop; live_live_rooms_stop = ds_list_create();
globalvar live_blank_object; live_blank_object = -1;
globalvar live_blank_room; live_blank_room = -1;
globalvar live_temp_path; live_temp_path = "gmlive-" + string(gml_std_Date_now());
globalvar live_log_script; live_log_script = live_log_impl;
globalvar live_update_script; live_update_script = live_update_script_impl;
globalvar live_custom_origin; live_custom_origin = undefined;
globalvar live_custom_self; live_custom_self = undefined;
globalvar live_custom_other; live_custom_other = undefined;
globalvar live_room_updated; live_room_updated = live_room_updated_impl;
// live.room_loader:
globalvar live_room_loader_object_cache; live_room_loader_object_cache = ds_map_create();
globalvar live_room_loader_sprite_cache; live_room_loader_sprite_cache = ds_map_create();
globalvar live_room_loader_use_physics; live_room_loader_use_physics = false;
globalvar live_room_loader_room_x; live_room_loader_room_x = 0;
globalvar live_room_loader_room_y; live_room_loader_room_y = 0;
globalvar live_room_loader_apply_backgrounds; live_room_loader_apply_backgrounds = true;
globalvar live_room_loader_apply_instances; live_room_loader_apply_instances = true;
globalvar live_room_loader_apply_tiles; live_room_loader_apply_tiles = true;
globalvar live_room_loader_apply_views; live_room_loader_apply_views = true;
globalvar live_room_loader_apply_settings; live_room_loader_apply_settings = true;
globalvar live_room_loader_apply_sprites; live_room_loader_apply_sprites = true;
globalvar live_room_loader_inst_map_gml; live_room_loader_inst_map_gml = ds_map_create();
globalvar live_room_loader_inst_map_yy; live_room_loader_inst_map_yy = ds_map_create();
// gml.stack:
globalvar gml_stack_fill_value_arr; gml_stack_fill_value_arr = array_create(1024, 0);
// gml:
globalvar gml_object_children;
globalvar gml_object_fields; gml_object_fields = gml_object_init();
globalvar gml_object_field_names;
globalvar gml_object_access;
// gml.thread:
globalvar gml_thread_current; gml_thread_current = undefined;
// vm.gml_thread_exec_slice:
globalvar vm_gml_thread_exec_slice_funcs; vm_gml_thread_exec_slice_funcs = vm_gml_thread_exec_slice_init();
// gml.type_check:
globalvar gml_type_check_map; gml_type_check_map = gml_type_check_init();
// gml.value:
globalvar gml_value_print_refs; gml_value_print_refs = ds_map_create();
globalvar gml_value_print_num; gml_value_print_num = 0;
// vm._gml_with_data.gml_with_data_impl_:
globalvar vm__gml_with_data_gml_with_data_impl__pools; vm__gml_with_data_gml_with_data_impl__pools = vm__gml_with_data_gml_with_data_impl__init();
// vm_group_call:
globalvar vm_group_call_call_func_result;
globalvar vm_group_call_call_func_status;
// vm_group_op:
globalvar vm_group_op_funcs; vm_group_op_funcs = vm_group_op_impl();
// vm.v2.gml_thread_v2:
globalvar vm_v2_gml_thread_v2_handlers; vm_v2_gml_thread_v2_handlers = vm_v2_gml_thread_v2_handlers_init();

live_preinit_api();
live_preinit_project();
