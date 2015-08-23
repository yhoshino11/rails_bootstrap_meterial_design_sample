Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('vendor',
                                                         'assets',
                                                         'bower_components')
Rails.application.config.assets.paths << Rails.root.join('app',
                                                         'assets',
                                                         'fonts')
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )
# Rails.application.config.assets.precompile += %w( search.js )
