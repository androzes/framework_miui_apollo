.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->cursorHandle:Landroid/widget/CursorHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CursorHandle;->setIsThisExtractEditText(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->cursorHandle:Landroid/widget/CursorHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CursorHandle;->setIsThisExtractEditText(Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->cursorHandle:Landroid/widget/CursorHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CursorHandle;->setIsThisExtractEditText(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public finishInternalChanges()V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 84
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 103
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 104
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 106
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setIsExtractEditTextSelecting(I)V

    .line 128
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowVisibilityChanged(I)V

    .line 207
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->closeContextMenu()V

    .line 211
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 92
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 93
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 66
    return-void
.end method

.method setIsExtractEditTextSelecting(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setIsEditTextSelecting(Z)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setIsEditTextSelecting(Z)V

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setIsEditTextSelecting(Z)V

    goto :goto_0

    .line 150
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setIsEditTextSelecting(Z)V

    .line 153
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 154
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setIsEditTextSelecting(Z)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1020020
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startInternalChanges()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 75
    return-void
.end method
