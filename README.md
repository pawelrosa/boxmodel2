# boxmodel2
`boxmodel2` is css library providing css classes to modify margins, paddings, borders, dimensions and positions without writing css declarations by yourself.

##Instalation
In your Gemfile include:

    gem 'boxmodel2'
 and execute:

    $ bundle
  or install it by:
  
    gem install boxmodel2
    
##Usage
###Configuration
In your CSS manifest add the following lines:

    $bm-min-value: 5;
    $bm-max-value: 50;
    $bm-step:      5;
    @import 'boxmodel2';
    
You can also generate classes only for specific values. To do so, define a list of values like this:

    $bm-values: -5,1,2,3,10,40;
    @import: 'boxmodel2';
    
**!important** If `$bm-values` is not `null` variables `$bm-min-value`,  `$bm-max-value` and `$bm-step` are not taken into account.

###Responsive
`boxmodel2` provides classes you can use in your responsive web design projects. For example class `.m-r-sm-10` added to an element sets margin-right on the element only for small breakpoint.
By default breakpoints are the same as in Twitter Bootstrap. You can change them using responsive variables.

###Types of classes
`boxmodel2` generates the following types of classes:

- disabling: `n-p`, `n-b-l`, `m-r-0`;
- one direction: `m-r--10`, `p-b-5`, `b-t-3`;
- bi-directional: `m-h-25`, `p-h`;
- four directional: `m-30`, `b-2`;
- position: `pb-20`, `pl-10`;
- demension: `w-30`, `h-15`;
- responsive: `m-b-xs-30`, `p-t-sm-20`, `b-md-3`, `pl-lg-10`.

###Naming convention
- n - no (disabling)
- m - margin
- p - padding
- b - border
- pt - position top
- pr - position right
- pb - position bottom
- pl - position left
- w - width
- h - height
- l - left
- r - right
- t - top
- b - bottom
- v - vertical
- h - horizontal
- xs - extra small
- sm - small
- md - medium
- lg - large

###Examples
- `n-p` - `padding: 0 !important`
- `m-t--10` - `margin-top: -10px !important`
- `p-l-5` - `padding-left: 5px !important`
- `b-r-2` - `border-width-right: 2px !important`
- `pb-15` - `bottom: 15px !important`
- `h-20` - `height: 20px !important`
- `m-r-sm-30` - `margin-right: 30px !important` only for small screens 

###Variables
####Generator variables
Define values for classes generation.

 - `$bm-values` - defines list of values which will be generated; type: `list`; default: `null`
 - `$bm-min-value` - value from which classes will be generated; type: `number`; default: `5`
 - `$bm-max-value` - classes generation will stop on this value; type: `number`; default: `30`
 - `$bm-step` - defines the distance from one class to the other; type: `number`; default: `5`
 - `$bm-directions` - list of directions which classes will modify; type: `list`; default: `top, right, bottom, left, horizontal, vertical, all`

####Group variables
Define which group of classes will be generated.

 - `$bm-positions` - type: `boolean`; default: `false`
 - `$bm-margins`- type: `boolean`; default: `true`
 - `$bm-borders` - type: `boolean`; default: false
 - `$bm-paddings` - type: `boolean`; default: `true`
 - `$bm-dimensions` - type: `boolean`; default: `false`
 - `$bm-responsive` - type: `boolena`; default: `false`

####Responsive variables
Define breakpoints for responsive classes. Set `$bm-responsive` to `true` first.

 - `$bm-screen-sm-min` - type: `number`; default: `768px`
 - `$bm-screen-md-min` - type: `number`; default: `992px`
 - `$bm-screen-lg-min` - type: `number`; default: `1200px`
 - `$bm-screen-xs-max` - type: `number`; default: `($bm-screen-sm-min - 1)`
 - `$bm-screen-sm-max` - type: `number`; default: `($bm-screen-md-min - 1)`
 - `$bm-screen-md-max` - type: `number`; default: `($bm-screen-lg-min - 1)`

##Contributing

 1. Fork it.
 2. Create your feature branch (git checkout -b my-new-feature).
 3. Commit your changes (git commit -am 'Add some feature').
 4. Push to the branch (git push origin my-new-feature).
 5. Create new Pull Request.