package advancedJquery

import grails.converters.JSON

class UtilController {

    def index() {}

    def demo() {}

    def demoMyAjax() {
        println("Inside demoMyAjax action >> " + params)
        render true
    }

    def demoGetJson() {
        render(["one": "Singular sensation", "two": "Beady little eyes", "three": "Little birds pitch by my doorstep"] as JSON)
    }

    def demoLoadHtml(){
        render "<li>jQuery</li><li>jQuery UI</li><li>jQuery Mobile</li><li>QUnit</li><li>Sizzle</li>"
    }
}
