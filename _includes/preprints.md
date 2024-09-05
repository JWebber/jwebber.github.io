<h2 id="publications" style="margin: 2px 0px -15px;">Preprints</h2>

<div class="publications">
<ol class="bibliography">

{% for link in site.data.talks.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 0px;">
      {% if link.pdf %} 
      <a href="assets/preprints/{{ link.pdf }}"><div class="title">{{ link.title }}</div></a>
      {% else %}
      <div class="title">{{ link.title }}</div>
      {% endif %}
      <div class="author">{{ link.author }} - {{ link.date }}</div>
    {% if link.abstract %} 
    <details style="color:#999999">
    <summary style="font-weight:bold">Abstract</summary>
    <div><i style="color:#999999">{{ link.abstract }}</i><br/></div>
    </details> {% endif %}
    <br />
    
    <div class="links">
      {% if link.pdf %} 
      <a href="assets/preprints/{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>

