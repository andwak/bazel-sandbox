def _print_aspect_impl(target, ctx):
    if hasattr(ctx.rule.attr, 'srcs'):
        for src in ctx.rule.attr.srcs:
            for f in src.files.to_list():
                print("The file is: " + f.path)
    return []

print_aspect = aspect(
    implementation = _print_aspect_impl,
    attr_aspects = ['srcs'],
)