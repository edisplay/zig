const Struct = struct {
    a: u32,
};
fn getIndex() usize {
    return 2;
}
export fn entry() void {
    const index = getIndex();
    const field = @typeInfo(Struct).Struct.fields[index];
    _ = field;
}

// error
// backend=stage1
// target=native
//
// tmp.zig:9:51: error: values of type 'std.builtin.Type.StructField' must be comptime known, but index value is runtime known