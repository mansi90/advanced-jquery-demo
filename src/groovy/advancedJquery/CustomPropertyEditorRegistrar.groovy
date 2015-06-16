package advancedJquery

import org.codehaus.groovy.grails.web.binding.StructuredDateEditor
import org.springframework.beans.PropertyEditorRegistrar
import org.springframework.beans.PropertyEditorRegistry

import java.text.SimpleDateFormat

public class CustomPropertyEditorRegistrar implements PropertyEditorRegistrar {
    public void registerCustomEditors(PropertyEditorRegistry registry) {
        registry.registerCustomEditor(Date.class, new StructuredDateEditor(new SimpleDateFormat("MM/dd/yyyy"), true));
    }
}