.class public abstract Lcom/nemustech/tiffany/widget/TFAbsSpinner;
.super Lcom/nemustech/tiffany/widget/TFAdapterView;
.source "TFAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAbsSpinner$1;,
        Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;,
        Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nemustech/tiffany/widget/TFAdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

.field mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionLeftPadding:I

    .line 67
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionTopPadding:I

    .line 68
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionRightPadding:I

    .line 69
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionBottomPadding:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsSpinner;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    .line 83
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->initAbsSpinner()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionLeftPadding:I

    .line 67
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionTopPadding:I

    .line 68
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionRightPadding:I

    .line 69
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionBottomPadding:I

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 71
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 74
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsSpinner;)V

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    .line 92
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->initAbsSpinner()V

    .line 94
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0x101

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v3

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 99
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v3

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 102
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFAbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setFocusable(Z)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setWillNotDraw(Z)V

    .line 115
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 270
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 338
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->handleDataChanged()V

    .line 293
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 194
    .local v6, widthMode:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionLeftPadding:I

    if-le v9, v10, :cond_6

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 196
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionTopPadding:I

    if-le v9, v10, :cond_7

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 198
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionRightPadding:I

    if-le v9, v10, :cond_8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionBottomPadding:I

    if-le v9, v10, :cond_9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 203
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->handleDataChanged()V

    .line 207
    :cond_0
    const/4 v2, 0x0

    .line 208
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 209
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 211
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 212
    .local v4, selectedPosition:I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    .line 214
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 215
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 217
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 220
    :cond_1
    if-eqz v5, :cond_2

    .line 222
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 225
    :cond_2
    if-eqz v5, :cond_4

    .line 226
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 227
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mBlockLayoutRequests:Z

    .line 228
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mBlockLayoutRequests:Z

    .line 231
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 233
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 234
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 236
    const/4 v1, 0x0

    .line 240
    .end local v5           #view:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 242
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 243
    if-nez v6, :cond_5

    .line 244
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 249
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 251
    invoke-static {v2, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 252
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->resolveSize(II)I

    move-result v7

    .line 254
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setMeasuredDimension(II)V

    .line 255
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mHeightMeasureSpec:I

    .line 256
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mWidthMeasureSpec:I

    .line 257
    return-void

    .line 194
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_6
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 196
    :cond_7
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 198
    :cond_8
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 200
    :cond_9
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 459
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;

    move-object v1, v0

    .line 461
    .local v1, ss:Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 463
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 464
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataChanged:Z

    .line 465
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mNeedSync:Z

    .line 466
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSyncRowId:J

    .line 467
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->position:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSyncPosition:I

    .line 468
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSyncMode:I

    .line 469
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->requestLayout()V

    .line 471
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 446
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 447
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 448
    .local v0, ss:Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->selectedId:J

    .line 449
    iget-wide v2, v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->position:I

    .line 454
    :goto_0
    return-object v0

    .line 452
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/nemustech/tiffany/widget/TFAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 378
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 379
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 380
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 381
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildCount()I

    move-result v1

    .line 385
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 386
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 388
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 389
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 394
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 385
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 394
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildCount()I

    move-result v0

    .line 277
    .local v0, childCount:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    .line 280
    .local v3, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 281
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 282
    .local v4, v:Landroid/view/View;
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mFirstPosition:I

    add-int v2, v5, v1

    .line 283
    .local v2, index:I
    invoke-virtual {v3, v2, v4}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v2           #index:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 353
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 355
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 168
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataChanged:Z

    .line 169
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mNeedSync:Z

    .line 171
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->removeAllViewsInLayout()V

    .line 172
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldSelectedPosition:I

    .line 173
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldSelectedRowId:J

    .line 175
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setSelectedPositionInt(I)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 177
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->invalidate()V

    .line 178
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, -0x1

    .line 126
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->resetList()V

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 133
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldSelectedPosition:I

    .line 134
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldSelectedRowId:J

    .line 136
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 137
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldItemCount:I

    .line 138
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    .line 139
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->checkFocus()V

    .line 141
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 142
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    .line 146
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setSelectedPositionInt(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 149
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mItemCount:I

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->checkSelectionChanged()V

    .line 161
    .end local v0           #position:I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->requestLayout()V

    .line 162
    return-void

    :cond_2
    move v0, v3

    .line 144
    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->checkFocus()V

    .line 156
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->resetList()V

    .line 158
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 311
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->requestLayout()V

    .line 312
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->invalidate()V

    .line 313
    return-void
.end method

.method public setSelection(IZ)V
    .locals 4
    .parameter "position"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    .line 302
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt p1, v1, :cond_0

    move v0, v3

    .line 304
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setSelectionInt(IZ)V

    .line 305
    return-void

    .line 302
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 324
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mBlockLayoutRequests:Z

    .line 326
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 327
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 328
    invoke-virtual {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->layout(IZ)V

    .line 329
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->mBlockLayoutRequests:Z

    .line 331
    .end local v0           #delta:I
    :cond_0
    return-void
.end method
