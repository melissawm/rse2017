{% extends 'python.tpl'%}

{% block input %}
{% if 'codecomment' in cell['metadata'].get('tags', []) %}
   {{ cell.source | comment_lines }}
{% else %}
   {{ cell.source | ipython2python }}
{% endif %}
{% endblock input %}

