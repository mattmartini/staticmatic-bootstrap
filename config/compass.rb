require "staticmatic/compass"
project_type = :staticmatic

line_comments         = true               # SASS option to turn off line comments
output_style          = :expanded          # :compact, :nested, :expanded, :compressed

http_path             = "/"                # root when deployed
http_images_path      = "/images"
http_stylesheets_path = "/stylesheets"
http_javascripts_path = "/javascripts"

sass_dir              = "src/stylesheets"  # dir containing Sass / Compass source files
css_dir               = "site/stylesheets" # final CSS
images_dir            = "site/images"      # final images
javascripts_dir       = "site/javascripts" # dir containing javascripts


# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
