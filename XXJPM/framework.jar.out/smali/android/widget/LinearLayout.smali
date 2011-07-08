.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 90
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 64
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 72
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 90
    const/16 v3, 0x33

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 117
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 121
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 122
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 126
    if-ltz v2, :cond_1

    .line 127
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 131
    .local v1, baselineAligned:Z
    if-nez v1, :cond_2

    .line 132
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 135
    :cond_2
    const/4 v3, 0x4

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 137
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 141
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 952
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 954
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 955
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 956
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 957
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 959
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 962
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 963
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 966
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 967
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 954
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 971
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 575
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 577
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 578
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 579
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 580
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 582
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 585
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 586
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 589
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 590
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 577
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 594
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1249
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1250
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1351
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1334
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1339
    :goto_0
    return-object v0

    .line 1336
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1337
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1321
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1344
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 172
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 220
    :goto_0
    return v5

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 177
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 184
    .local v1, childBaseline:I
    if-ne v1, v7, :cond_3

    .line 185
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    move v5, v7

    .line 187
    goto :goto_0

    .line 191
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 203
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 204
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 205
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 206
    sparse-switch v4, :sswitch_data_0

    .line 219
    .end local v4           #majorGravity:I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 208
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 209
    goto :goto_1

    .line 212
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 982
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method layoutHorizontal()V
    .locals 25

    .prologue
    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v24, v0

    .line 1146
    .local v24, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v12, v0

    .line 1149
    .local v12, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int v17, v3, v4

    .line 1150
    .local v17, height:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v3, v0

    sub-int v11, v17, v3

    .line 1153
    .local v11, childBottom:I
    sub-int v3, v17, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1155
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1157
    .local v14, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v20, v3, 0x7

    .line 1158
    .local v20, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v23, v3, 0x70

    .line 1160
    .local v23, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v9, v0

    .line 1162
    .local v9, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v21, v0

    .line 1163
    .local v21, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v22, v0

    .line 1165
    .local v22, maxDescent:[I
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 1166
    sparse-switch v20, :sswitch_data_0

    .line 1179
    :cond_0
    :goto_0
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_6

    .line 1180
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1182
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_2

    .line 1183
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v12, v3

    .line 1179
    :cond_1
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1170
    .end local v4           #child:Landroid/view/View;
    .end local v18           #i:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1171
    goto :goto_0

    .line 1174
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_0

    .line 1184
    .restart local v4       #child:Landroid/view/View;
    .restart local v18       #i:I
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 1185
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1186
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1187
    .local v8, childHeight:I
    const/4 v10, -0x1

    .line 1189
    .local v10, childBaseline:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1192
    .local v19, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v9, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 1193
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 1196
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 1197
    .local v16, gravity:I
    if-gez v16, :cond_4

    .line 1198
    move/from16 v16, v23

    .line 1201
    :cond_4
    and-int/lit8 v3, v16, 0x70

    sparse-switch v3, :sswitch_data_1

    .line 1233
    move/from16 v6, v24

    .line 1237
    .local v6, childTop:I
    :cond_5
    :goto_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1238
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v5, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1240
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v3, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 1243
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v18, v18, v3

    goto/16 :goto_2

    .line 1203
    .end local v6           #childTop:I
    :sswitch_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v6, v24, v3

    .line 1204
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_5

    .line 1205
    const/4 v3, 0x1

    aget v3, v21, v3

    sub-int/2addr v3, v10

    add-int/2addr v6, v3

    goto :goto_3

    .line 1221
    .end local v6           #childTop:I
    :sswitch_3
    sub-int v3, v13, v8

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1223
    .restart local v6       #childTop:I
    goto :goto_3

    .line 1226
    .end local v6           #childTop:I
    :sswitch_4
    sub-int v3, v11, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1227
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_5

    .line 1228
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v15, v3, v10

    .line 1229
    .local v15, descent:I
    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v3, v15

    sub-int/2addr v6, v3

    .line 1230
    goto :goto_3

    .line 1246
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childTop:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v10           #childBaseline:I
    .end local v15           #descent:I
    .end local v16           #gravity:I
    .end local v19           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    return-void

    .line 1166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1201
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 20

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1059
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v11, v0

    .line 1063
    .local v11, childTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int v19, v3, v4

    .line 1064
    .local v19, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    sub-int v9, v19, v3

    .line 1067
    .local v9, childRight:I
    sub-int v3, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    sub-int v10, v3, v4

    .line 1069
    .local v10, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1071
    .local v12, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v16, v3, 0x70

    .line 1072
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v17, v3, 0x7

    .line 1074
    .local v17, minorGravity:I
    const/16 v3, 0x30

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 1075
    sparse-switch v16, :sswitch_data_0

    .line 1089
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v12, :cond_4

    .line 1090
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1091
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_2

    .line 1092
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 1089
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1079
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v11, v3, v4

    .line 1080
    goto :goto_0

    .line 1083
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    goto :goto_0

    .line 1093
    .restart local v4       #child:Landroid/view/View;
    .restart local v14       #i:I
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 1094
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1095
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1097
    .local v8, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1100
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1101
    .local v13, gravity:I
    if-gez v13, :cond_3

    .line 1102
    move/from16 v13, v17

    .line 1105
    :cond_3
    and-int/lit8 v3, v13, 0x7

    packed-switch v3, :pswitch_data_0

    .line 1119
    :pswitch_0
    move/from16 v5, v18

    .line 1124
    .local v5, childLeft:I
    :goto_3
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1125
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, v11, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1127
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    .end local v5           #childLeft:I
    add-int/2addr v3, v5

    add-int/2addr v11, v3

    .line 1129
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v14, v3

    goto :goto_2

    .line 1107
    :pswitch_1
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v5, v18, v3

    .line 1108
    .restart local v5       #childLeft:I
    goto :goto_3

    .line 1111
    .end local v5           #childLeft:I
    :pswitch_2
    sub-int v3, v10, v7

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v18

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1113
    .restart local v5       #childLeft:I
    goto :goto_3

    .line 1116
    .end local v5           #childLeft:I
    :pswitch_3
    sub-int v3, v9, v7

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1117
    .restart local v5       #childLeft:I
    goto :goto_3

    .line 1132
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v13           #gravity:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 1075
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1012
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1014
    return-void
.end method

.method measureHorizontal(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 608
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 609
    const/16 v34, 0x0

    .line 610
    .local v34, maxHeight:I
    const/4 v11, 0x0

    .line 611
    .local v11, alternativeMaxHeight:I
    const/16 v41, 0x0

    .line 612
    .local v41, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 613
    .local v10, allFillParent:Z
    const/16 v38, 0x0

    .line 615
    .local v38, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v19

    .line 617
    .local v19, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v42

    .line 618
    .local v42, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 620
    .local v24, heightMode:I
    const/16 v30, 0x0

    .line 622
    .local v30, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object v3, v0

    if-nez v3, :cond_1

    .line 623
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 624
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 627
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v32, v0

    .line 628
    .local v32, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v33, v0

    .line 630
    .local v33, maxDescent:[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 631
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v13, v0

    .line 634
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v39, v0

    .line 636
    .local v39, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    move/from16 v26, v3

    .line 638
    .local v26, isExactly:Z
    :goto_0
    const/high16 v27, -0x8000

    .line 641
    .local v27, largestChildWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 642
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 644
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_3

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 641
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 636
    .end local v5           #i:I
    .end local v26           #isExactly:Z
    .end local v27           #largestChildWidth:I
    :cond_2
    const/4 v3, 0x0

    move/from16 v26, v3

    goto :goto_0

    .line 649
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v26       #isExactly:Z
    .restart local v27       #largestChildWidth:I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 650
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 651
    goto :goto_2

    .line 654
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 657
    .local v28, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v38, v38, v3

    .line 659
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 663
    if-eqz v26, :cond_8

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 676
    :goto_3
    if-eqz v13, :cond_5

    .line 677
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 678
    .local v22, freeSpec:I
    move-object v0, v4

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 719
    .end local v22           #freeSpec:I
    :cond_5
    :goto_4
    const/16 v31, 0x0

    .line 720
    .local v31, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    .line 724
    const/16 v30, 0x1

    .line 725
    const/16 v31, 0x1

    .line 728
    :cond_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 729
    .local v29, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 731
    .local v16, childHeight:I
    if-eqz v13, :cond_7

    .line 732
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 733
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_7

    .line 736
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_5
    and-int/lit8 v23, v3, 0x70

    .line 738
    .local v23, gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 741
    .local v25, index:I
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 742
    aget v3, v33, v25

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v25

    .line 746
    .end local v14           #childBaseline:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    :cond_7
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 748
    if-eqz v10, :cond_f

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_f

    const/4 v3, 0x1

    move v10, v3

    .line 749
    :goto_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_11

    .line 754
    if-eqz v31, :cond_10

    move/from16 v3, v29

    :goto_7
    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 761
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 666
    .end local v16           #childHeight:I
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 667
    .local v37, totalLength:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 681
    .end local v37           #totalLength:I
    :cond_9
    const/high16 v35, -0x8000

    .line 683
    .local v35, oldWidth:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_a

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 688
    const/16 v35, 0x0

    .line 689
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 696
    :cond_a
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v7, v3

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 700
    const/high16 v3, -0x8000

    move/from16 v0, v35

    move v1, v3

    if-eq v0, v1, :cond_b

    .line 701
    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 704
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 705
    .local v18, childWidth:I
    if-eqz v26, :cond_d

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 714
    :goto_a
    if-eqz v39, :cond_5

    .line 715
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto/16 :goto_4

    .line 696
    .end local v18           #childWidth:I
    :cond_c
    const/4 v3, 0x0

    move v7, v3

    goto :goto_9

    .line 709
    .restart local v18       #childWidth:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 710
    .restart local v37       #totalLength:I
    add-int v3, v37, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_a

    .line 736
    .end local v18           #childWidth:I
    .end local v35           #oldWidth:I
    .end local v37           #totalLength:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v29       #margin:I
    .restart local v31       #matchHeightLocally:Z
    :cond_e
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto/16 :goto_5

    .line 748
    .end local v14           #childBaseline:I
    :cond_f
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_6

    :cond_10
    move/from16 v3, v16

    .line 754
    goto/16 :goto_7

    .line 757
    :cond_11
    if-eqz v31, :cond_12

    move/from16 v3, v29

    :goto_b
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    :cond_12
    move/from16 v3, v16

    goto :goto_b

    .line 766
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_13
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 770
    :cond_14
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    .end local v5           #i:I
    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 773
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 776
    .local v21, descent:I
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 779
    .end local v12           #ascent:I
    .end local v21           #descent:I
    :cond_15
    if-eqz v39, :cond_19

    const/high16 v3, -0x8000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_19

    .line 780
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 782
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_c
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    .line 783
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 785
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_16

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 782
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 790
    .restart local v4       #child:Landroid/view/View;
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_17

    .line 791
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 792
    goto :goto_d

    .line 795
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v26, :cond_18

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 801
    .restart local v4       #child:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 802
    .restart local v37       #totalLength:I
    add-int v3, v37, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 809
    .end local v5           #i:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v37           #totalLength:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    .line 814
    .local v43, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v43

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 817
    move/from16 v0, v43

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v43

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v20, v43, v3

    .line 822
    .local v20, delta:I
    if-eqz v20, :cond_2c

    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_2c

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v40, v3

    .line 825
    .local v40, weightSum:F
    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 826
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 827
    const/16 v34, -0x1

    .line 829
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 831
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_f
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_27

    .line 832
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 834
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1c

    .line 831
    .end local v4           #child:Landroid/view/View;
    :cond_1a
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v5           #i:I
    .end local v40           #weightSum:F
    :cond_1b
    move/from16 v40, v38

    .line 823
    goto :goto_e

    .line 838
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v40       #weightSum:F
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 841
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v15, v0

    .line 842
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_1f

    .line 844
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v40

    move v0, v3

    float-to-int v0, v0

    move/from16 v36, v0

    .line 845
    .local v36, share:I
    sub-float v40, v40, v15

    .line 846
    sub-int v20, v20, v36

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v6, v0

    move/from16 v0, p2

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 855
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_1d

    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-eq v0, v1, :cond_20

    .line 858
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v18, v3, v36

    .line 859
    .restart local v18       #childWidth:I
    if-gez v18, :cond_1e

    .line 860
    const/16 v18, 0x0

    .line 863
    :cond_1e
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 874
    .end local v17           #childHeightMeasureSpec:I
    .end local v18           #childWidth:I
    .end local v36           #share:I
    :cond_1f
    :goto_11
    if-eqz v26, :cond_22

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 883
    :goto_12
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_23

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_23

    const/4 v3, 0x1

    move/from16 v31, v3

    .line 886
    .restart local v31       #matchHeightLocally:Z
    :goto_13
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 887
    .restart local v29       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 888
    .restart local v16       #childHeight:I
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 889
    if-eqz v31, :cond_24

    move/from16 v3, v29

    :goto_14
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 892
    if-eqz v10, :cond_25

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    const/4 v3, 0x1

    move v10, v3

    .line 894
    :goto_15
    if-eqz v13, :cond_1a

    .line 895
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 896
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1a

    .line 898
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_16
    and-int/lit8 v23, v3, 0x70

    .line 900
    .restart local v23       #gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 903
    .restart local v25       #index:I
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 904
    aget v3, v33, v25

    sub-int v4, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .end local v4           #child:Landroid/view/View;
    move-result v3

    aput v3, v33, v25

    goto/16 :goto_10

    .line 868
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v36       #share:I
    :cond_20
    if-lez v36, :cond_21

    move/from16 v3, v36

    :goto_17
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    :cond_21
    const/4 v3, 0x0

    goto :goto_17

    .line 878
    .end local v17           #childHeightMeasureSpec:I
    .end local v36           #share:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 879
    .restart local v37       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12

    .line 883
    .end local v37           #totalLength:I
    :cond_23
    const/4 v3, 0x0

    move/from16 v31, v3

    goto/16 :goto_13

    .restart local v16       #childHeight:I
    .restart local v29       #margin:I
    .restart local v31       #matchHeightLocally:Z
    :cond_24
    move/from16 v3, v16

    .line 889
    goto/16 :goto_14

    .line 892
    :cond_25
    const/4 v3, 0x0

    move v10, v3

    goto :goto_15

    .line 898
    .restart local v14       #childBaseline:I
    :cond_26
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto :goto_16

    .line 911
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 916
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 920
    :cond_28
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 923
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 926
    .restart local v21       #descent:I
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 932
    .end local v12           #ascent:I
    .end local v21           #descent:I
    .end local v40           #weightSum:F
    :cond_29
    :goto_18
    if-nez v10, :cond_2a

    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_2a

    .line 933
    move/from16 v34, v11

    .line 936
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v34, v34, v3

    .line 939
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 941
    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 943
    if-eqz v30, :cond_2b

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 946
    :cond_2b
    return-void

    .line 929
    :cond_2c
    move v0, v11

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_18
.end method

.method measureNullChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 35
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 322
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 323
    const/16 v25, 0x0

    .line 324
    .local v25, maxWidth:I
    const/4 v11, 0x0

    .line 325
    .local v11, alternativeMaxWidth:I
    const/16 v33, 0x0

    .line 326
    .local v33, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 327
    .local v10, allFillParent:Z
    const/16 v30, 0x0

    .line 329
    .local v30, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v16

    .line 331
    .local v16, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v34

    .line 332
    .local v34, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 334
    .local v18, heightMode:I
    const/16 v23, 0x0

    .line 336
    .local v23, matchWidth:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move v12, v0

    .line 337
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v31, v0

    .line 339
    .local v31, useLargestChild:Z
    const/high16 v20, -0x8000

    .line 342
    .local v20, largestChildHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 343
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 345
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 342
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    .restart local v4       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 351
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 352
    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    .local v21, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v30, v30, v3

    .line 359
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 364
    .local v29, totalLength:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 403
    :cond_2
    :goto_2
    if-ltz v12, :cond_3

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 410
    :cond_3
    if-ge v5, v12, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 411
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .end local v4           #child:Landroid/view/View;
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    .end local v29           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    :cond_4
    const/high16 v27, -0x8000

    .line 368
    .local v27, oldHeight:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 373
    const/16 v27, 0x0

    .line 374
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 381
    :cond_5
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v9, v3

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 385
    const/high16 v3, -0x8000

    move/from16 v0, v27

    move v1, v3

    if-eq v0, v1, :cond_6

    .line 386
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 389
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 390
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 391
    .restart local v29       #totalLength:I
    add-int v3, v29, v14

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 394
    if-eqz v31, :cond_2

    .line 395
    move v0, v14

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_2

    .line 381
    .end local v14           #childHeight:I
    .end local v29           #totalLength:I
    :cond_7
    const/4 v3, 0x0

    move v9, v3

    goto :goto_3

    .line 417
    .end local v27           #oldHeight:I
    .restart local v29       #totalLength:I
    :cond_8
    const/16 v24, 0x0

    .line 418
    .local v24, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    .line 423
    const/16 v23, 0x1

    .line 424
    const/16 v24, 0x1

    .line 427
    :cond_9
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 428
    .local v22, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 429
    .local v26, measuredWidth:I
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 431
    if-eqz v10, :cond_a

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    const/4 v3, 0x1

    move v10, v3

    .line 432
    :goto_4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 437
    if-eqz v24, :cond_b

    move/from16 v3, v22

    :goto_5
    move/from16 v0, v33

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 444
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 431
    :cond_a
    const/4 v3, 0x0

    move v10, v3

    goto :goto_4

    :cond_b
    move/from16 v3, v26

    .line 437
    goto :goto_5

    .line 440
    :cond_c
    if-eqz v24, :cond_d

    move/from16 v3, v22

    :goto_7
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    :cond_d
    move/from16 v3, v26

    goto :goto_7

    .line 447
    .end local v4           #child:Landroid/view/View;
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    .end local v29           #totalLength:I
    :cond_e
    if-eqz v31, :cond_11

    const/high16 v3, -0x8000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_11

    .line 448
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 450
    const/4 v5, 0x0

    :goto_8
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 451
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 453
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_f

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 450
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 458
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_10

    .line 459
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 460
    goto :goto_9

    .line 463
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 467
    .restart local v29       #totalLength:I
    add-int v3, v29, v20

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 473
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #totalLength:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v19, v0

    .line 478
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 481
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v19

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v17, v19, v3

    .line 486
    .local v17, delta:I
    if-eqz v17, :cond_1f

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_1f

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v32, v3

    .line 489
    .local v32, weightSum:F
    :goto_a
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 491
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_b
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c

    .line 492
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 494
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_13

    .line 491
    .end local v4           #child:Landroid/view/View;
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v5           #i:I
    .end local v32           #weightSum:F
    :cond_12
    move/from16 v32, v30

    .line 487
    goto :goto_a

    .line 498
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v32       #weightSum:F
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 500
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v13, v0

    .line 501
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_16

    .line 503
    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v32

    move v0, v3

    float-to-int v0, v0

    move/from16 v28, v0

    .line 504
    .local v28, share:I
    sub-float v32, v32, v13

    .line 505
    sub-int v17, v17, v28

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v6, v0

    move/from16 v0, p1

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v15

    .line 513
    .local v15, childWidthMeasureSpec:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_14

    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_17

    .line 516
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v28

    .line 517
    .restart local v14       #childHeight:I
    if-gez v14, :cond_15

    .line 518
    const/4 v14, 0x0

    .line 521
    :cond_15
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    .line 532
    .end local v14           #childHeight:I
    .end local v15           #childWidthMeasureSpec:I
    .end local v28           #share:I
    :cond_16
    :goto_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 533
    .restart local v22       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 534
    .restart local v26       #measuredWidth:I
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 536
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_19

    const/4 v3, 0x1

    move/from16 v24, v3

    .line 539
    .restart local v24       #matchWidthLocally:Z
    :goto_e
    if-eqz v24, :cond_1a

    move/from16 v3, v22

    :goto_f
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 542
    if-eqz v10, :cond_1b

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1b

    const/4 v3, 0x1

    move v10, v3

    .line 544
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 545
    .restart local v29       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 526
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    .end local v29           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #childWidthMeasureSpec:I
    .restart local v28       #share:I
    :cond_17
    if-lez v28, :cond_18

    move/from16 v3, v28

    :goto_11
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    goto :goto_11

    .line 536
    .end local v15           #childWidthMeasureSpec:I
    .end local v28           #share:I
    .restart local v22       #margin:I
    .restart local v26       #measuredWidth:I
    :cond_19
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_e

    .restart local v24       #matchWidthLocally:Z
    :cond_1a
    move/from16 v3, v26

    .line 539
    goto :goto_f

    .line 542
    :cond_1b
    const/4 v3, 0x0

    move v10, v3

    goto :goto_10

    .line 550
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 557
    .end local v32           #weightSum:F
    :goto_12
    if-nez v10, :cond_1d

    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_1d

    .line 558
    move/from16 v25, v11

    .line 561
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v25, v25, v3

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 566
    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 568
    if-eqz v23, :cond_1e

    .line 569
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 571
    :cond_1e
    return-void

    .line 553
    :cond_1f
    move v0, v11

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_12
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1041
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 303
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 167
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 168
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 240
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 245
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1287
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1288
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 1289
    or-int/lit8 p1, p1, 0x3

    .line 1292
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1293
    or-int/lit8 p1, p1, 0x30

    .line 1296
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1299
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1303
    and-int/lit8 v0, p1, 0x7

    .line 1304
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_0

    .line 1305
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1306
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1308
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1260
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1261
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1264
    :cond_0
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1312
    and-int/lit8 v0, p1, 0x70

    .line 1313
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1314
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1315
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1317
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 299
    return-void
.end method
