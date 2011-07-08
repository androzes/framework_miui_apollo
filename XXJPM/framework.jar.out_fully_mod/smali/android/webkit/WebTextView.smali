.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$1;,
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREVNEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field static final mPasswordAdjustX:I = 0x3

.field static final mPasswordAdjustY:I = 0x2


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mMaxLength:I

.field private mNodeName:Ljava/lang/String;

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 130
    const/4 v0, 0x0

    const v1, 0x10102b9

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 131
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 133
    return-void
.end method

.method private createBackground()V
    .locals 4

    .prologue
    .line 778
    iget-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 794
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v2, Landroid/webkit/WebTextView$OutlineDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>(Landroid/webkit/WebTextView$1;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 783
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 786
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 787
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x1

    .line 789
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 793
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 651
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 804
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 805
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 806
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method


# virtual methods
.method bringIntoView()V
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->bringPointIntoView(I)Z

    .line 643
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 288
    :goto_0
    return v3

    .line 141
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    move v9, v3

    .line 142
    .local v9, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 144
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 145
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_0

    .line 159
    :goto_2
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_5

    .line 160
    if-eqz v9, :cond_1

    .line 161
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 163
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 141
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    .line 150
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 155
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 166
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 170
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_6

    if-nez v5, :cond_6

    .line 171
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 172
    const/4 v3, 0x1

    goto :goto_0

    .line 175
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_9

    const/16 v3, 0x42

    if-ne v3, v11, :cond_9

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 179
    :cond_7
    if-nez v9, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 186
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 188
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 189
    .restart local v5       #oldLength:I
    :cond_9
    const/16 v3, 0x17

    if-ne v3, v11, :cond_e

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 194
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_c

    .line 195
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 199
    :cond_c
    if-nez v9, :cond_d

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 203
    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 207
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_f

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 210
    :cond_f
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 211
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 213
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_11

    const/4 v3, 0x1

    move v12, v3

    .line 218
    .local v12, maxedOut:Z
    :goto_3
    if-eqz v12, :cond_12

    if-eq v13, v14, :cond_12

    .line 219
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 234
    const/16 v3, 0x42

    if-ne v3, v11, :cond_10

    .line 238
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 240
    :cond_10
    if-eqz v12, :cond_14

    if-nez v10, :cond_14

    const/16 v3, 0x43

    if-eq v11, v3, :cond_14

    .line 241
    if-ne v13, v14, :cond_13

    .line 243
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 213
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    move v12, v3

    goto :goto_3

    .line 221
    .restart local v12       #maxedOut:Z
    :cond_12
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 244
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 252
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 253
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 254
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 256
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 271
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 275
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_16

    if-nez v9, :cond_16

    .line 276
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 279
    :cond_16
    if-eqz v10, :cond_18

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 285
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 288
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 299
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 305
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 311
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 341
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 342
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 343
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 352
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 354
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 356
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 409
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 411
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 368
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v1

    .line 373
    .local v1, prevInputType:I
    if-ne v1, v5, :cond_1

    .line 374
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 382
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 401
    .end local v1           #prevInputType:I
    :cond_0
    :goto_1
    return v6

    .line 376
    .restart local v1       #prevInputType:I
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 379
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_0

    .line 384
    .end local v1           #prevInputType:I
    :cond_2
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v0

    .line 389
    .local v0, nextInputType:I
    if-ne v0, v5, :cond_3

    .line 390
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 397
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 398
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 392
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 395
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_2
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 415
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 420
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 422
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 423
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 424
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 426
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 438
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 444
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 450
    if-nez p4, :cond_2

    .line 451
    if-lez p3, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0

    .line 468
    :cond_2
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 469
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 471
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 472
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 473
    .local v11, cannotUseKeyEvents:Z
    :goto_1
    if-eqz v11, :cond_7

    const/4 v5, 0x0

    move v12, v5

    .line 474
    .local v12, charactersFromKeyEvents:I
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_3

    if-eqz v11, :cond_8

    .line 475
    :cond_3
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 491
    .end local v8           #replace:Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v11, :cond_9

    .line 492
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 493
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 496
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 497
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 493
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 472
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 473
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_7
    const/4 v5, 0x1

    move v12, v5

    goto :goto_2

    .line 487
    .restart local v12       #charactersFromKeyEvents:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_3

    .line 501
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 595
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 508
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 514
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 515
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 516
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 517
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 520
    :pswitch_1
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v9, :cond_0

    .line 521
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 522
    const/4 v9, 0x0

    goto :goto_1

    .line 524
    :cond_0
    iget-object v9, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 525
    .local v7, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 526
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 527
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 528
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 529
    iget v9, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 530
    .local v1, dx:I
    iget v9, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 534
    .local v2, dy:I
    div-int/lit8 v8, v7, 0x2

    .line 535
    .local v8, smallerSlop:I
    if-gt v1, v8, :cond_1

    if-le v2, v8, :cond_4

    .line 536
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_2

    .line 537
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    iget v10, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-static {p0, v9, v10}, Landroid/text/method/Touch;->getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I

    move-result v9

    int-to-float v5, v9

    .line 543
    .local v5, maxScrollX:F
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_3

    iget v10, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    :goto_2
    iget v11, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->scrollFocusedTextInput(FI)V

    .line 546
    .end local v5           #maxScrollX:F
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 547
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 548
    const/4 v9, 0x1

    goto :goto_1

    .line 543
    .restart local v5       #maxScrollX:F
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 550
    .end local v5           #maxScrollX:F
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    .line 555
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 557
    :cond_5
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_7

    .line 559
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v9, :cond_6

    .line 560
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v11, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v12, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 562
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 564
    :cond_6
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 565
    .local v6, scrolled:Z
    if-eqz v6, :cond_7

    .line 566
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 567
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 568
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 571
    .end local v6           #scrolled:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 574
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v7           #slop:I
    .end local v8           #smallerSlop:I
    :pswitch_2
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v9, :cond_8

    .line 575
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 576
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 578
    :cond_8
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v9, :cond_9

    .line 581
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 582
    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_9

    .line 583
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 587
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v9, :cond_a

    .line 588
    iget-object v9, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 590
    :cond_a
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 600
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 618
    :goto_0
    return v2

    .line 603
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 604
    goto :goto_0

    .line 608
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 609
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 612
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 613
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 616
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 618
    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 624
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 635
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 636
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 637
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->inAnimateZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 661
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 663
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 664
    return-void
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 704
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 705
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 706
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 716
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 722
    :cond_0
    :goto_1
    return-void

    .line 705
    .end local v0           #selection:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 720
    .restart local v0       #selection:I
    :cond_2
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method setInPassword(Z)V
    .locals 1
    .parameter "inPassword"

    .prologue
    .line 730
    if-eqz p1, :cond_0

    .line 731
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 733
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 737
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 738
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    invoke-virtual {p0, p1}, Landroid/webkit/WebTextView;->setCursorVisible(Z)V

    .line 742
    return-void

    .line 737
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 738
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 799
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 801
    return-void
.end method

.method setNodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 825
    iput-object p1, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    .line 826
    return-void
.end method

.method setNodePointer(I)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 820
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 821
    return-void
.end method

.method setRect(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 840
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 842
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    add-int/lit8 p1, p1, 0x3

    .line 843
    add-int/lit8 p3, p3, -0x3

    .line 844
    add-int/lit8 p2, p2, 0x2

    .line 845
    add-int/lit8 p4, p4, -0x2

    .line 847
    if-nez v0, :cond_0

    .line 848
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 855
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 856
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    :goto_1
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 862
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 863
    return-void

    .line 850
    :cond_0
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 851
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 852
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 853
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 869
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 871
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 872
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 873
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 874
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 875
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 884
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 885
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 886
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 887
    .local v3, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 888
    .local v2, selEnd:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 889
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 890
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 891
    .local v1, newLength:I
    if-le v3, v1, :cond_0

    move v3, v1

    .line 892
    :cond_0
    if-le v2, v1, :cond_1

    move v2, v1

    .line 893
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 894
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 895
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 896
    return-void
.end method

.method setType(I)V
    .locals 14
    .parameter "type"

    .prologue
    const/4 v13, 0x0

    .line 907
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v10, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 908
    :cond_0
    const/4 v9, 0x1

    .line 909
    .local v9, single:Z
    const/4 v3, 0x0

    .line 910
    .local v3, inPassword:Z
    const/4 v5, -0x1

    .line 911
    .local v5, maxLength:I
    const/4 v4, 0x1

    .line 912
    .local v4, inputType:I
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 913
    or-int/lit16 v4, v4, 0xa0

    .line 915
    :cond_1
    const/high16 v2, -0x7000

    .line 917
    .local v2, imeOptions:I
    packed-switch p1, :pswitch_data_0

    .line 957
    or-int/lit8 v2, v2, 0x2

    .line 960
    :goto_1
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 961
    if-eqz v9, :cond_2

    .line 962
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v11

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 964
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v5

    .line 965
    const/4 v10, 0x2

    if-eq p1, v10, :cond_2

    .line 966
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 968
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v11, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v6, v11}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;I)V

    .line 974
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v0

    .line 975
    .local v0, action:I
    const/16 v7, 0xc

    .line 976
    .local v7, next_mask:I
    const/4 v8, 0x3

    .line 977
    .local v8, prev_mask:I
    and-int v10, v0, v7

    if-eqz v10, :cond_3

    and-int v10, v0, v8

    if-eqz v10, :cond_3

    .line 978
    const-string v10, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 993
    :goto_2
    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 994
    invoke-direct {p0, v5}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 995
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 996
    invoke-virtual {p0, v4}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 997
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 998
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_0

    .line 919
    .end local v0           #action:I
    .end local v1           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    .end local v7           #next_mask:I
    .end local v8           #prev_mask:I
    :pswitch_0
    or-int/lit8 v2, v2, 0x2

    .line 920
    goto :goto_1

    .line 922
    :pswitch_1
    const/4 v9, 0x0

    .line 923
    const v4, 0x2c001

    .line 927
    or-int/lit8 v2, v2, 0x1

    .line 928
    goto :goto_1

    .line 930
    :pswitch_2
    const/4 v3, 0x1

    .line 931
    or-int/lit8 v2, v2, 0x2

    .line 932
    goto :goto_1

    .line 934
    :pswitch_3
    or-int/lit8 v2, v2, 0x3

    .line 935
    goto :goto_1

    .line 939
    :pswitch_4
    or-int/lit8 v2, v2, 0x2

    .line 940
    goto :goto_1

    .line 942
    :pswitch_5
    or-int/lit8 v4, v4, 0x2

    .line 946
    goto :goto_1

    .line 948
    :pswitch_6
    or-int/lit8 v4, v4, 0x3

    .line 950
    goto :goto_1

    .line 954
    :pswitch_7
    or-int/lit8 v2, v2, 0x2

    .line 955
    goto :goto_1

    .line 980
    .restart local v0       #action:I
    .restart local v7       #next_mask:I
    .restart local v8       #prev_mask:I
    :cond_3
    and-int v10, v0, v8

    if-eqz v10, :cond_4

    .line 981
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 983
    :cond_4
    and-int v10, v0, v7

    if-eqz v10, :cond_5

    .line 984
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 989
    :cond_5
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1008
    return-void
.end method
