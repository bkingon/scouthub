document.documentElement.className += ' js'

vp = document.getElementById('app_viewport')
if screen.width < 768
  vp.setAttribute('content', 'width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, minimal-ui')
else
  vp.setAttribute('content', '')
