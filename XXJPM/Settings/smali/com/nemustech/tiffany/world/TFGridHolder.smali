.class public abstract Lcom/nemustech/tiffany/world/TFGridHolder;
.super Lcom/nemustech/tiffany/world/TFHolder;
.source "TFGridHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected mDirection:I

.field protected mGroupHeight:F

.field protected mGroupSize:I

.field protected mGroupSpace:F

.field protected mItemSpace:F

.field protected mItemWidth:F

.field protected mMarginBottom:F

.field protected mMarginLeft:F

.field protected mMarginRight:F

.field protected mMarginTop:F

.field protected mScrollEndIndexOffset:I

.field protected mScrollStartIndexOffset:I

.field protected mViewHeight:F

.field protected mViewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    const-string v0, "TFGridHolder"

    sput-object v0, Lcom/nemustech/tiffany/world/TFGridHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const v1, 0x3dcccccd

    .line 8
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFHolder;-><init>()V

    .line 9
    new-instance v0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;

    invoke-direct {v0, p0, p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;-><init>(Lcom/nemustech/tiffany/world/TFGridHolder;Lcom/nemustech/tiffany/world/TFGridHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    .line 11
    iput v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginLeft:F

    .line 12
    iput v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginRight:F

    .line 13
    iput v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginTop:F

    .line 14
    iput v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginBottom:F

    .line 15
    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupHeight:F

    .line 16
    iput v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSpace:F

    .line 17
    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemWidth:F

    .line 18
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemSpace:F

    .line 19
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/nemustech/tiffany/world/TFGridHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public calcGroupCount(I)I
    .locals 2
    .parameter "itemCount"

    .prologue
    const/4 v1, 0x1

    .line 36
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 38
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFGridHolder;->calcGroupCount(I)I

    move-result v0

    return v0
.end method

.method protected getGroupPosition(I)F
    .locals 3
    .parameter "group"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, p:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginTop:F

    add-float/2addr v0, v1

    .line 79
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupHeight:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSpace:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 80
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 81
    return v0
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    return v0
.end method

.method protected getGroupSpace(I)F
    .locals 4
    .parameter "groupCount"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, p:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mViewHeight:F

    .line 64
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginTop:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginBottom:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupHeight:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 65
    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 66
    return v0
.end method

.method protected getItemPosition(I)F
    .locals 3
    .parameter "itemInGroup"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, p:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginLeft:F

    add-float/2addr v0, v1

    .line 87
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemWidth:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemSpace:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 88
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 89
    return v0
.end method

.method protected getItemSpace(I)F
    .locals 4
    .parameter "groupSize"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, p:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mViewWidth:F

    .line 71
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginLeft:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginRight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemWidth:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 72
    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 73
    return v0
.end method

.method public getMoveAnimation()Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;
    .locals 0

    .prologue
    .line 93
    iget-object p0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;

    return-object p0
.end method

.method public bridge synthetic getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected getViewHeight(I)F
    .locals 3
    .parameter "groupCount"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, p:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginTop:F

    add-float/2addr v0, v1

    .line 50
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupHeight:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSpace:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSpace:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 51
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginBottom:F

    add-float/2addr v0, v1

    .line 52
    return v0
.end method

.method protected getViewWidth(I)F
    .locals 3
    .parameter "groupSize"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, p:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginLeft:F

    add-float/2addr v0, v1

    .line 57
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemWidth:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemSpace:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemSpace:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 58
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMarginRight:F

    add-float/2addr v0, v1

    .line 59
    return v0
.end method

.method protected indexToGroup(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 42
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 44
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    div-int v0, p1, v0

    goto :goto_0
.end method

.method public layoutModels(F)V
    .locals 20
    .parameter "headDeviation"

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getItemCount()I

    move-result v11

    .line 150
    .local v11, itemCount:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v12

    .line 151
    .local v12, itemGroupCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getModelCount()I

    move-result v15

    .line 152
    .local v15, modelCount:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->calcGroupCount(I)I

    move-result v16

    .line 153
    .local v16, modelGroupCount:I
    move/from16 v0, p1

    float-to-int v0, v0

    move v2, v0

    int-to-float v2, v2

    sub-float v19, p1, v2

    .line 156
    .local v19, t:F
    const/4 v7, 0x0

    .line 158
    .local v7, z:F
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getViewHeight(I)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFGridHolder;->mViewHeight:F

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getViewWidth(I)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFGridHolder;->mViewWidth:F

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupPosition(I)F

    move-result v9

    .line 164
    .local v9, headY:F
    const/4 v14, 0x0

    .local v14, j:I
    :goto_0
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    move v2, v0

    mul-int v4, v14, v2

    .line 166
    .local v4, modelIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadModelIndex:I

    move v3, v0

    sub-int v3, v4, v3

    add-int v13, v2, v3

    .line 167
    .local v13, itemIndex:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v8

    .line 170
    .local v8, group:I
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 171
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupPosition(I)F

    move-result v17

    .line 172
    .local v17, p1:F
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupPosition(I)F

    move-result v18

    .line 173
    .local v18, p2:F
    const/high16 v2, 0x3f80

    move/from16 v0, v19

    neg-float v0, v0

    move v3, v0

    sub-float/2addr v2, v3

    mul-float v2, v2, v17

    move/from16 v0, v19

    neg-float v0, v0

    move v3, v0

    mul-float v3, v3, v18

    add-float v6, v2, v3

    .line 180
    .local v6, y:F
    :goto_1
    sub-float/2addr v6, v9

    .line 182
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    move v2, v0

    if-ge v10, v2, :cond_0

    .line 183
    if-lt v4, v15, :cond_2

    .line 164
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 176
    .end local v6           #y:F
    .end local v10           #i:I
    .end local v17           #p1:F
    .end local v18           #p2:F
    :cond_1
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupPosition(I)F

    move-result v17

    .line 177
    .restart local v17       #p1:F
    const/4 v2, 0x1

    sub-int v2, v8, v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupPosition(I)F

    move-result v18

    .line 178
    .restart local v18       #p2:F
    const/high16 v2, 0x3f80

    sub-float v2, v2, v19

    mul-float v2, v2, v17

    mul-float v3, v19, v18

    add-float v6, v2, v3

    .restart local v6       #y:F
    goto :goto_1

    .line 186
    .restart local v10       #i:I
    :cond_2
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v3

    .line 187
    .local v3, model:Lcom/nemustech/tiffany/world/TFModel;
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getItemPosition(I)F

    move-result v5

    .local v5, x:F
    move-object/from16 v2, p0

    .line 188
    invoke-virtual/range {v2 .. v7}, Lcom/nemustech/tiffany/world/TFGridHolder;->locateModel(Lcom/nemustech/tiffany/world/TFModel;IFFF)V

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 182
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 193
    .end local v3           #model:Lcom/nemustech/tiffany/world/TFModel;
    .end local v4           #modelIndex:I
    .end local v5           #x:F
    .end local v6           #y:F
    .end local v8           #group:I
    .end local v10           #i:I
    .end local v13           #itemIndex:I
    .end local v17           #p1:F
    .end local v18           #p2:F
    :cond_3
    return-void
.end method

.method protected abstract locateModel(Lcom/nemustech/tiffany/world/TFModel;IFFF)V
.end method

.method public moveHeadModelStep(FZ)Z
    .locals 8
    .parameter "step"
    .parameter "bindingAction"

    .prologue
    const/4 v7, 0x0

    .line 242
    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadDeviation:F

    add-float/2addr p1, v5

    .line 243
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getDeviation(F)F

    move-result v1

    .line 244
    .local v1, deviation:F
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFGridHolder;->getOffset(F)I

    move-result v4

    .line 246
    .local v4, offset:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getHeadItemIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v2

    .line 247
    .local v2, head:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupCount()I

    move-result v0

    .line 249
    .local v0, count:I
    iget-boolean v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mWraparound:Z

    if-nez v5, :cond_1

    add-int v5, v2, v4

    if-ge v5, v0, :cond_0

    add-int v5, v2, v4

    if-gez v5, :cond_1

    :cond_0
    move v5, v7

    .line 269
    :goto_0
    return v5

    .line 252
    :cond_1
    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFGridHolder;->scrollHeadItemIndex(I)I

    move-result v3

    .line 253
    .local v3, moved:I
    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    mul-int/2addr v5, v4

    if-ne v5, v3, :cond_3

    .line 254
    iput v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadDeviation:F

    .line 261
    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    .line 262
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

    if-eqz v5, :cond_4

    .line 263
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

    invoke-interface {v5, p1}, Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;->bindingBehavior(F)V

    .line 268
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->requestLayout()V

    .line 269
    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    mul-int/2addr v5, v4

    if-ne v5, v3, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    .line 257
    :cond_3
    const v5, 0x3ee66666

    mul-float/2addr v5, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadDeviation:F

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFGridHolder;->defaultBindingBehavior(F)V

    goto :goto_2

    :cond_5
    move v5, v7

    .line 269
    goto :goto_0
.end method

.method public scrollHeadItemIndex(I)I
    .locals 7
    .parameter "offset"

    .prologue
    .line 200
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    .line 201
    .local v0, headIndex:I
    const/4 v2, 0x0

    .line 203
    .local v2, itemIndexLimit:I
    if-gez p1, :cond_1

    .line 205
    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollStartIndexOffset:I

    neg-int v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    mul-int v2, v4, v5

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    neg-int v4, p1

    if-ge v1, v4, :cond_4

    .line 208
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFGridHolder;->adjustItemIndex(I)I

    move-result v3

    .line 209
    .local v3, newIndex:I
    if-ge v3, v2, :cond_0

    .line 210
    neg-int v4, v1

    .line 233
    .end local v3           #newIndex:I
    :goto_1
    return v4

    .line 212
    .restart local v3       #newIndex:I
    :cond_0
    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    .line 213
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFGridHolder;->rotateModelList(I)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1           #i:I
    .end local v3           #newIndex:I
    :cond_1
    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemCount:I

    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollEndIndexOffset:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    mul-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 221
    sget-object v4, Lcom/nemustech/tiffany/world/TFGridHolder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item index limit is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mItemCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 223
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFGridHolder;->adjustItemIndex(I)I

    move-result v3

    .line 224
    .restart local v3       #newIndex:I
    if-ltz v3, :cond_2

    if-le v3, v2, :cond_3

    :cond_2
    move v4, v1

    .line 225
    goto :goto_1

    .line 227
    :cond_3
    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    .line 228
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFGridHolder;->rotateModelList(I)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3           #newIndex:I
    :cond_4
    move v4, p1

    .line 233
    goto :goto_1
.end method

.method public scrollHeadModelIndex(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public setEndless(Z)V
    .locals 2
    .parameter "endless"

    .prologue
    .line 129
    sget-object v0, Lcom/nemustech/tiffany/world/TFGridHolder;->TAG:Ljava/lang/String;

    const-string v1, "Endless mode is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder;->setEndless(Z)V

    .line 131
    return-void
.end method

.method public setGroupSize(I)V
    .locals 1
    .parameter "groupSize"

    .prologue
    .line 22
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mGroupSize:I

    goto :goto_0
.end method

.method public setHeadGroupIndex(IZ)V
    .locals 2
    .parameter "groupIndex"
    .parameter "showAnimation"

    .prologue
    .line 97
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v1

    sub-int v0, p1, v1

    .line 98
    .local v0, groupOffset:I
    if-eqz p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(I)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFGridHolder;->scrollHeadItemIndex(I)I

    .line 102
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->requestLayout()V

    goto :goto_0
.end method

.method public setHeadItemIndex(IZ)V
    .locals 4
    .parameter "itemIndex"
    .parameter "showAnimation"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 108
    .local v0, groupOffset:I
    sget-object v1, Lcom/nemustech/tiffany/world/TFGridHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "head groupOffset is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(I)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFGridHolder;->scrollHeadItemIndex(I)I

    .line 114
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->requestLayout()V

    goto :goto_0
.end method

.method public setScrollLimitOffset(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 278
    iput p1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollStartIndexOffset:I

    .line 279
    iput p2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollEndIndexOffset:I

    .line 280
    return-void
.end method

.method public updateLayout(I)Z
    .locals 6
    .parameter "tickPassed"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, updated:Z
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollStartIndexOffset:I

    neg-int v2, v2

    if-ge v1, v2, :cond_2

    .line 139
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollStartIndexOffset:I

    neg-int v1, v1

    invoke-virtual {p0, v1, v4}, Lcom/nemustech/tiffany/world/TFGridHolder;->setHeadGroupIndex(IZ)V

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 145
    :cond_1
    return v0

    .line 140
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder;->indexToGroup(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupCount()I

    move-result v2

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollEndIndexOffset:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;->getGroupCount()I

    move-result v1

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/nemustech/tiffany/world/TFGridHolder;->mScrollEndIndexOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v4}, Lcom/nemustech/tiffany/world/TFGridHolder;->setHeadGroupIndex(IZ)V

    goto :goto_0
.end method
