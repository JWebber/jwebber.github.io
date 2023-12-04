<h2 id="publications" style="margin: 2px 0px -15px;">Talks</h2>

<div class="publications">
<ol class="bibliography">

{% for link in site.data.talks.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.conf }} - {{ link.confdate }}</div>
      </div>
    {% if link.abstract %} 
      <i style="color:#999999">{{ link.abstract }}</i>
      <br/>
      <br/>
    {% endif %}

    <div class="links">
      {% if link.pdf %} 
      <a href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>

