/*
 * blueimp CDN Gruntfile
 * https://github.com/blueimp/cdn
 *
 * Copyright 2013, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */

/*global module */

module.exports = function (grunt) {
    'use strict';

    grunt.initConfig({
        jshint: {
            all: [
                'Gruntfile.js'
            ]
        },
        copy: {
            mocha_css: {
                src: 'node_modules/mocha/mocha.css',
                dest: 'css/mocha.css'
            },
            mocha_js: {
                src: 'node_modules/mocha/mocha.js',
                dest: 'js/mocha.js'
            },
            expect_js: {
                src: 'node_modules/expect.js/expect.js',
                dest: 'js/expect.js'
            }
        },
        uglify: {
            production: {
                expand: true,
                cwd: 'js/',
                src: ['**/*.js'],
                dest: 'js/',
                ext: '.min.js'
            }
        },
        less: {
            production: {
                options: {
                    cleancss: true
                },
                expand: true,
                cwd: 'css/',
                src: ['**/*.css'],
                dest: 'css/',
                ext: '.min.css'
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-bump-build-git');

    grunt.registerTask('test', ['jshint']);
    grunt.registerTask('default', ['test', 'copy', 'less', 'uglify']);

};
