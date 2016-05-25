# complete waf
complete 'waf' \
    'p/1/build clean configure dist distcheck distclean install list step uninstall/'

# complete with ./ as well
complete './waf' \
    'p/1/build clean configure dist distcheck distclean install list step uninstall/'
