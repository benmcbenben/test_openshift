import cherrypy
from webapp import TestSite

if __name__ == '__main__':
    cherrypy.quickstart(TestSite())


