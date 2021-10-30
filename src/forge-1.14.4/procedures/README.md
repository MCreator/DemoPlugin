# Procedure block templates

Each procedure block needs its own template defined for all desired generators.

These templates are the code that will be generated for the given procedure block. Check the given files for examples.

Templates are defined using Freemarker template engine format: https://freemarker.apache.org/docs/ref.html

To print the code value for an input called "example", one would use the following code:

```
${input$example}
```

In the context of a template, this could be for example the following Java code:

```
Demo.exampleMethod(${input$example});
```

If the input example contained procedure block "x" in it, this would be transformed into
the following generated code by MCreator's generator:

```
Demo.exampleMethod(x);
```