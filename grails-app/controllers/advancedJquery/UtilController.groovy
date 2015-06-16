package advancedJquery

import grails.converters.JSON

class UtilController {

    def index() {}

    def demo() {}

    def demoMyAjax() {
        println("Inside demoMyAjax action >> " + params)
        render true
    }
}
