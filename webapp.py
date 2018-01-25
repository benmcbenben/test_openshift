import cherrypy



class TestSite(object):
    @cherrypy.expose
    def index(self):
        return 'TEST TEST TEST'


