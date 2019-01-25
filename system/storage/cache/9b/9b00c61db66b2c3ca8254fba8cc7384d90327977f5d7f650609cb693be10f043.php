<?php

/* default/template/information/contact.twig */
class __TwigTemplate_1a31eed2c986665b33d0155a228bb0350405a304c40e93ddba5e8ee1aab3015f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo (isset($context["header"]) ? $context["header"] : null);
        echo "
<div id=\"information-contact\" class=\"container\">
  <ul class=\"breadcrumb\">
    ";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["breadcrumbs"]) ? $context["breadcrumbs"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 5
            echo "    <li><a href=\"";
            echo $this->getAttribute($context["breadcrumb"], "href", array());
            echo "\">";
            echo $this->getAttribute($context["breadcrumb"], "text", array());
            echo "</a></li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        echo "  </ul>

\t\t";
        // line 9
        if ((isset($context["error_warning"]) ? $context["error_warning"] : null)) {
            // line 10
            echo "\t\t<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ";
            echo (isset($context["error_warning"]) ? $context["error_warning"] : null);
            echo "</div>
\t\t";
        }
        // line 12
        echo "\t\t
  <div class=\"row\">";
        // line 13
        echo (isset($context["column_left"]) ? $context["column_left"] : null);
        echo "
    ";
        // line 14
        if (((isset($context["column_left"]) ? $context["column_left"] : null) && (isset($context["column_right"]) ? $context["column_right"] : null))) {
            // line 15
            echo "    ";
            $context["class"] = "col-sm-6";
            // line 16
            echo "    ";
        } elseif (((isset($context["column_left"]) ? $context["column_left"] : null) || (isset($context["column_right"]) ? $context["column_right"] : null))) {
            // line 17
            echo "    ";
            $context["class"] = "col-sm-9";
            // line 18
            echo "    ";
        } else {
            // line 19
            echo "    ";
            $context["class"] = "col-sm-12";
            // line 20
            echo "    ";
        }
        // line 21
        echo "    <div id=\"content\" class=\"";
        echo (isset($context["class"]) ? $context["class"] : null);
        echo "\">";
        echo (isset($context["content_top"]) ? $context["content_top"] : null);
        echo "
      <h1>";
        // line 22
        echo (isset($context["heading_title"]) ? $context["heading_title"] : null);
        echo "</h1>
      <h3>";
        // line 23
        echo (isset($context["text_location"]) ? $context["text_location"] : null);
        echo "</h3>
      <div class=\"panel panel-default\">
        <div class=\"panel-body\">
          <div class=\"row\">
            ";
        // line 27
        if ((isset($context["image"]) ? $context["image"] : null)) {
            // line 28
            echo "            <div class=\"col-sm-3\"><img src=\"";
            echo (isset($context["image"]) ? $context["image"] : null);
            echo "\" alt=\"";
            echo (isset($context["store"]) ? $context["store"] : null);
            echo "\" title=\"";
            echo (isset($context["store"]) ? $context["store"] : null);
            echo "\" class=\"img-thumbnail\" /></div>
            ";
        }
        // line 30
        echo "            <div class=\"col-sm-3\"><strong>";
        echo (isset($context["store"]) ? $context["store"] : null);
        echo "</strong><br />
              <address>
              ";
        // line 32
        echo (isset($context["address"]) ? $context["address"] : null);
        echo "
              </address>
              ";
        // line 34
        if ((isset($context["geocode"]) ? $context["geocode"] : null)) {
            // line 35
            echo "              <a href=\"https://maps.google.com/maps?q=";
            echo twig_urlencode_filter((isset($context["geocode"]) ? $context["geocode"] : null));
            echo "&hl=";
            echo (isset($context["geocode_hl"]) ? $context["geocode_hl"] : null);
            echo "&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fa fa-map-marker\"></i> ";
            echo (isset($context["button_map"]) ? $context["button_map"] : null);
            echo "</a>
              ";
        }
        // line 37
        echo "            </div>
            <div class=\"col-sm-3\"><strong>";
        // line 38
        echo (isset($context["text_telephone"]) ? $context["text_telephone"] : null);
        echo "</strong><br>
              ";
        // line 39
        echo (isset($context["telephone"]) ? $context["telephone"] : null);
        echo "<br />
              <br />
              ";
        // line 41
        if ((isset($context["fax"]) ? $context["fax"] : null)) {
            // line 42
            echo "              <strong>";
            echo (isset($context["text_fax"]) ? $context["text_fax"] : null);
            echo "</strong><br>
              ";
            // line 43
            echo (isset($context["fax"]) ? $context["fax"] : null);
            echo "
              ";
        }
        // line 45
        echo "            </div>
            <div class=\"col-sm-3\">
              ";
        // line 47
        if ((isset($context["open"]) ? $context["open"] : null)) {
            // line 48
            echo "              <strong>";
            echo (isset($context["text_open"]) ? $context["text_open"] : null);
            echo "</strong><br />
              ";
            // line 49
            echo (isset($context["open"]) ? $context["open"] : null);
            echo "<br />
              <br />
              ";
        }
        // line 52
        echo "              ";
        if ((isset($context["comment"]) ? $context["comment"] : null)) {
            // line 53
            echo "              <strong>";
            echo (isset($context["text_comment"]) ? $context["text_comment"] : null);
            echo "</strong><br />
              ";
            // line 54
            echo (isset($context["comment"]) ? $context["comment"] : null);
            echo "
              ";
        }
        // line 56
        echo "            </div>
          </div>
        </div>
      </div>
      ";
        // line 60
        if ((isset($context["locations"]) ? $context["locations"] : null)) {
            // line 61
            echo "      <h3>";
            echo (isset($context["text_store"]) ? $context["text_store"] : null);
            echo "</h3>
      <div class=\"panel-group\" id=\"accordion\">
        ";
            // line 63
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["locations"]) ? $context["locations"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["location"]) {
                // line 64
                echo "        <div class=\"panel panel-default\">
          <div class=\"panel-heading\">
            <h4 class=\"panel-title\"><a href=\"#collapse-location";
                // line 66
                echo $this->getAttribute($context["location"], "location_id", array());
                echo "\" class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion\">";
                echo $this->getAttribute($context["location"], "name", array());
                echo " <i class=\"fa fa-caret-down\"></i></a></h4>
          </div>
          <div class=\"panel-collapse collapse\" id=\"collapse-location";
                // line 68
                echo $this->getAttribute($context["location"], "location_id", array());
                echo "\">
            <div class=\"panel-body\">
              <div class=\"row\">
                ";
                // line 71
                if ($this->getAttribute($context["location"], "image", array())) {
                    // line 72
                    echo "                <div class=\"col-sm-3\"><img src=\"";
                    echo $this->getAttribute($context["location"], "image", array());
                    echo "\" alt=\"";
                    echo $this->getAttribute($context["location"], "name", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["location"], "name", array());
                    echo "\" class=\"img-thumbnail\" /></div>
                ";
                }
                // line 74
                echo "                <div class=\"col-sm-3\"><strong>";
                echo $this->getAttribute($context["location"], "name", array());
                echo "</strong><br />
                  <address>
                  ";
                // line 76
                echo $this->getAttribute($context["location"], "address", array());
                echo "
                  </address>
                  ";
                // line 78
                if ($this->getAttribute($context["location"], "geocode", array())) {
                    // line 79
                    echo "                  <a href=\"https://maps.google.com/maps?q=";
                    echo twig_urlencode_filter($this->getAttribute($context["location"], "geocode", array()));
                    echo "&hl=";
                    echo (isset($context["geocode_hl"]) ? $context["geocode_hl"] : null);
                    echo "&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fa fa-map-marker\"></i> ";
                    echo (isset($context["button_map"]) ? $context["button_map"] : null);
                    echo "</a>
                  ";
                }
                // line 81
                echo "                </div>
                <div class=\"col-sm-3\"> <strong>";
                // line 82
                echo (isset($context["text_telephone"]) ? $context["text_telephone"] : null);
                echo "</strong><br>
                  ";
                // line 83
                echo $this->getAttribute($context["location"], "telephone", array());
                echo "<br />
                  <br />
                  ";
                // line 85
                if ($this->getAttribute($context["location"], "fax", array())) {
                    // line 86
                    echo "                  <strong>";
                    echo (isset($context["text_fax"]) ? $context["text_fax"] : null);
                    echo "</strong><br>
                  ";
                    // line 87
                    echo $this->getAttribute($context["location"], "fax", array());
                    echo "
                  ";
                }
                // line 89
                echo "                </div>
                <div class=\"col-sm-3\">
                  ";
                // line 91
                if ($this->getAttribute($context["location"], "open", array())) {
                    // line 92
                    echo "                  <strong>";
                    echo (isset($context["text_open"]) ? $context["text_open"] : null);
                    echo "</strong><br />
                  ";
                    // line 93
                    echo $this->getAttribute($context["location"], "open", array());
                    echo "<br />
                  <br />
                  ";
                }
                // line 96
                echo "                  ";
                if ($this->getAttribute($context["location"], "comment", array())) {
                    // line 97
                    echo "                  <strong>";
                    echo (isset($context["text_comment"]) ? $context["text_comment"] : null);
                    echo "</strong><br />
                  ";
                    // line 98
                    echo $this->getAttribute($context["location"], "comment", array());
                    echo "
                  ";
                }
                // line 100
                echo "                </div>
              </div>
            </div>
          </div>
        </div>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['location'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 106
            echo "      </div>
      ";
        }
        // line 108
        echo "      <form action=\"";
        echo (isset($context["action"]) ? $context["action"] : null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" class=\"form-horizontal\">
        <fieldset>
          <legend>";
        // line 110
        echo (isset($context["text_contact"]) ? $context["text_contact"] : null);
        echo "</legend>
          <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-name\">";
        // line 112
        echo (isset($context["entry_name"]) ? $context["entry_name"] : null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"name\" value=\"";
        // line 114
        echo (isset($context["name"]) ? $context["name"] : null);
        echo "\" id=\"input-name\" class=\"form-control\" />
              ";
        // line 115
        if ((isset($context["error_name"]) ? $context["error_name"] : null)) {
            // line 116
            echo "              <div class=\"text-danger\">";
            echo (isset($context["error_name"]) ? $context["error_name"] : null);
            echo "</div>
              ";
        }
        // line 118
        echo "            </div>
          </div>
          
          <!-- mycode replaced with !!!!! -->
          
          <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-surnnane\">";
        // line 124
        echo (isset($context["entry_surnname"]) ? $context["entry_surnname"] : null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"surnname\" value=\"";
        // line 126
        echo (isset($context["surnname"]) ? $context["surnname"] : null);
        echo "\" id=\"input-email\" class=\"form-control\" />
            </div>
          </div>
          
          <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-name\">";
        // line 131
        echo (isset($context["entry_phone"]) ? $context["entry_phone"] : null);
        echo "</label>
            \t<div class=\"col-sm-10\">
              \t\t<input type=\"text\" name=\"phone\" value=\"";
        // line 133
        echo (isset($context["name"]) ? $context["name"] : null);
        echo "\" id=\"input-name\" class=\"form-control\" />
              \t";
        // line 134
        if ((isset($context["error_phone"]) ? $context["error_phone"] : null)) {
            // line 135
            echo "              \t<div class=\"text-danger\">";
            echo (isset($context["error_phone"]) ? $context["error_phone"] : null);
            echo "</div>
              \t";
        }
        // line 137
        echo "            </div>
          </div>
          
          <!--    *********************************     -->
          
          <div class=\"form-group required\">
            <label class=\"col-sm-2 control-label\" for=\"input-enquiry\">";
        // line 143
        echo (isset($context["entry_enquiry"]) ? $context["entry_enquiry"] : null);
        echo "</label>
            <div class=\"col-sm-10\">
              <textarea name=\"enquiry\" rows=\"10\" id=\"input-enquiry\" class=\"form-control\">";
        // line 145
        echo (isset($context["enquiry"]) ? $context["enquiry"] : null);
        echo "</textarea>
              ";
        // line 146
        if ((isset($context["error_enquiry"]) ? $context["error_enquiry"] : null)) {
            // line 147
            echo "              <div class=\"text-danger\">";
            echo (isset($context["error_enquiry"]) ? $context["error_enquiry"] : null);
            echo "</div>
              ";
        }
        // line 149
        echo "            </div>
          </div>
          ";
        // line 151
        echo (isset($context["captcha"]) ? $context["captcha"] : null);
        echo "
        </fieldset>

\t\t";
        // line 154
        if ((isset($context["text_agree"]) ? $context["text_agree"] : null)) {
            // line 155
            echo "\t\t<div class=\"buttons\">
\t\t  <div class=\"pull-right\">";
            // line 156
            echo (isset($context["text_agree"]) ? $context["text_agree"] : null);
            echo "
\t\t\t";
            // line 157
            if ((isset($context["agree"]) ? $context["agree"] : null)) {
                // line 158
                echo "\t\t\t<input type=\"checkbox\" name=\"agree\" value=\"1\" checked=\"checked\" />
\t\t\t";
            } else {
                // line 160
                echo "\t\t\t<input type=\"checkbox\" name=\"agree\" value=\"1\" />
\t\t\t";
            }
            // line 162
            echo "\t\t\t&nbsp;
\t\t\t<input type=\"submit\" value=\"";
            // line 163
            echo (isset($context["button_submit"]) ? $context["button_submit"] : null);
            echo "\" class=\"btn btn-primary\" />
\t\t  </div>
\t\t</div>
\t\t";
        } else {
            // line 167
            echo "\t\t
        <div class=\"buttons\">
          <div class=\"pull-right\">
            <input class=\"btn btn-primary\" type=\"submit\" value=\"";
            // line 170
            echo (isset($context["button_submit"]) ? $context["button_submit"] : null);
            echo "\" />
          </div>
        </div>

\t\t";
        }
        // line 175
        echo "\t\t
      </form>
      ";
        // line 177
        echo (isset($context["content_bottom"]) ? $context["content_bottom"] : null);
        echo "</div>
    ";
        // line 178
        echo (isset($context["column_right"]) ? $context["column_right"] : null);
        echo "</div>
</div>
";
        // line 180
        echo (isset($context["footer"]) ? $context["footer"] : null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "default/template/information/contact.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  481 => 180,  476 => 178,  472 => 177,  468 => 175,  460 => 170,  455 => 167,  448 => 163,  445 => 162,  441 => 160,  437 => 158,  435 => 157,  431 => 156,  428 => 155,  426 => 154,  420 => 151,  416 => 149,  410 => 147,  408 => 146,  404 => 145,  399 => 143,  391 => 137,  385 => 135,  383 => 134,  379 => 133,  374 => 131,  366 => 126,  361 => 124,  353 => 118,  347 => 116,  345 => 115,  341 => 114,  336 => 112,  331 => 110,  325 => 108,  321 => 106,  310 => 100,  305 => 98,  300 => 97,  297 => 96,  291 => 93,  286 => 92,  284 => 91,  280 => 89,  275 => 87,  270 => 86,  268 => 85,  263 => 83,  259 => 82,  256 => 81,  246 => 79,  244 => 78,  239 => 76,  233 => 74,  223 => 72,  221 => 71,  215 => 68,  208 => 66,  204 => 64,  200 => 63,  194 => 61,  192 => 60,  186 => 56,  181 => 54,  176 => 53,  173 => 52,  167 => 49,  162 => 48,  160 => 47,  156 => 45,  151 => 43,  146 => 42,  144 => 41,  139 => 39,  135 => 38,  132 => 37,  122 => 35,  120 => 34,  115 => 32,  109 => 30,  99 => 28,  97 => 27,  90 => 23,  86 => 22,  79 => 21,  76 => 20,  73 => 19,  70 => 18,  67 => 17,  64 => 16,  61 => 15,  59 => 14,  55 => 13,  52 => 12,  46 => 10,  44 => 9,  40 => 7,  29 => 5,  25 => 4,  19 => 1,);
    }
}
/* {{ header }}*/
/* <div id="information-contact" class="container">*/
/*   <ul class="breadcrumb">*/
/*     {% for breadcrumb in breadcrumbs %}*/
/*     <li><a href="{{ breadcrumb.href }}">{{ breadcrumb.text }}</a></li>*/
/*     {% endfor %}*/
/*   </ul>*/
/* */
/* 		{% if error_warning %}*/
/* 		<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> {{ error_warning }}</div>*/
/* 		{% endif %}*/
/* 		*/
/*   <div class="row">{{ column_left }}*/
/*     {% if column_left and column_right %}*/
/*     {% set class = 'col-sm-6' %}*/
/*     {% elseif column_left or column_right %}*/
/*     {% set class = 'col-sm-9' %}*/
/*     {% else %}*/
/*     {% set class = 'col-sm-12' %}*/
/*     {% endif %}*/
/*     <div id="content" class="{{ class }}">{{ content_top }}*/
/*       <h1>{{ heading_title }}</h1>*/
/*       <h3>{{ text_location }}</h3>*/
/*       <div class="panel panel-default">*/
/*         <div class="panel-body">*/
/*           <div class="row">*/
/*             {% if image %}*/
/*             <div class="col-sm-3"><img src="{{ image }}" alt="{{ store }}" title="{{ store }}" class="img-thumbnail" /></div>*/
/*             {% endif %}*/
/*             <div class="col-sm-3"><strong>{{ store }}</strong><br />*/
/*               <address>*/
/*               {{ address }}*/
/*               </address>*/
/*               {% if geocode %}*/
/*               <a href="https://maps.google.com/maps?q={{ geocode|url_encode }}&hl={{ geocode_hl }}&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> {{ button_map }}</a>*/
/*               {% endif %}*/
/*             </div>*/
/*             <div class="col-sm-3"><strong>{{ text_telephone }}</strong><br>*/
/*               {{ telephone }}<br />*/
/*               <br />*/
/*               {% if fax %}*/
/*               <strong>{{ text_fax }}</strong><br>*/
/*               {{ fax }}*/
/*               {% endif %}*/
/*             </div>*/
/*             <div class="col-sm-3">*/
/*               {% if open %}*/
/*               <strong>{{ text_open }}</strong><br />*/
/*               {{ open }}<br />*/
/*               <br />*/
/*               {% endif %}*/
/*               {% if comment %}*/
/*               <strong>{{ text_comment }}</strong><br />*/
/*               {{ comment }}*/
/*               {% endif %}*/
/*             </div>*/
/*           </div>*/
/*         </div>*/
/*       </div>*/
/*       {% if locations %}*/
/*       <h3>{{ text_store }}</h3>*/
/*       <div class="panel-group" id="accordion">*/
/*         {% for location in locations %}*/
/*         <div class="panel panel-default">*/
/*           <div class="panel-heading">*/
/*             <h4 class="panel-title"><a href="#collapse-location{{ location.location_id }}" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">{{ location.name }} <i class="fa fa-caret-down"></i></a></h4>*/
/*           </div>*/
/*           <div class="panel-collapse collapse" id="collapse-location{{ location.location_id }}">*/
/*             <div class="panel-body">*/
/*               <div class="row">*/
/*                 {% if location.image %}*/
/*                 <div class="col-sm-3"><img src="{{ location.image }}" alt="{{ location.name }}" title="{{ location.name }}" class="img-thumbnail" /></div>*/
/*                 {% endif %}*/
/*                 <div class="col-sm-3"><strong>{{ location.name }}</strong><br />*/
/*                   <address>*/
/*                   {{ location.address }}*/
/*                   </address>*/
/*                   {% if location.geocode %}*/
/*                   <a href="https://maps.google.com/maps?q={{ location.geocode|url_encode }}&hl={{ geocode_hl }}&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> {{ button_map }}</a>*/
/*                   {% endif %}*/
/*                 </div>*/
/*                 <div class="col-sm-3"> <strong>{{ text_telephone }}</strong><br>*/
/*                   {{ location.telephone }}<br />*/
/*                   <br />*/
/*                   {% if location.fax %}*/
/*                   <strong>{{ text_fax }}</strong><br>*/
/*                   {{ location.fax }}*/
/*                   {% endif %}*/
/*                 </div>*/
/*                 <div class="col-sm-3">*/
/*                   {% if location.open %}*/
/*                   <strong>{{ text_open }}</strong><br />*/
/*                   {{ location.open }}<br />*/
/*                   <br />*/
/*                   {% endif %}*/
/*                   {% if location.comment %}*/
/*                   <strong>{{ text_comment }}</strong><br />*/
/*                   {{ location.comment }}*/
/*                   {% endif %}*/
/*                 </div>*/
/*               </div>*/
/*             </div>*/
/*           </div>*/
/*         </div>*/
/*         {% endfor %}*/
/*       </div>*/
/*       {% endif %}*/
/*       <form action="{{ action }}" method="post" enctype="multipart/form-data" class="form-horizontal">*/
/*         <fieldset>*/
/*           <legend>{{ text_contact }}</legend>*/
/*           <div class="form-group required">*/
/*             <label class="col-sm-2 control-label" for="input-name">{{ entry_name }}</label>*/
/*             <div class="col-sm-10">*/
/*               <input type="text" name="name" value="{{ name }}" id="input-name" class="form-control" />*/
/*               {% if error_name %}*/
/*               <div class="text-danger">{{ error_name }}</div>*/
/*               {% endif %}*/
/*             </div>*/
/*           </div>*/
/*           */
/*           <!-- mycode replaced with !!!!! -->*/
/*           */
/*           <div class="form-group required">*/
/*             <label class="col-sm-2 control-label" for="input-surnnane">{{ entry_surnname }}</label>*/
/*             <div class="col-sm-10">*/
/*               <input type="text" name="surnname" value="{{ surnname }}" id="input-email" class="form-control" />*/
/*             </div>*/
/*           </div>*/
/*           */
/*           <div class="form-group required">*/
/*             <label class="col-sm-2 control-label" for="input-name">{{ entry_phone }}</label>*/
/*             	<div class="col-sm-10">*/
/*               		<input type="text" name="phone" value="{{ name }}" id="input-name" class="form-control" />*/
/*               	{% if error_phone %}*/
/*               	<div class="text-danger">{{ error_phone }}</div>*/
/*               	{% endif %}*/
/*             </div>*/
/*           </div>*/
/*           */
/*           <!--    *********************************     -->*/
/*           */
/*           <div class="form-group required">*/
/*             <label class="col-sm-2 control-label" for="input-enquiry">{{ entry_enquiry }}</label>*/
/*             <div class="col-sm-10">*/
/*               <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control">{{ enquiry }}</textarea>*/
/*               {% if error_enquiry %}*/
/*               <div class="text-danger">{{ error_enquiry }}</div>*/
/*               {% endif %}*/
/*             </div>*/
/*           </div>*/
/*           {{ captcha }}*/
/*         </fieldset>*/
/* */
/* 		{% if text_agree %}*/
/* 		<div class="buttons">*/
/* 		  <div class="pull-right">{{ text_agree }}*/
/* 			{% if agree %}*/
/* 			<input type="checkbox" name="agree" value="1" checked="checked" />*/
/* 			{% else %}*/
/* 			<input type="checkbox" name="agree" value="1" />*/
/* 			{% endif %}*/
/* 			&nbsp;*/
/* 			<input type="submit" value="{{ button_submit }}" class="btn btn-primary" />*/
/* 		  </div>*/
/* 		</div>*/
/* 		{% else %}*/
/* 		*/
/*         <div class="buttons">*/
/*           <div class="pull-right">*/
/*             <input class="btn btn-primary" type="submit" value="{{ button_submit }}" />*/
/*           </div>*/
/*         </div>*/
/* */
/* 		{% endif %}*/
/* 		*/
/*       </form>*/
/*       {{ content_bottom }}</div>*/
/*     {{ column_right }}</div>*/
/* </div>*/
/* {{ footer }}*/
/* */
