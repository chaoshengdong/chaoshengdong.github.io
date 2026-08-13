(function () {
  function collapseRecentNews() {
    var LIMIT = 10;
    var headings = document.getElementsByTagName('h2');
    var newsHeading = null;
    for (var i = 0; i < headings.length; i++) {
      if (headings[i].textContent.replace(/\s+/g, ' ').trim() === 'Recent News') {
        newsHeading = headings[i];
        break;
      }
    }
    if (!newsHeading) return;

    var list = newsHeading.nextElementSibling;
    while (list && list.tagName !== 'UL') {
      list = list.nextElementSibling;
    }
    if (!list) return;

    var items = list.children;
    if (items.length <= LIMIT) return;

    for (var j = LIMIT; j < items.length; j++) {
      items[j].className += (items[j].className ? ' ' : '') + 'news-more-hidden';
      items[j].style.display = 'none';
    }

    var toggle = document.createElement('a');
    toggle.href = '#';
    toggle.className = 'news-more-toggle';
    toggle.textContent = 'Show more';
    toggle.onclick = function (e) {
      e.preventDefault();
      var hidden = list.getElementsByClassName('news-more-hidden');
      var expanding = hidden.length > 0 && hidden[0].style.display === 'none';
      for (var k = 0; k < hidden.length; k++) {
        hidden[k].style.display = expanding ? '' : 'none';
      }
      toggle.textContent = expanding ? 'Show less' : 'Show more';
    };
    list.parentNode.insertBefore(toggle, list.nextSibling);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', collapseRecentNews);
  } else {
    collapseRecentNews();
  }
})();
