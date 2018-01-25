import webapp


def test_hello_world():
    web_object = webapp.TestSite()
    assert 'TEST TEST TEST' == web_object.index()