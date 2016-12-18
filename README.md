# Materialize

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Install:
 materialize-sass, sass-brunch, jquery and copycat-brunch through npm.

### Delete:
 web/static/css/phoenix.css and renamed app.css to app.scss.

### Add:

    sass: {
          options: {
            includePaths: [
              "node_modules/materialize-sass/sass"
              ]
          }
        },
        copycat: {
          "font": ["node_modules/materialize-sass/font"]
        }

to brunch-config.js plugins and:


    npm: {
      enabled: true,
      globals: {
        $: "jquery",
        jQuery: "jquery"
      }
    }

to get jQuery into the global namespace.

### Update:
lib/my_app/endpoint.ex Plug.Static from 'fonts' the newly created 'font'
folder as this is where materialize is looking for the fonts and icons:

    plug Plug.Static,
        at: "/", from: :materialize, gzip: false,
        only: ~w(css font images js favicon.ico robots.txt)
### Add:

    $icon-font-path: "/font/materialize-design-icons/";
    @import "materialize";

to web/static/css/app.scss.

### Download:
materialize.sass package from [`materialize.com`](http://materializecss.com/getting-started.html)

Extract materialize.js from the bin folder, extract the contents of the date-picker folder
and add them along with the rest of the contents of the materialize/js folder to web/static/vendor.