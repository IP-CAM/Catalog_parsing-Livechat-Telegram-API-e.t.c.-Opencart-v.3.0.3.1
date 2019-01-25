<?php

/* default/template/checkout/checkout.twig */
class __TwigTemplate_61307d658d610680e92e05e7d5455a94b03d5d0331142888e4eae25586dfd768 extends Twig_Template
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
<div id=\"checkout-checkout\" class=\"container\">
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
  ";
        // line 8
        if ((isset($context["error_warning"]) ? $context["error_warning"] : null)) {
            // line 9
            echo "  <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ";
            echo (isset($context["error_warning"]) ? $context["error_warning"] : null);
            echo "
    <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
  </div>
  ";
        }
        // line 13
        echo "  <div class=\"row\">";
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
      <h1>Оформление заказа.</h1>
      <div class=\"panel-group\" id=\"accordion\" style=\"width: 30%\">
\t\t<form action=\"index.php?route=checkout/confirm2\" method=\"post\">
        <div class=\"panel panel-default\">
          <div class=\"panel-heading\">
            <h4 class=\"panel-title\">Введите данные для обратной связи.</h4>
            <div class=\"form-group\"></div>
            <div class=\"form-group\">
      \t\t\t<label class=\"control-label\" for=\"input-name\">Имя</label>
      \t\t\t<input name=\"name\" value=\"\" placeholder=\"Имя\" id=\"input-name\" class=\"form-control\" type=\"text\">
    \t\t</div>
            <div class=\"form-group\">
      \t\t\t<label class=\"control-label\" for=\"input-tel\">Номер телефона</label>
      \t\t\t<input name=\"tel\" value=\"\" placeholder=\"Номер телефона\" id=\"input-tel\" class=\"form-control\" type=\"text\">
    \t\t</div>

    \t\t<input type=\"submit\" value=\"Отправить\" id=\"button-send\" data-loading-text=\"Загрузка...\" class=\"btn btn-primary\" type=\"button\">


          </div>
          <div class=\"panel-collapse collapse in\" id=\"collapse-checkout-option\">
            <div class=\"panel-body\"></div>
          </div>
        </div>
\t\t</form>

      </div>

  
       ";
        // line 51
        echo (isset($context["content_bottom"]) ? $context["content_bottom"] : null);
        echo "</div>
    ";
        // line 52
        echo (isset($context["column_right"]) ? $context["column_right"] : null);
        echo "</div>
</div>
<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js\"></script>

<script type=\"text/javascript\">
\$(function(){
    \$(\"#input-tel\").mask(\"8(099) 99-99-999\");
});



</script>


";
        // line 66
        echo (isset($context["footer"]) ? $context["footer"] : null);
    }

    public function getTemplateName()
    {
        return "default/template/checkout/checkout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  135 => 66,  118 => 52,  114 => 51,  78 => 21,  75 => 20,  72 => 19,  69 => 18,  66 => 17,  63 => 16,  60 => 15,  58 => 14,  53 => 13,  45 => 9,  43 => 8,  40 => 7,  29 => 5,  25 => 4,  19 => 1,);
    }
}
/* {{ header }}*/
/* <div id="checkout-checkout" class="container">*/
/*   <ul class="breadcrumb">*/
/*     {% for breadcrumb in breadcrumbs %}*/
/*     <li><a href="{{ breadcrumb.href }}">{{ breadcrumb.text }}</a></li>*/
/*     {% endfor %}*/
/*   </ul>*/
/*   {% if error_warning %}*/
/*   <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> {{ error_warning }}*/
/*     <button type="button" class="close" data-dismiss="alert">&times;</button>*/
/*   </div>*/
/*   {% endif %}*/
/*   <div class="row">{{ column_left }}*/
/*     {% if column_left and column_right %}*/
/*     {% set class = 'col-sm-6' %}*/
/*     {% elseif column_left or column_right %}*/
/*     {% set class = 'col-sm-9' %}*/
/*     {% else %}*/
/*     {% set class = 'col-sm-12' %}*/
/*     {% endif %}*/
/*     <div id="content" class="{{ class }}">{{ content_top }}*/
/*       <h1>Оформление заказа.</h1>*/
/*       <div class="panel-group" id="accordion" style="width: 30%">*/
/* 		<form action="index.php?route=checkout/confirm2" method="post">*/
/*         <div class="panel panel-default">*/
/*           <div class="panel-heading">*/
/*             <h4 class="panel-title">Введите данные для обратной связи.</h4>*/
/*             <div class="form-group"></div>*/
/*             <div class="form-group">*/
/*       			<label class="control-label" for="input-name">Имя</label>*/
/*       			<input name="name" value="" placeholder="Имя" id="input-name" class="form-control" type="text">*/
/*     		</div>*/
/*             <div class="form-group">*/
/*       			<label class="control-label" for="input-tel">Номер телефона</label>*/
/*       			<input name="tel" value="" placeholder="Номер телефона" id="input-tel" class="form-control" type="text">*/
/*     		</div>*/
/* */
/*     		<input type="submit" value="Отправить" id="button-send" data-loading-text="Загрузка..." class="btn btn-primary" type="button">*/
/* */
/* */
/*           </div>*/
/*           <div class="panel-collapse collapse in" id="collapse-checkout-option">*/
/*             <div class="panel-body"></div>*/
/*           </div>*/
/*         </div>*/
/* 		</form>*/
/* */
/*       </div>*/
/* */
/*   */
/*        {{ content_bottom }}</div>*/
/*     {{ column_right }}</div>*/
/* </div>*/
/* <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>*/
/* */
/* <script type="text/javascript">*/
/* $(function(){*/
/*     $("#input-tel").mask("8(099) 99-99-999");*/
/* });*/
/* */
/* */
/* */
/* </script>*/
/* */
/* */
/* {{ footer }}*/
