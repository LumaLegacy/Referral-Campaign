#!/usr/bin/env puma

threads 2, 2

workers 2
worker_timeout 60

rackup      DefaultRackup
bind        "tcp://0.0.0.0:#{ENV.fetch('PORT', 3000)}"
environment ENV['RACK_ENV'] || 'development'

preload_app!
