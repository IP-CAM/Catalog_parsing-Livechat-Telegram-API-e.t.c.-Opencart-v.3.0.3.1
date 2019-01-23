<?php

/* default/template/common/footer.twig */
class __TwigTemplate_28d9a8ca7a259e0f48c3007a4bba8e824e89f1dfedbcf9c94e7984ada2fd7feb extends Twig_Template
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
        echo "<footer>
  <div class=\"container\">
    <div class=\"row\">
      ";
        // line 4
        if ((isset($context["informations"]) ? $context["informations"] : null)) {
            // line 5
            echo "      <div class=\"col-sm-3\">
        <h5>";
            // line 6
            echo (isset($context["text_information"]) ? $context["text_information"] : null);
            echo "</h5>
        <ul class=\"list-unstyled\">
          <li><a href=\"";
            // line 8
            echo $this->getAttribute($this->getAttribute((isset($context["informations"]) ? $context["informations"] : null), "0", array(), "array"), "href", array());
            echo "\">";
            echo $this->getAttribute($this->getAttribute((isset($context["informations"]) ? $context["informations"] : null), "0", array(), "array"), "title", array());
            echo "</a></li>
          <li><a href=\"";
            // line 9
            echo (isset($context["manufacturer"]) ? $context["manufacturer"] : null);
            echo "\">";
            echo (isset($context["text_manufacturer"]) ? $context["text_manufacturer"] : null);
            echo "</a></li>
          <li><a href=\"";
            // line 10
            echo (isset($context["special"]) ? $context["special"] : null);
            echo "\">";
            echo (isset($context["text_special"]) ? $context["text_special"] : null);
            echo "</a></li>
          <li><a href=\"";
            // line 11
            echo (isset($context["contact"]) ? $context["contact"] : null);
            echo "\">";
            echo (isset($context["text_contact"]) ? $context["text_contact"] : null);
            echo "</a></li>
        </ul>
      </div>
      ";
        }
        // line 15
        echo "      <!--  <div class=\"col-sm-3\">
        <h5>";
        // line 16
        echo (isset($context["text_service"]) ? $context["text_service"] : null);
        echo "</h5>
        <ul class=\"list-unstyled\">
          
          <li><a href=\"";
        // line 19
        echo (isset($context["return"]) ? $context["return"] : null);
        echo "\">";
        echo (isset($context["text_return"]) ? $context["text_return"] : null);
        echo "</a></li>
          
        </ul>
      </div> -->
      <div class=\"col-sm-3\">
        <h5>";
        // line 24
        echo (isset($context["text_extra"]) ? $context["text_extra"] : null);
        echo "</h5>
        <ul class=\"list-unstyled\">
          
          <!-- <li><a href=\"";
        // line 27
        echo (isset($context["voucher"]) ? $context["voucher"] : null);
        echo "\">";
        echo (isset($context["text_voucher"]) ? $context["text_voucher"] : null);
        echo "</a></li>
          <li><a href=\"";
        // line 28
        echo (isset($context["affiliate"]) ? $context["affiliate"] : null);
        echo "\">";
        echo (isset($context["text_affiliate"]) ? $context["text_affiliate"] : null);
        echo "</a></li> -->
          
          <li><a href=\"";
        // line 30
        echo (isset($context["sitemap"]) ? $context["sitemap"] : null);
        echo "\">";
        echo (isset($context["text_sitemap"]) ? $context["text_sitemap"] : null);
        echo "</a></li>
        </ul>
      </div>
      <!--<div class=\"col-sm-3\">
        <h5>";
        // line 34
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "</h5>
        <ul class=\"list-unstyled\">
          <li><a href=\"";
        // line 36
        echo (isset($context["account"]) ? $context["account"] : null);
        echo "\">";
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "</a></li>
          <li><a href=\"";
        // line 37
        echo (isset($context["order"]) ? $context["order"] : null);
        echo "\">";
        echo (isset($context["text_order"]) ? $context["text_order"] : null);
        echo "</a></li>
          <li><a href=\"";
        // line 38
        echo (isset($context["wishlist"]) ? $context["wishlist"] : null);
        echo "\">";
        echo (isset($context["text_wishlist"]) ? $context["text_wishlist"] : null);
        echo "</a></li>
          <li><a href=\"";
        // line 39
        echo (isset($context["newsletter"]) ? $context["newsletter"] : null);
        echo "\">";
        echo (isset($context["text_newsletter"]) ? $context["text_newsletter"] : null);
        echo "</a></li>
        </ul>
      </div>-->
    </div>
    <!--<hr>
    <p>";
        // line 44
        echo (isset($context["powered"]) ? $context["powered"] : null);
        echo "</p>-->
  </div>
