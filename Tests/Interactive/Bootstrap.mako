<!DOCTYPE html>
<html lang="en">
  <!-- test_runner_no_wrapper -->
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script src="${get_asset_url('Bootstrap','prettify.js', version)}"></script>
    <script src="/depender/build?requireLibs=Bootstrap&require=Core/DomReady&version=${version}"></script>
    <script>$(function () { prettyPrint() })</script>

    <!-- Le styles -->
    <link href="${get_asset_url('Bootstrap','bootstrap.css', version)}" rel="stylesheet">
    <link href="${get_asset_url('Bootstrap','docs.css', version)}" rel="stylesheet">
    <link href="${get_asset_url('Bootstrap','prettify.css', version)}" rel="stylesheet">
    <style>
      a {
        cursor: pointer;
      }
    </style>

  </head>

  <body id="bootstrap-js">
    <!-- Topbar
    ================================================== -->
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand">Bootstrap JS (for MooTools)</a>
          <ul class="nav">
            <li><a href="#overview">Overview</a></li>
            <li><a href="#modal">Modals</a></li>
            <li><a href="#dropdown">Dropdown</a></li>
            <li><a href="#tabs">Tabs</a></li>
            <li><a href="#tooltip">Tooltip</a></li>
            <li><a href="#popover">Popover</a></li>
            <li><a href="#alerts">Alerts</a></li>
          </ul>
          <ul data-behavior="BS.Dropdown" class="nav secondary-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Other Plugins<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#collapse">Collapse</a></li>
                <li><a href="#carousel">Carousel</a></li>
                <li><a href="#typeahead">Typeahead</a></li>
                <li><a href="#scrollspy">ScrollSpy</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Masthead (blueprinty thing)
    ================================================== -->
    <header class="jumbotron subhead" id="overview">
      <div class="inner">
        <div class="container">
          <h1>Javascript for Bootstrap</h1>
          <p class="lead">
            Bring Bootstrap's components to life with new, custom plugins that work with <a href="http://mootools.net/" target="_blank"><strong>MooTools</strong></a>.
          </p>
          <p><a href="http://twitter.github.com/bootstrap/">&larr; Back to Bootstrap home</a></p>
        </div><!-- /container -->
      </div>
    </header>

    <div class="container">

      <section id="overview">
        <div class="page-header">
          <h1>MooTools for Bootstrap</h1>
        </div>
        <div class="row">
          <div class="span12 columns">

            <p><a href="http://twitter.github.com/bootstrap/">Bootstrap, from Twitter</a> is a heaping serving of awesomeness. In addition to it's easy to use grid system, layouts, good looking typography, and the fact that the whole thing is written in <a href="http://lesscss.org">Less</a>, it includes a handful of <a href="http://twitter.github.com/bootstrap/javascript.html">JavaScript plugins</a> for <a href="http://jquery.com/">jQuery</a> and <a href="http://ender.no.de/">Ender</a> to bring a lot of the CSS components to life. We're talking tips, popups, drop down menus and more.</p>

            <h2>Enter MooTools</h2>

            <p>For those of us who prefer <a href="http://mootools.net">MooTools</a>, the JS included in Bootstrap isn't so useful. This library offers all the tools necessary to get the same functionality released by Twitter.</p>

            <h2>Getting the Library</h2>

            <p>Included in this repo are numerous MooTools plugins that depend on <a href="http://mootools.net/download">MooTools Core</a>, <a href="http://mootools.net/more">MooTools More</a>, <a href="http://clientcide.com">Clientcide</a>, <a href="http://github.com/anutron/behavior">MooTools Behavior</a>, and <a href="http://github.com/anutron/more-behaviors">Behaviors for MooTools More</a>. Building all these takes some configuration on your part (check out the <a href="https://github.com/kamicane/packager/">MooTools Packager</a> - here's a <a href="http://ryanflorence.com/packager/">nice blog post on it by Ryan Florence</a>), or you can just go to <a href="http://dev.clientcide.com/?version=MooTools%20Bootstrap">dev.clientcide.com</a> and build it with the online tools there, which is what I recommend.</p>
          </div>
        </div>
      </section>

    <!-- Modal
    ================================================== -->

    <section id="modal">
      <div class="page-header">
        <h1>Modals <small>Delegator.BS.ShowPopup.js &amp; Behavior.BS.Popup.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Our Modal plugin is a super slim take on the traditional modal js plugin, taking special care to include only the bare functionality that we require here at twitter.</p>
        </div>
        <div class="span8 columns">
          <h3>Using Behavior.Popup and Delegator.ShowPopup</h3>
<pre class="prettyprint linenums">&lt;!-- this button will show the popup below it -->
&lt;button data-trigger="BS.showPopup" data-bs-showpopup-target="!body #demoPopup"
    class="btn btn-danger">Launch Modal&lt;/button>

&lt;div data-behavior="BS.Popup" class="modal fade" id="demoPopup">
  &lt;div class="modal-header">
    &lt;a class="close">&times;&lt;/a>
    &lt;h3>Modal Heading&lt;/h3>
  &lt;/div>
  &lt;div class="modal-body">
    &lt;p>One fine body...&lt;/p>
  &lt;/div>
  &lt;div class="modal-footer">
    &lt;a class="btn btn-primary dismiss stopEvent">Primary&lt;/a>
    &lt;a class="btn btn-secondary dismiss stopEvent">Secondary&lt;/a>
  &lt;/div>
&lt;/div>
</pre>
        <h3>Behavior.BS.Popup Options</h3>
        <table class="table table-striped table-bordered">
          <thead>
           <tr>
             <th style="width: 100px;">Name</th>
             <th style="width: 50px;">type</th>
             <th style="width: 50px;">default</th>
             <th>description</th>
           </tr>
          </thead>
          <tbody>
            <tr>
              <td>persist</td>
              <td>boolean</td>
              <td>true</td>
              <td>If <code>false</code> the popup and its modal layer will be destroyed when it is closed. Useful when you are fetching the popup with Ajax.</td>
            </tr>
            <tr>
              <td>hide</td>
              <td>boolean</td>
              <td>false</td>
              <td>Do not show the Popup immediately.</td>
            </tr>
             <tr>
               <td>mask</td>
               <td>boolean</td>
               <td>true</td>
               <td>Includes a modal-backdrop element.</td>
             </tr>
             <tr>
               <td>animate</td>
               <td>boolean</td>
               <td>true</td>
               <td>Slides the window into and out of view with a smooth transition.</td>
             </tr>
             <tr>
               <td>closeOnClickOut</td>
               <td>boolean</td>
               <td>true</td>
               <td>Close the popup when the user clicks out of it (on the mask or, if it's not used, the document body outside the popup).</td>
             </tr>
             <tr>
               <td>closeOnEsc</td>
               <td>boolean</td>
               <td>false</td>
               <td>Closes the modal when escape key is pressed</td>
             </tr>
             <tr>
               <td>focusOnShow</td>
               <td>string</td>
               <td>input[type=text], select, textarea</td>
               <td>A selector (string) to find an element relative to the root of the popup whose `select` method will be called on show.</td>
             </tr>
            </tbody>
          </table>
          <p>
             <span class="label notice">Notice</span>
             This implementation mirrors that found in Twitter's JS library. It uses CSS transitions when available (generally speaking, every browser but IE). Add the <code>.fade</code> class to your element to have it transition in. You can alternately specify the <code>animate</code> option in the behavior filter settings listed above. If you do not specify either of these, you should add the <code>.hide</code> class unless you want your element visible immediately.
          </p>
          <p>
            <span class="label notice">Notice</span>
            Any element in your content with the class <code>.close</code> or <code>.dismiss</code> will close the popup. The reason for both is that Bootstrap provides styles for .close elements (the *x* in the upper right corner) that you may not want applied to your element. By default, the default behavior for the click event on these elements is NOT stopped (so if they are submit buttons or actual links with <code>href</code> properties, those actions will occur). Add the class <code>stopEvent</code> to have the class call <code>Event.preventDefault</code> for you.
          </p>

          <h3>Behavior Options</h3>
          <p>
            <span class="label notice">Notice</span>
            Behavior options can be set inline (<code>data-filtername-option="value"</code>) or using JSON-like values like so:
          </p>
<pre class="prettyprint linenums">&lt;div data-behavior="FilterName" data-filtername-options="
  'string': 'foo',
  'number': 1,
  'object': { 'array': [1,2]}
">...&lt;/div></pre>
          <h3>Selectors</h3>
          <p>
            <span class="label notice">Notice</span>
            Selectors in Behavior filters and Delegator triggers are always relative to the element they modify. So if you want
            to find an element that is a child of that element, you can just use a regular selector, but if you need to find
            an element that is somewhere else in the DOM, use <a href="http://mootools.net/docs/core/Slick/Slick">Slick's</a>
            reverse combinators (<code>!.someParent #someChildOfThatParent</code> - e.g. <code>!body #foo</code>).
          </p>

          <h3>Demo</h3>
          <!-- sample modal content -->
          <div data-behavior="BS.Popup" class="modal fade" id="demoPopup">
            <div class="modal-header">
              <a class="close">&times;</a>
              <h3>Modal Heading</h3>
            </div>
            <div class="modal-body">
              <p>One fine body...</p>
            </div>
            <div class="modal-footer">
              <a class="btn btn-primary dismiss stopEvent">Primary</a>
              <a class="btn btn-secondary dismiss stopEvent">Secondary</a>
            </div>
          </div>


          <button data-trigger="BS.showPopup" data-bs-showpopup-target="!body #demoPopup" class="btn btn-danger">Launch Modal</button>

        </div>
      </div>
    </section>


    <!-- Dropdown
    ================================================== -->

    <section id="dropdown">
      <div class="page-header">
        <h1>Dropdown <small>Behavior.BS.Dropdown.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>This plugin is for adding dropdown interaction to the bootstrap topbar or tabbed navigations.</p>
        </div>
        <div class="span8 columns">
          <h2>Using Behavior.BS.Dropdown</h2>
          <p>To quickly add dropdown functionality to any nav element, use the <code>Dropdown</code> behavior. Any valid bootstrap dropdown inside the container will automatically be activated.</p>
<pre class="prettyprint linenums">&lt;-- a simple example -->
&lt;ul data-behavior="BS.Dropdown" class="nav">
  &lt;li class="dropdown">
    &lt;a class="dropdown-toggle" data-toggle="dropdown">Menu2&lt;/a>
    &lt;ul class="dropdown-menu">
      &lt;li>&lt;a>item1&lt;/a>&lt;/li>
      &lt;li>&lt;a>item2&lt;/a>&lt;/li>
      &lt;li>&lt;a>item3&lt;/a>&lt;/li>
    &lt;/ul>
  &lt;/li>
&lt;/ul>

&lt;-- an example with numerous menus -->

&lt;div id="navbar-example" class="navbar navbar-static" data-behavior="BS.Dropdown">
  &lt;div class="navbar-inner">
    &lt;div class="container" style="width:auto">

      &lt;a class="brand">Project Name&lt;/a>
      &lt;ul class="nav">
        &lt;li>&lt;a>Link&lt;/a>&lt;/li>
        &lt;li class="dropdown">
          &lt;a class="dropdown-toggle" data-toggle="dropdown">Dropdown 1 &lt;b class="caret">&lt;/b>&lt;/a>
          &lt;ul class="dropdown-menu">
            &lt;li>&lt;a>Secondary link&lt;/a>&lt;/li>
            &lt;li>&lt;a>Something else here&lt;/a>&lt;/li>

            &lt;li class="divider">&lt;/li>
            &lt;li>&lt;a>Another link&lt;/a>&lt;/li>
          &lt;/ul>
        &lt;/li>
      &lt;/ul>

      &lt;ul class="nav pull-right">
        &lt;li class="dropdown">
          &lt;a class="dropdown-toggle" data-toggle="dropdown">Dropdown 2 &lt;b class="caret">&lt;/b>&lt;/a>
          &lt;ul class="dropdown-menu">
            &lt;li>&lt;a>Secondary link&lt;/a>&lt;/li>

            &lt;li>&lt;a>Something else here&lt;/a>&lt;/li>
            &lt;li class="divider">&lt;/li>
            &lt;li>&lt;a>Another link&lt;/a>&lt;/li>
          &lt;/ul>
        &lt;/li>
      &lt;/ul>
    &lt;/div>
  &lt;/div>&lt;!-- /navbar-inner -->
&lt;/div>&lt;!-- /navbar-example --></pre>
          </div>
        </div>
        <h2>Demo</h2>

        <h3>Navbar</h3>

        <div id="navbar-example" class="navbar navbar-static" data-behavior="BS.Dropdown">
          <div class="navbar-inner">
            <div class="container" style="width:auto">

              <a class="brand">Project Name</a>
              <ul class="nav">
                <li><a>Link</a></li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown">Dropdown 1 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a>Secondary link</a></li>
                    <li><a>Something else here</a></li>

                    <li class="divider"></li>
                    <li><a>Another link</a></li>
                  </ul>
                </li>
              </ul>

              <ul class="nav pull-right">
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown">Dropdown 2 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a>Secondary link</a></li>

                    <li><a>Something else here</a></li>
                    <li class="divider"></li>
                    <li><a>Another link</a></li>
                  </ul>
                </li>
              </ul>

              <ul class="nav pull-right">
                <li id="icon-dropdown"  class="dropdown">
                  <a data-toggle="dropdown">
                    <i class="icon-info-sign icon-white"></i>
                  </a>
                  <ul class="dropdown-menu">
                    <li><a>Action</a></li>
                    <li><a>Another action</a></li>
                    <li><a>Something else here</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div><!-- /navbar-inner -->
        </div><!-- /navbar-example -->

        <h3>Buttons with dropdown</h3>

        <div class="btn-toolbar" style="margin-top: 18px;" data-behavior="BS.Dropdown">

          <!-- Buttons -->
          <div class="btn-group">
            <a class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a>Action</a></li>
              <li><a>Another action</a></li>
            </ul>
          </div><!-- /btn-group -->
          <div class="btn-group">
            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a>Action</a></li>
              <li><a>Another action</a></li>
              <li class="divider"></li>
              <li><a>Separated link</a></li>
            </ul>
          </div><!-- /btn-group -->
          <div class="btn-group">
            <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown">Danger <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a>Action</a></li>
              <li><a>Another action</a></li>
            </ul>
          </div><!-- /btn-group -->

          <!-- Split buttons -->
          <div class="btn-group">
            <a class="btn btn-success">Action</a>
            <a class="btn btn-success dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a>Action</a></li>
              <li><a>Another action</a></li>
            </ul>
          </div><!-- /btn-group -->
          <div class="btn-group">
            <a class="btn btn-info">Action</a>
            <a class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a>Action</a></li>
              <li><a>Another action</a></li>
              <li><a>Something else here</a></li>
              <li class="divider"></li>
              <li><a>Separated link</a></li>
            </ul>
          </div><!-- /btn-group -->

        </div><!-- /btn-toolbar -->


      <h3>Pills with dropdown</h3>

      <!-- Pills -->
      <ul class="nav nav-pills" data-behavior="BS.Dropdown">
          <li class="active"><a>Regular link</a></li>
          <li class="dropdown">
              <a class="dropdown-toggle" id="drop4" role="button" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
                  <li><a tabindex="-1">Action</a></li>
                  <li><a tabindex="-1">Another action</a></li>
                  <li><a tabindex="-1">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a tabindex="-1">Separated link</a></li>
              </ul>
          </li>
          <li class="dropdown">
              <a class="dropdown-toggle" id="drop5" role="button" data-toggle="dropdown">Dropdown 2 <b class="caret"></b></a>
              <ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
                  <li><a tabindex="-1">Action</a></li>
                  <li><a tabindex="-1">Another action</a></li>
                  <li><a tabindex="-1">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a tabindex="-1">Separated link</a></li>
              </ul>
          </li>
          <li class="dropdown">
              <a class="dropdown-toggle" id="drop5" role="button" data-toggle="dropdown">Dropdown 3 <b class="caret"></b></a>
              <ul id="menu3" class="dropdown-menu" role="menu" aria-labelledby="drop5">
                  <li><a tabindex="-1">Action</a></li>
                  <li><a tabindex="-1">Another action</a></li>
                  <li><a tabindex="-1">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a tabindex="-1">Separated link</a></li>
              </ul>
          </li>
      </ul>

    </section>

    <!-- Tabs
    ================================================== -->

    <section id="tabs">
      <div class="page-header">
        <h1>Tabs <small>Behavior.BS.Tabs.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>This plugin adds quick, dynamic tab and pill functionality.</p>
        </div>
        <div class="span8 columns">
          <h3>Markup</h3>
          <p>You can activate a tab or pill navigation without writing any javascript by simply giving them a <code>data-behavior="BS.Tabs"</code>.</p>
          <pre class="prettyprint linenums"> &lt;ul class="tabs" data-behavior="BS.Tabs" &gt;...&lt;/ul&gt;</pre>
          <p>
            Activates tab functionality for a given container.
          </p>
<pre class="prettyprint linenums">&lt;ul class="nav nav-tabs" data-behavior="BS.Tabs BS.Dropdown" data-bs-tabs-options="
  'smooth': true
">
  &lt;li class="active">&lt;a href="#home">Home&lt;/a>&lt;/li>
  &lt;li>&lt;a>Profile&lt;/a>&lt;/li>
  &lt;li>&lt;a>Messages&lt;/a>&lt;/li>
  &lt;li class="dropdown">
    &lt;a class="dropdown-toggle" data-toggle="dropdown">Settings&lt;b class="caret">&lt;/b>&lt;/a>
    &lt;ul class="dropdown-menu">
      &lt;li>&lt;a>Email address&lt;/a>&lt;/li>
      &lt;li>&lt;a>Password&lt;/a>&lt;/li>
    &lt;/ul>
  &lt;/li>
&lt;/ul>
&lt;div id="my-tab-content" class="tab-content">
  &lt;div class="tab-pane active" id="home">
    &lt;p>...&lt;/p>
  &lt;/div>
  &lt;div id="profile" class="tab-pane">
    &lt;p>...&lt;/p>
  &lt;/div>
  &lt;div id="messages" class="tab-pane">
    &lt;p>...&lt;/p>
  &lt;/div>
  &lt;div id="email" class="tab-pane">
    &lt;p>...&lt;/p>
  &lt;/div>
  &lt;div id="password" class="tab-pane">
    &lt;p>...&lt;/p>
  &lt;/div>
&lt;/div>
</pre>
          <h3>Behavior.BS.Tab Options</h3>
          <table class="table table-striped table-bordered">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 50px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
            <tr>
              <td>tabs-selector</td>
              <td>string</td>
              <td>">li"</td>
              <td>A selector to find the tab elements that the user clicks.</td>
            </tr>
             <tr>
               <td>sections-selector</td>
               <td>string</td>
               <td>"+.tab-content > div"</td>
               <td>A selector to find the sections that correlate to each tab.</td>
             </tr>
             <tr>
               <td>smooth</td>
               <td>boolean</td>
               <td>false</td>
               <td>Fade in the content when the tabs are switched.</td>
             </tr>
             <tr>
               <td>smoothSize</td>
               <td>boolean</td>
               <td>false</td>
               <td>Transition the height of each tab section as its displayed.</td>
             </tr>
             <tr>
               <td>selectedClass</td>
               <td>string</td>
               <td>"active"</td>
               <td>The class added to the active tab.</td>
             </tr>
             <tr>
               <td>hash</td>
               <td>string</td>
               <td>--</td>
               <td>If defined, will add a hash value to the window location so that if the user reloads the selected tab will be selected by default.</td>
             </tr>
            </tbody>
          </table>
          <h3>Demo</h3>
          <ul class="nav nav-tabs" data-behavior="BS.Tabs BS.Dropdown" data-bs-tabs-options="
            'smooth': true
          ">
            <li class="active"><a href="#home">Home</a></li>
            <li><a>Profile</a></li>
            <li><a>Messages</a></li>
            <li class="dropdown">

              <a class="dropdown-toggle" data-toggle="dropdown">Settings<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a>Email address</a></li>
                <li><a>Password</a></li>
              </ul>
            </li>
          </ul>
          <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="home">
              <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
            </div>
            <div id="profile" class="tab-pane">
              <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
            </div>
            <div id="messages" class="tab-pane">
              <p>Banksy do proident, brooklyn photo booth delectus sunt artisan sed organic exercitation eiusmod four loko. Quis tattooed iphone esse aliqua. Master cleanse vero fixie mcsweeney's. Ethical portland aute, irony food truck pitchfork lomo eu anim. Aesthetic blog DIY, ethical beard leggings tofu consequat whatever cardigan nostrud. Helvetica you probably haven't heard of them carles, marfa veniam occaecat lomo before they sold out in shoreditch scenester sustainable thundercats. Consectetur tofu craft beer, mollit brunch fap echo park pitchfork mustache dolor.</p>
            </div>
            <div id="email" class="tab-pane">
              <p>Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
            </div>
            <div id="password" class="tab-pane">
              <p>Aliqua tofu quinoa +1 commodo eiusmod. High life williamsburg cupidatat twee homo leggings. Four loko vinyl DIY consectetur nisi, marfa retro keffiyeh vegan. Fanny pack viral retro consectetur gentrify fap.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Tips
    ================================================== -->

    <section id="tooltip">
      <div class="page-header">
        <h1>Tooltip <small>Bootstrap.Tooltip.js and Behavior.Tooltip.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Based on the excellent jQuery.tipsy plugin written by Jason Frame; Bootstrap.Tooltip is an updated version, which doesn't rely on images, uses css3 for animations, and is based on MooTools.</p>
        </div>
        <div class="span8 columns">
          <h3>Using Behavior.Tooltip.js</h3>
          <pre class="prettyprint linenums">&lt;a data-behavior="BS.Tooltip" title="I'm a tooltip">a tip!&lt;/a></pre>
          <h3>Options</h3>
          <table class="table table-striped table-bordered">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 100px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
              <tr>
                <td>content</td>
                <td>string</td>
                <td>'title'</td>
                <td>the content of the tip, if not defined, will use the <code>title</code> property of the element</td>
              </tr>
              <tr>
                <td>animate</td>
                <td>boolean</td>
                <td>true</td>
                <td>apply a css fade transition to the tooltip</td>
              </tr>
              <tr>
                <td>delayIn</td>
                <td>number</td>
                <td>200</td>
                <td>delay before showing tooltip (ms)</td>
              </tr>
              <tr>
                <td>delayOut</td>
                <td>number</td>
                <td>0</td>
                <td>delay before hiding tooltip (ms)</td>
              </tr>
              <tr>
                <td>location</td>
                <td>string</td>
                <td>'above'</td>
                <td>how to position the tooltip - above | below | left | right</td>
              </tr>
              <tr>
                <td>offset</td>
                <td>number</td>
                <td>0</td>
                <td>pixel offset of tooltip from target element</td>
              </tr>
              <tr>
                <td>trigger</td>
                <td>string</td>
                <td>'hover'</td>
                <td>how tooltip is triggered - hover | focus | manual</td>
              </tr>
              <tr>
                <td>onOverflow</td>
                <td>boolean</td>
                <td>false</td>
                <td>Only show the tip if the element's content is overflown (i.e. it's scroll-height or scroll-width is greater than the height or width of the element)</td>
              </tr>
            </tbody>
          </table>
          <h3>Demo</h3>
          <div class="well">
            <p class="muted">Tight pants next level keffiyeh
              <a data-behavior='BS.Tooltip' data-bs-tooltip-location="above" title='Some title text'>you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel
              <a data-behavior='BS.Tooltip' data-bs-tooltip-options="'location': 'below', 'offset':8" title='Another tooltip'>have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A
              <a data-behavior='BS.Tooltip' data-bs-tooltip-options="'location': 'left', 'offset':-8" title='Another one here too'>really ironic</a> artisan whatever keytar, scenester farm-to-table banksy Austin
              <a data-behavior='BS.Tooltip' data-bs-tooltip-options="'location': 'right', 'offset':8" title='The last tip!'>twitter handle</a> freegan cred raw denim single-origin coffee viral.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Popovers
    ================================================== -->

    <section id="popover">
      <div class="page-header">
        <h1>Popovers <small>Behavior.Popover.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>The popover plugin provides a simple interface for adding popovers to your application.</p>
        </div>
        <div class="span8 columns">
          <h3>Using Behavior.Popover.js</h3>
          <pre class="prettyprint linenums">&lt;a data-behavior="BS.Popover" title="A Title" data-bs-popover-content="And here's some amazing content. It's very engaging. right?">hover for popover&lt;/a></pre>
          <h3>Options</h3>
          <table class="table table-striped table-bordered">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 100px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
              <tr>
                <td>title</td>
                <td>string</td>
                <td>--</td>
                <td>the title of the popover, if not defined, will use the <code>title</code> property of the element</td>
              </tr>
              <tr>
                <td>content</td>
                <td>string</td>
                <td>--</td>
                <td>the content of the popover</td>
              </tr>
              <tr>
                <td>titleElement</td>
                <td>string</td>
                <td>--</td>
                <td>A css selector relative to the behavior element that should be used for the title of the popup.</td>
              </tr>
              <tr>
                <td>contentElement</td>
                <td>string</td>
                <td>--</td>
                <td>A css selector relative to the behavior element that should be used for the content of the popup.</td>
              </tr>
              <tr>
                <td>animate</td>
                <td>boolean</td>
                <td>true</td>
                <td>apply a css fade transition to the tooltip</td>
              </tr>
              <tr>
                <td>delayIn</td>
                <td>number</td>
                <td>200</td>
                <td>delay before showing tooltip (ms)</td>
              </tr>
              <tr>
                <td>delayOut</td>
                <td>number</td>
                <td>0</td>
                <td>delay before hiding tooltip (ms)</td>
              </tr>
              <tr>
                <td>location</td>
                <td>string</td>
                <td>'above'</td>
                <td>how to position the tooltip - above | below | left | right</td>
              </tr>
              <tr>
                <td>offset</td>
                <td>number</td>
                <td>10</td>
                <td>pixel offset of tooltip from target element</td>
              </tr>
              <tr>
                <td>trigger</td>
                <td>string</td>
                <td>'hover'</td>
                <td>how tooltip is triggered - hover | focus | manual</td>
              </tr>
              <tr>
                <td>onOverflow</td>
                <td>boolean</td>
                <td>false</td>
                <td>Only show the tip if the element's content is overflown (i.e. it's scroll-height or scroll-width is greater than the height or width of the element)</td>
              </tr>
            </tbody>
          </table>

          <p>
             <span class="label notice">Notice</span>
             If you use the <code>contentTitle</code> or <code>contentElement</code> the expectation is that these elements are hidden in the DOM. The tip will pull these elements into the tip body and set their display to <code>block</code> when the tip is activated.
          </p>


          <h3>Demos</h3>
          <a class="btn btn-danger" data-behavior="BS.Popover" title="A Title" data-bs-popover-content="And here's some amazing content. It's very engaging. right?">hover for popover</a>

          <a class="btn btn-danger" data-behavior="BS.Popover" data-bs-popover-options="
            'contentElement': '!div #popContent',
            'titleElement': '!div #popTitle'
          ">hover for popover with fancy html content</a>
          <div id="popTitle" class="hide"><span class="icon-ok"></span> I've got HTML content!</div>
          <div id="popContent" class="hide">
            <ul>
              <li>And I have</li>
              <li>fancy html</li>
              <li>too!</li>
            </ul>
          </div>
        </div>
      </div>
    </section>



    <!-- Alerts
    ================================================== -->

    <section id="alerts">
      <div class="page-header">
        <h1>Alerts</h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Adding close functionality to alerts with MooTools' Behavior is super easy.</p>
        </div>
        <div class="span8 columns">
          <h3>Closing Alerts</h3>
          <p>Closing errors uses the <code>nix</code> trigger from the <code>Fx.Reveal</code> delegator in <a href="https://github.com/anutron/more-behaviors">more-behaviors</a>. You can put this trigger on any element.</p>
          <h3>Markup</h3>
<pre class="prettyprint linenums">&lt;div class="alert alert-error">
  &lt;!-- the data trigger references the parent div.alert -->
  &lt;a class="close" data-trigger="nix" data-nix-options="
    'target': '!div.alert'
  ">&amp;times;&lt;/a>
  &lt;p>Oh snap! You Got an error!&lt;/p>
&lt;/div></pre>
          <h3>Demo</h3>
          <div class="alert alert-warning fade in" data-alert="alert" >
            <a class="close" data-trigger="nix" data-nix-options="
              'target': '!div.alert'
            ">&times;</a>
            <p><strong>Holy guacamole!</strong> Best check yo self, you're not looking too good.</p>
          </div>
          <div class="alert block-message alert-error fade in" data-alert="alert" >
            <a class="close" data-trigger="nix" data-nix-options="
              'target': '!div.alert'
            ">&times;</a>
            <p><strong>Oh snap! You got an error!</strong> Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
            <div class="alert-actions">
              <a class="btn btn-small" data-trigger="nix" data-nix-options="
                'target': '!div.alert'
              ">Take this action</a> <a class="btn btn-small"
                data-trigger="nix" data-nix-options="
                  'target': '!div.alert'
                ">Or do this</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="page-header" id="collapse">
        <h1>Other Plugins</h1>
      </div>
      <div class="row">
        <div class="span12 columns">
          <p>This implementation supports only the plugins that <a href="http://github.com/anutron">the author</a> has had personal need of. I hope to add support for <a href="http://twitter.github.com/bootstrap/javascript.html">all the interactive features available in Bootstrap</a> at some point. Pull requests are welcome!</p>
        </div>
      </div>
    <!-- Collapse
     ================================================== -->
       <div class="page-header" id="collapse">
         <h2>Collapse</h2>
       </div>
       <div class="row">
         <div class="span12 columns">
           <p>For accordion support, use the Behavior.Accordion plugin in <a href="https://github.com/anutron/more-behaviors/blob/master/Docs/Fx/Behavior.FxAccordion.md">More Behaviors</a>.</p>
         </div>
       </div>

    <!-- Carousel
     ================================================== -->

       <div class="page-header" id="carousel">
         <h2>Carousel</h2>
       </div>
       <div class="row">
         <div class="span12 columns">
           <p>There is currently no support for the Carousel functionality found in Bootstrap.</p>
         </div>
       </div>

    <!-- Typeahead
     ================================================== -->

       <div class="page-header" id="typeahead">
         <h2>Typeahead</h2>
       </div>
       <div class="row">
         <div class="span12 columns">
           <p>There is currently no support for the Typeahead functionality found in Bootstrap.</p>
         </div>
       </div>

    <!-- ScrollSpy
     ================================================== -->

       <div class="page-header" id="scrollspy">
         <h2>ScrollSpy</h2>
       </div>
       <div class="row">
         <div class="span12 columns">
           <p>There is currently no support for the Scrollspy functionality found in Bootstrap.</p>
         </div>
       </div>
     </section>

    </div><!-- /container -->

    <footer class="footer">
      <div class="container">
        <p class="pull-right"><a>Back to top</a></p>
        <p>
          Designed and built with all the love in the world <a href="http://twitter.com/twitter" target="_blank">@twitter</a> by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.<br />
          Licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>.
        </p>
        <p>MooTools support provided by <a href="http://clientcide.com" target="_blank">Aaron Newton</a>.<br>
          Licenced under the <a href="http://www.opensource.org/licenses/mit-license.php" target="_blank">MIT license</a>.
        </p>
      </div>
    </footer>

    <script>
      var behavior = new Behavior().apply(document.body);
      var delegator = new Delegator({
        getBehavior: function(){ return behavior; }
      }).attach(document.body);
    </script>
  </body>
</html>
