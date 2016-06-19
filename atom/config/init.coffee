# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
wrapSelection = (selection, before, after) ->
  after ?= before
  selectedText = selection.getText()
  selection.insertText("#{before}#{selectedText}#{after}")

atom.commands.add 'atom-text-editor',
  'custom:wrap-with-i18n-tag', ->
    editor = @getModel()
    editor.transact ->
      wrapSelection(selection, '{{__ "', '"}}') for selection in editor.getSelections()

atom.commands.add 'atom-text-editor',
  'custom:wrap-with-unescaped-i18n-tag', ->
    editor = @getModel()
    editor.transact ->
      wrapSelection(selection, '{{{__ "', '"}}}') for selection in editor.getSelections()