</footer>
";
        // line 47
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["scripts"]) ? $context["scripts"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 48
            echo "<script src=\"";
            echo $context["script"];
            echo "\" type=\"text/javascript\"></script>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['script'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        echo "<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
";
    }

    public function getTemplateName()
    {
        return "default/template/common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  160 => 50,  151 => 48,  147 => 47,  141 => 44,  131 => 39,  125 => 38,  119 => 37,  113 => 36,  108 => 34,  99 => 30,  92 => 28,  86 => 27,  80 => 24,  70 => 19,  64 => 16,  61 => 15,  52 => 11,  46 => 10,  40 => 9,  34 => 8,  29 => 6,  26 => 5,  24 => 4,  19 => 1,);
    }
}
/* <footer>*/
/*   <div class="container">*/
/*     <div class="row">*/
/*       {% if informations %}*/
/*       <div class="col-sm-3">*/
/*         <h5>{{ text_information }}</h5>*/
/*         <ul class="list-unstyled">*/
/*           <li><a href="{{ informations['0'].href }}">{{ informations['0'].title }}</a></li>*/
/*           <li><a href="{{ manufacturer }}">{{ text_manufacturer }}</a></li>*/
/*           <li><a href="{{ special }}">{{ text_special }}</a></li>*/
/*           <li><a href="{{ contact }}">{{ text_contact }}</a></li>*/
/*         </ul>*/
/*       </div>*/
/*       {% endif %}*/
/*       <!--  <div class="col-sm-3">*/
/*         <h5>{{ text_service }}</h5>*/
/*         <ul class="list-unstyled">*/
/*           */
/*           <li><a href="{{ return }}">{{ text_return }}</a></li>*/
/*           */
/*         </ul>*/
/*       </div> -->*/
/*       <div class="col-sm-3">*/
/*         <h5>{{ text_extra }}</h5>*/
/*         <ul class="list-unstyled">*/
/*           */
/*           <!-- <li><a href="{{ voucher }}">{{ text_voucher }}</a></li>*/
/*           <li><a href="{{ affiliate }}">{{ text_affiliate }}</a></li> -->*/
/*           */
/*           <li><a href="{{ sitemap }}">{{ text_sitemap }}</a></li>*/
/*         </ul>*/
/*       </div>*/
/*       <!--<div class="col-sm-3">*/
/*         <h5>{{ text_account }}</h5>*/
/*         <ul class="list-unstyled">*/
/*           <li><a href="{{ account }}">{{ text_account }}</a></li>*/
/*           <li><a href="{{ order }}">{{ text_order }}</a></li>*/
/*           <li><a href="{{ wishlist }}">{{ text_wishlist }}</a></li>*/
/*           <li><a href="{{ newsletter }}">{{ text_newsletter }}</a></li>*/
/*         </ul>*/
/*       </div>-->*/
/*     </div>*/
/*     <!--<hr>*/
/*     <p>{{ powered }}</p>-->*/
/*   </div>*/
/* </footer>*/
/* {% for script in scripts %}*/
/* <script src="{{ script }}" type="text/javascript"></script>*/
/* {% endfor %}*/
/* <!--*/
/* OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.*/
/* Please donate via PayPal to donate@opencart.com*/
/* //-->*/
/* */
