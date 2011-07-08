.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$1;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x2a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, stretchedColumns:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    .line 109
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, shrinkedColumns:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 118
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 124
    :cond_1
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, collapsedColumns:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 126
    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 129
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 131
    return-void

    .line 111
    .end local v1           #collapsedColumns:Ljava/lang/String;
    .end local v2           #shrinkedColumns:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_0

    .line 120
    .restart local v2       #shrinkedColumns:Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method static synthetic access$200(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method private findLargestCells(I)V
    .locals 22
    .parameter "widthMeasureSpec"

    .prologue
    .line 475
    const/4 v8, 0x1

    .line 484
    .local v8, firstRow:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    .line 485
    .local v6, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_6

    .line 486
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 487
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 485
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 491
    :cond_1
    move-object v0, v5

    instance-of v0, v0, Landroid/widget/TableRow;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 492
    move-object v0, v5

    check-cast v0, Landroid/widget/TableRow;

    move-object/from16 v16, v0

    .line 494
    .local v16, row:Landroid/widget/TableRow;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 495
    .local v11, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/16 v18, -0x2

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 497
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->getColumnsWidths(I)[I

    move-result-object v17

    .line 498
    .local v17, widths:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move v14, v0

    .line 500
    .local v14, newLength:I
    if-eqz v8, :cond_4

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v14

    if-eq v0, v1, :cond_3

    .line 502
    :cond_2
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 504
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    const/4 v8, 0x0

    goto :goto_1

    .line 507
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move v12, v0

    .line 508
    .local v12, length:I
    sub-int v7, v14, v12

    .line 511
    .local v7, difference:I
    if-lez v7, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object v15, v0

    .line 513
    .local v15, oldMaxWidths:[I
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 514
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    .end local v15           #oldMaxWidths:[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object v13, v0

    .line 525
    .local v13, maxWidths:[I
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 526
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-ge v10, v12, :cond_0

    .line 527
    aget v18, v13, v10

    aget v19, v17, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v13, v10

    .line 526
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 532
    .end local v5           #child:Landroid/view/View;
    .end local v7           #difference:I
    .end local v10           #j:I
    .end local v11           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v12           #length:I
    .end local v13           #maxWidths:[I
    .end local v14           #newLength:I
    .end local v16           #row:Landroid/widget/TableRow;
    .end local v17           #widths:[I
    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 180
    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 184
    :cond_2
    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V

    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 187
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 190
    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 12
    .parameter "columns"
    .parameter "allColumns"
    .parameter "size"
    .parameter "totalWidth"

    .prologue
    .line 571
    const/4 v8, 0x0

    .line 572
    .local v8, skipped:I
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 573
    .local v6, maxWidths:[I
    array-length v5, v6

    .line 574
    .local v5, length:I
    if-eqz p2, :cond_1

    move v2, v5

    .line 575
    .local v2, count:I
    :goto_0
    sub-int v9, p3, p4

    .line 576
    .local v9, totalExtraSpace:I
    div-int v3, v9, v2

    .line 580
    .local v3, extraSpace:I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    .line 581
    .local v7, nbChildren:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 582
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, child:Landroid/view/View;
    instance-of v10, v0, Landroid/widget/TableRow;

    if-eqz v10, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 581
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 574
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #extraSpace:I
    .end local v4           #i:I
    .end local v7           #nbChildren:I
    .end local v9           #totalExtraSpace:I
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    move v2, v10

    goto :goto_0

    .line 588
    .restart local v2       #count:I
    .restart local v3       #extraSpace:I
    .restart local v4       #i:I
    .restart local v7       #nbChildren:I
    .restart local v9       #totalExtraSpace:I
    :cond_2
    if-nez p2, :cond_5

    .line 589
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    .line 590
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 591
    .local v1, column:I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 592
    if-ge v1, v5, :cond_4

    .line 593
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    .line 589
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 595
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 600
    .end local v1           #column:I
    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_9

    .line 601
    aget v10, v6, v4

    add-int/2addr v10, v3

    aput v10, v6, v4

    .line 600
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 608
    :cond_6
    if-lez v8, :cond_9

    if-ge v8, v2, :cond_9

    .line 610
    mul-int v10, v8, v3

    sub-int v11, v2, v8

    div-int v3, v10, v11

    .line 611
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_9

    .line 612
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 613
    .restart local v1       #column:I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ge v1, v5, :cond_7

    .line 614
    aget v10, v6, v1

    if-le v3, v10, :cond_8

    .line 615
    const/4 v10, 0x0

    aput v10, v6, v1

    .line 611
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 617
    :cond_8
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    goto :goto_6

    .line 622
    .end local v1           #column:I
    :cond_9
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9
    .parameter "sequence"

    .prologue
    .line 148
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 149
    .local v4, columns:Landroid/util/SparseBooleanArray;
    const-string v8, "\\s*,\\s*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 150
    .local v7, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, columnDefs:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 154
    .local v2, columnIdentifier:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 156
    .local v3, columnIndex:I
    if-ltz v3, :cond_0

    .line 159
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v3           #columnIndex:I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v2           #columnIdentifier:Ljava/lang/String;
    :cond_1
    return-object v4

    .line 161
    .restart local v2       #columnIdentifier:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private requestRowsLayout()V
    .locals 3

    .prologue
    .line 203
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 205
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 8
    .parameter "widthMeasureSpec"

    .prologue
    .line 546
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v6, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const/4 v4, 0x0

    .line 552
    .local v4, totalWidth:I
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v5, v0, v1

    .line 553
    .local v5, width:I
    add-int/2addr v4, v5

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 556
    .end local v5           #width:I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int v3, v6, v7

    .line 558
    .local v3, size:I
    if-le v4, v3, :cond_4

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 561
    :cond_3
    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0

    .line 562
    :cond_4
    if-ge v4, v3, :cond_0

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 565
    :cond_5
    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    .line 369
    instance-of v7, p1, Landroid/widget/TableRow;

    if-eqz v7, :cond_1

    .line 370
    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    move-object v6, v0

    .line 371
    .local v6, row:Landroid/widget/TableRow;
    iget-object v1, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 372
    .local v1, collapsedColumns:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 373
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 374
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 375
    .local v2, columnIndex:I
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .line 379
    .local v5, isCollapsed:Z
    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {v6, v2, v5}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 373
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    .end local v1           #collapsedColumns:Landroid/util/SparseBooleanArray;
    .end local v2           #columnIndex:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #isCollapsed:Z
    .end local v6           #row:Landroid/widget/TableRow;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 393
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 401
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 402
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 420
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "params"

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 411
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 647
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 639
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 655
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 629
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isColumnStretchable(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 328
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShrinkAllColumns()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 3
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 449
    instance-of v1, p1, Landroid/widget/TableRow;

    if-eqz v1, :cond_0

    .line 450
    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    move-object v1, v0

    iget-object v2, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 453
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 455
    return-void
.end method

.method measureVertical(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->findLargestCells(I)V

    .line 463
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 465
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 466
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/TableLayout;->layoutVertical()V

    .line 438
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    .line 429
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 216
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 218
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 224
    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4
    .parameter "columnIndex"
    .parameter "isCollapsed"

    .prologue
    .line 281
    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 284
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 285
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    .line 287
    check-cast v2, Landroid/widget/TableRow;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 292
    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1
    .parameter "columnIndex"
    .parameter "isShrinkable"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 345
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 346
    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1
    .parameter "columnIndex"
    .parameter "isStretchable"

    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 318
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 319
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 200
    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0
    .parameter "shrinkAllColumns"

    .prologue
    .line 243
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 244
    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0
    .parameter "stretchAllColumns"

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 264
    return-void
.end method
