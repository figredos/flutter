# User Input

Flutter offers many ways of dealing with an user's input.

- [User Input](#user-input)
  - [Forms](#forms)

## Forms

A crucial part of building user interfaces is using managing input. Flutter offers a great way of doing this, using the ***Forms*** widget. It acts as a container for managing and organizing a collection of FormField widgets, which represent individual input fields, radio buttons, checkboxes, and other interactive elements.

Forms provides a central point for grouping related FormField widgets within the UI. It simplifies managing and validating forms as a whole, ensuring data consistency and completeness.

Forms provide access to a GlobalKey through the **key** property. This key uniquely identifies the form and allows access to its internal state from anywhere in the code. This key has some properties that save, reset, and validate the value inserted into the fields.

Field widgets within the Form have access to a validator and an onSaved property. ".validator" allows validation of the field's value through a function, this only happens when the ".save" method provided by the form's key is called. The ".onSaved" property is also called by the ".save" method of the form's key, and this is where the value of the field is saved.
