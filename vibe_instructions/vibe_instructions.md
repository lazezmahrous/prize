- Use translations from `LocaleKeys` instead of typing it hard-coded
- When finish coding, check for imports.
- For validation, you can use ready validations from the @lib/core/utils/validation first for ready Validations to use.
- Always prefer simple & smart solutions
- Do not use Widget functions
- The data does not come from the server or something like that, just make a dummy UI design
- do not edit or change the current translations, just add to them.
- for buttons use @app_button.dart  widget
- for text fields use @AppTextField widget
- Use textStyles in the @text_style_extension.dart , Do not write a custom TextStyle.
- Make sure to be reusable widgets
- make each widget in a separate file as you can
- Avoid duplication of code whenever possible, which means checking for other areas of the codebase that might already have similar code and functionality
- You are careful to only make changes that are requested or you are confident are well understood and related to the change being requested
- Keep the codebase very clean and organized
- Avoid having files over 200-300 lines of code. Refactor at that point.