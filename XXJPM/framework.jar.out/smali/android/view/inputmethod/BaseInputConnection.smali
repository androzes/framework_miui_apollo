.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 117
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 113
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 76
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 79
    array-length v3, v2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 80
    aget-object v1, v2, v0

    .line 81
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 82
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 18
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v7

    .line 486
    .local v7, content:Landroid/text/Editable;
    if-nez v7, :cond_0

    .line 592
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 493
    invoke-static {v7}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .line 494
    .local v5, a:I
    invoke-static {v7}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    .line 498
    .local v6, b:I
    if-ge v6, v5, :cond_1

    .line 499
    move v13, v5

    .line 500
    .local v13, tmp:I
    move v5, v6

    .line 501
    move v6, v13

    .line 504
    .end local v13           #tmp:I
    :cond_1
    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    const/4 v14, -0x1

    if-eq v6, v14, :cond_4

    .line 505
    invoke-static {v7}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 518
    :cond_2
    :goto_1
    if-eqz p3, :cond_b

    .line 519
    const/4 v10, 0x0

    .line 520
    .local v10, sp:Landroid/text/Spannable;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v14, v0

    if-nez v14, :cond_9

    .line 521
    new-instance v10, Landroid/text/SpannableStringBuilder;

    .end local v10           #sp:Landroid/text/Spannable;
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    .restart local v10       #sp:Landroid/text/Spannable;
    move-object/from16 p1, v10

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    move-object v14, v0

    if-nez v14, :cond_3

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    move-object v14, v0

    if-eqz v14, :cond_7

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 532
    .local v8, context:Landroid/content/Context;
    :goto_2
    if-eqz v8, :cond_3

    .line 533
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010230

    aput v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 537
    .local v12, ta:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 538
    .local v11, style:Ljava/lang/CharSequence;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 539
    if-eqz v11, :cond_3

    instance-of v14, v11, Landroid/text/Spanned;

    if-eqz v14, :cond_3

    .line 540
    move-object v0, v11

    check-cast v0, Landroid/text/Spanned;

    move-object v12, v0

    .end local v12           #ta:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const-class v16, Ljava/lang/Object;

    move-object v0, v12

    move v1, v14

    move v2, v15

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 545
    .end local v8           #context:Landroid/content/Context;
    .end local v11           #style:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_a

    .line 546
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    move-object v14, v0

    array-length v14, v14

    if-ge v9, v14, :cond_a

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    move-object v14, v0

    aget-object v14, v14, v9

    const/4 v15, 0x0

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v16

    const/16 v17, 0x21

    move-object v0, v10

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 546
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 507
    .end local v9           #i:I
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_4
    invoke-static {v7}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 508
    invoke-static {v7}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 509
    if-gez v5, :cond_5

    const/4 v5, 0x0

    .line 510
    :cond_5
    if-gez v6, :cond_6

    const/4 v6, 0x0

    .line 511
    :cond_6
    if-ge v6, v5, :cond_2

    .line 512
    move v13, v5

    .line 513
    .restart local v13       #tmp:I
    move v5, v6

    .line 514
    move v6, v13

    goto/16 :goto_1

    .line 527
    .end local v13           #tmp:I
    .restart local v10       #sp:Landroid/text/Spannable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    move-object v14, v0

    iget-object v14, v14, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v14, :cond_8

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    move-object v14, v0

    iget-object v14, v14, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .restart local v8       #context:Landroid/content/Context;
    goto/16 :goto_2

    .line 530
    .end local v8           #context:Landroid/content/Context;
    :cond_8
    const/4 v8, 0x0

    .restart local v8       #context:Landroid/content/Context;
    goto/16 :goto_2

    .line 552
    .end local v8           #context:Landroid/content/Context;
    :cond_9
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v10, v0

    .line 554
    :cond_a
    invoke-static {v10}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 573
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_b
    if-lez p2, :cond_e

    .line 574
    const/4 v14, 0x1

    sub-int v14, v6, v14

    add-int p2, p2, v14

    .line 578
    :goto_4
    if-gez p2, :cond_c

    const/16 p2, 0x0

    .line 579
    :cond_c
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v14

    move/from16 v0, p2

    move v1, v14

    if-le v0, v1, :cond_d

    .line 580
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result p2

    .line 581
    :cond_d
    move-object v0, v7

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 583
    move-object v0, v7

    move v1, v5

    move v2, v6

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 576
    :cond_e
    add-int p2, p2, v5

    goto :goto_4
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 444
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 449
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 450
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 451
    .local v6, N:I
    if-eqz v6, :cond_0

    .line 454
    if-ne v6, v2, :cond_4

    .line 457
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 458
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 461
    :cond_2
    new-array v7, v2, [C

    .line 462
    .local v7, chars:[C
    invoke-interface {v8, v4, v2, v7, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 463
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 464
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 465
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 467
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 465
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 469
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 476
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 478
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 479
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 9
    .parameter "text"

    .prologue
    const/16 v8, 0x121

    const/4 v7, 0x0

    .line 89
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v7, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 91
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 92
    aget-object v2, v3, v1

    .line 93
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 94
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v8, :cond_0

    .line 100
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, 0x33

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 108
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {p0, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 155
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 157
    :goto_0
    return v1

    .line 156
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 157
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 175
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v9, -0x1

    .line 186
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 187
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 233
    :goto_0
    return v9

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 191
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 192
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 194
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 195
    move v8, v0

    .line 196
    .local v8, tmp:I
    move v0, v1

    .line 197
    move v1, v8

    .line 201
    .end local v8           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 202
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 203
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 204
    move v8, v2

    .line 205
    .restart local v8       #tmp:I
    move v2, v3

    .line 206
    move v3, v8

    .line 208
    .end local v8           #tmp:I
    :cond_2
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 209
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 210
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 213
    :cond_4
    const/4 v5, 0x0

    .line 215
    .local v5, deleted:I
    if-lez p1, :cond_6

    .line 216
    sub-int v7, v0, p1

    .line 217
    .local v7, start:I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 218
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 219
    sub-int v5, v0, v7

    .line 222
    .end local v7           #start:I
    :cond_6
    if-lez p2, :cond_8

    .line 223
    sub-int/2addr v1, v5

    .line 225
    add-int v6, v1, p2

    .line 226
    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 228
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 231
    .end local v6           #end:I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 233
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 244
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 246
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 247
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 248
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 250
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v5, 0x0

    .line 259
    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 273
    :goto_0
    return v4

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 262
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 265
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 267
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 268
    move v3, v0

    .line 269
    .local v3, tmp:I
    move v0, v1

    .line 270
    move v1, v3

    .line 273
    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 129
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 320
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 344
    :goto_0
    return-object v4

    .line 322
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 323
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 325
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 326
    move v3, v0

    .line 327
    .local v3, tmp:I
    move v0, v1

    .line 328
    move v1, v3

    .line 332
    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    .line 333
    const/4 v1, 0x0

    .line 336
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 337
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 341
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 342
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 344
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 289
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 311
    :goto_0
    return-object v4

    .line 291
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 292
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 294
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 295
    move v3, v0

    .line 296
    .local v3, tmp:I
    move v0, v1

    .line 297
    move v1, v3

    .line 300
    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    .line 301
    const-string v4, ""

    goto :goto_0

    .line 304
    :cond_2
    if-le p1, v0, :cond_3

    .line 305
    move p1, v0

    .line 308
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 309
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 311
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 352
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 356
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 439
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public reportIsSoftInputMethodShowing(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 597
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setIsSoftInputMethodShowing(Z)V

    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 420
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v2

    .line 422
    .local v0, h:Landroid/os/Handler;
    :goto_0
    if-nez v0, :cond_0

    .line 423
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 427
    :cond_0
    if-eqz v0, :cond_1

    .line 428
    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    :cond_1
    monitor-exit v1

    .line 432
    const/4 v1, 0x0

    return v1

    .line 421
    .end local v0           #h:Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 385
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 394
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 395
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 412
    :goto_0
    return v2

    .line 396
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 397
    .local v1, len:I
    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_2

    :cond_1
    move v2, v3

    .line 402
    goto :goto_0

    .line 404
    :cond_2
    if-ne p1, p2, :cond_3

    const/high16 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :goto_1
    move v2, v3

    .line 412
    goto :goto_0

    .line 410
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method
