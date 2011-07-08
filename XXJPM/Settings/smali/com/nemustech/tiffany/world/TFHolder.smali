.class public abstract Lcom/nemustech/tiffany/world/TFHolder;
.super Lcom/nemustech/tiffany/world/TFObject;
.source "TFHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;,
        Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;,
        Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;,
        Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFHolder"


# instance fields
.field protected mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

.field protected mCurrentActingHolder:Lcom/nemustech/tiffany/world/TFHolder;

.field protected mDeceleration:F

.field protected mDragged:Z

.field mFacingFrontYFirst:Z

.field protected mHeadDeviation:F

.field protected mHeadItemIndex:I

.field protected mHeadModelIndex:I

.field protected mHolderBindings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

.field protected mItemCount:I

.field protected mMinorDrag:F

.field protected mModelChangeListener:Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;

.field protected mModelList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

.field protected mRequestAssociatingCount:I

.field protected mRequestLayoutCount:I

.field protected mSensitivity:F

.field protected mTOfHitPoint:F

.field protected mTouchDown:Z

.field protected mVelocity:F

.field protected mWraparound:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFObject;-><init>()V

    .line 1289
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mSensitivity:F

    .line 1290
    const v0, 0x3851b717

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDeceleration:F

    .line 20
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    .line 21
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWraparound:Z

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 26
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadItemIndex:I

    .line 27
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadModelIndex:I

    .line 29
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    .line 31
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestLayoutCount:I

    .line 32
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestAssociatingCount:I

    .line 33
    iput v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadDeviation:F

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    .line 37
    iput v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    .line 38
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDragged:Z

    .line 39
    return-void
.end method


# virtual methods
.method public addModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 543
    iput-object p0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    .line 544
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    .line 545
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iput-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 547
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder;->onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 549
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder;->setItemIndex(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 550
    return-void
.end method

.method public addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"
    .parameter "showAnimation"

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 556
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 557
    return-void
.end method

.method protected adjustItemIndex(I)I
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 476
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    if-ge p1, v0, :cond_0

    move v0, p1

    .line 487
    :goto_0
    return v0

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWraparound:Z

    if-eqz v0, :cond_3

    .line 481
    :goto_1
    if-gez p1, :cond_1

    .line 482
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 483
    :cond_1
    :goto_2
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    if-lt p1, v0, :cond_2

    .line 484
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_2
    move v0, p1

    .line 485
    goto :goto_0

    .line 487
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public applyTouchEvent(Lcom/nemustech/tiffany/world/TFModel;[FI)V
    .locals 7
    .parameter "model"
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    const/4 v6, 0x1

    .line 945
    invoke-virtual {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFHolder;->calcTouchVectorMagnitude([FI)F

    move-result v0

    .line 946
    .local v0, dx:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const-string v1, "TFHolder"

    const-string v2, "tickPassed: %d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mSensitivity:F

    mul-float/2addr v0, v1

    .line 951
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 953
    iput-boolean v6, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDragged:Z

    .line 954
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    add-float/2addr v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mVelocity:F

    .line 955
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFHolder;->moveHeadModelStep(F)Z

    .line 962
    :goto_0
    return-void

    .line 959
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    .line 960
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mVelocity:F

    goto :goto_0
.end method

.method public arrangeModels()V
    .locals 2

    .prologue
    .line 658
    const-string v0, "TFHolder"

    const-string v1, "This holder did not override \'arrangeModels()\' method!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method protected askImage(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "itemIndex"

    .prologue
    .line 392
    iput p2, p1, Lcom/nemustech/tiffany/world/TFModel;->mItemIndex:I

    .line 394
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->deleteImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    invoke-interface {v0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;->setImage(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 399
    :cond_0
    return-void
.end method

.method protected associateModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 732
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFHolder;->getItemIndexOfModel(I)I

    move-result v0

    .line 733
    .local v0, itemIndex:I
    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder;->setItemIndex(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 734
    return-void
.end method

.method public attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 5
    .parameter "world"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 49
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 50
    .local v1, m:Lcom/nemustech/tiffany/world/TFModel;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iput-object v2, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    goto :goto_0

    .line 53
    .end local v1           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    iget-object v2, p1, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v2, p0}, Lcom/nemustech/tiffany/world/TFRenderer;->add(Lcom/nemustech/tiffany/world/TFHolder;)V

    .line 54
    const-string v2, "TFHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Holder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") has been attatched"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public bindHolder(Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method protected calcIndex(IIZ)I
    .locals 3
    .parameter "baseIndex"
    .parameter "gap"
    .parameter "bEndless"

    .prologue
    .line 410
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    rem-int v1, p2, v1

    add-int v0, p1, v1

    .line 412
    .local v0, newIndex:I
    if-eqz p3, :cond_1

    .line 414
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    rem-int v0, v1, v2

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method protected calcTouchVectorMagnitude([FI)F
    .locals 7
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x4000

    .line 932
    const/4 v0, 0x4

    aget v0, p1, v0

    aget v1, p1, v6

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    aget v3, p1, v6

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400199999999999aL

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected cancelImage(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    invoke-interface {v0, p1}, Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;->cancelImage(I)V

    .line 404
    :cond_0
    return-void
.end method

.method protected changeItemIndex(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 2
    .parameter "model"
    .parameter "newItemIndex"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    .line 365
    .local v0, id:I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public clearHolderBindings()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 300
    return-void
.end method

.method public clone()Lcom/nemustech/tiffany/world/TFPlaceHolder;
    .locals 4

    .prologue
    .line 186
    new-instance v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/TFPlaceHolder;-><init>()V

    .line 188
    .local v1, newHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 190
    iget-object v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 191
    iget-object v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mAngle:[F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mShouldRotateFirst:Z

    iput-boolean v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mShouldRotateFirst:Z

    .line 195
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRotateYFirst:Z

    iput-boolean v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mRotateYFirst:Z

    .line 196
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    iput-boolean v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mFacingFrontYFirst:Z

    .line 197
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iput-object v2, v1, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 199
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder;->clone()Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-result-object v0

    return-object v0
.end method

.method protected defaultBindingBehavior(F)V
    .locals 3
    .parameter "step"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 232
    .local v0, holder:Lcom/nemustech/tiffany/world/TFHolder;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->moveHeadModelStep(FZ)Z

    goto :goto_0

    .line 234
    .end local v0           #holder:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_0
    return-void
.end method

.method public detachFrom(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 3
    .parameter "world"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFRenderer;->remove(Lcom/nemustech/tiffany/world/TFHolder;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 64
    const-string v0, "TFHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Holder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has been detatched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected diffIndex(IIZ)I
    .locals 3
    .parameter "indexA"
    .parameter "indexB"
    .parameter "bEndless"

    .prologue
    .line 426
    sub-int v0, p1, p2

    .line 428
    .local v0, gap:I
    if-eqz p3, :cond_1

    .line 430
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    rem-int v0, v1, v2

    .line 431
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    sub-int v0, v1, v0

    .line 434
    :cond_0
    if-ge p1, p2, :cond_1

    neg-int v0, v0

    .line 436
    :cond_1
    return v0
.end method

.method protected doBindingAction(FFFFI)V
    .locals 0
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    .line 371
    return-void
.end method

.method protected draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 7
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 823
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 825
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4}, Lcom/nemustech/tiffany/world/TFHolder;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    .line 827
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v4, :cond_0

    .line 828
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v4, v0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMatrix:[F

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 831
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 833
    .local v3, models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    sget-object v4, Lcom/nemustech/tiffany/world/TFObject;->compareAxisZ:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 837
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFModel;

    .line 838
    .local v2, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 839
    invoke-virtual {v2, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 840
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFModel;->checkEffectFinish()V

    .line 841
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v4, :cond_1

    .line 842
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFPlaceHolder;->checkEffectFinish()V

    .line 843
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_1

    .line 836
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFModel;
    .end local v3           #models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    :cond_2
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    .restart local v3       #models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    goto :goto_0

    .line 845
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 846
    return-void
.end method

.method protected dumpModelList()V
    .locals 8

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, i:I
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFModel;

    .line 789
    .local v2, m:Lcom/nemustech/tiffany/world/TFModel;
    const-string v3, "TFHolder"

    const-string v4, "dumpModelList: %d, %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFModel;->getItemIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    return-void
.end method

.method genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 3
    .parameter "gl"
    .parameter "bForce"

    .prologue
    .line 673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 676
    .local v1, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {v1, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v1           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    return-void
.end method

.method public getDeceleration()F
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDeceleration:F

    return v0
.end method

.method protected getDeviation(F)F
    .locals 3
    .parameter "step"

    .prologue
    const/high16 v2, 0x3f80

    .line 756
    float-to-int v1, p1

    int-to-float v1, v1

    sub-float v0, p1, v1

    .line 757
    .local v0, deviation:F
    const/high16 v1, 0x3f00

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 758
    sub-float/2addr v0, v2

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    const/high16 v1, -0x4100

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 760
    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public getEndless()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWraparound:Z

    return v0
.end method

.method public getHeadDeviation()F
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadDeviation:F

    return v0
.end method

.method public getHeadItemIndex()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadItemIndex:I

    return v0
.end method

.method public getHeadModel()Lcom/nemustech/tiffany/world/TFModel;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadModelIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFModel;

    return-object p0
.end method

.method public getHeadModelIndex()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadModelIndex:I

    return v0
.end method

.method public getHolderBindings()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    return v0
.end method

.method public getItemIndexOfModel(I)I
    .locals 3
    .parameter "modelIndex"

    .prologue
    .line 727
    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadItemIndex:I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadModelIndex:I

    sub-int v2, p1, v2

    add-int v0, v1, v2

    .line 728
    .local v0, itemIndex:I
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder;->adjustItemIndex(I)I

    move-result v1

    return v1
.end method

.method protected getItemOffset(II)I
    .locals 4
    .parameter "itemIndex1"
    .parameter "itemIndex2"

    .prologue
    .line 498
    sub-int v1, p2, p1

    .line 499
    .local v1, offset:I
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWraparound:Z

    if-eqz v2, :cond_0

    .line 500
    move v0, v1

    .line 501
    .local v0, off:I
    if-lez v1, :cond_1

    .line 502
    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    sub-int v0, v1, v2

    .line 505
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 506
    move v1, v0

    .line 508
    .end local v0           #off:I
    :cond_0
    return v1

    .line 504
    .restart local v0       #off:I
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    add-int v0, v1, v2

    goto :goto_0
.end method

.method protected getItemOffsetToHead(I)I
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 516
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadItemIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/world/TFHolder;->getItemOffset(II)I

    move-result v0

    return v0
.end method

.method public getModel(I)Lcom/nemustech/tiffany/world/TFModel;
    .locals 1
    .parameter "modelIndex"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFModel;

    return-object p0
.end method

.method public getModelByItemIndex(I)Lcom/nemustech/tiffany/world/TFModel;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 592
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 593
    .local v1, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFModel;->getItemIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 596
    .end local v1           #m:Lcom/nemustech/tiffany/world/TFModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getModelCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I
    .locals 1
    .parameter "model"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    return-object v0
.end method

.method protected getOffset(F)I
    .locals 3
    .parameter "step"

    .prologue
    const/high16 v2, 0x3f00

    .line 764
    float-to-int v1, p1

    int-to-float v1, v1

    sub-float v0, p1, v1

    .line 765
    .local v0, deviation:F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 766
    add-float/2addr p1, v2

    .line 769
    :cond_0
    :goto_0
    float-to-int v1, p1

    return v1

    .line 767
    :cond_1
    const/high16 v1, -0x4100

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 768
    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method public getSensitivity()F
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mSensitivity:F

    return v0
.end method

.method protected handleDown(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 7
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 849
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 853
    :cond_0
    iput-boolean v6, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    .line 855
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    iget-object v2, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    iget-object v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFVector3D;->getTOfPointOnLine([FI[FI[FI)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTOfHitPoint:F

    .line 860
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTOfHitPoint:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    const-string v0, "TFHolder"

    const-string v2, "INVALID POINT (%f,%f,%f)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    .line 865
    :cond_1
    return-void
.end method

.method protected handleDrag(Lcom/nemustech/tiffany/world/TFModel;FFFFI)V
    .locals 19
    .parameter "selectedModel"
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "tickPassed"

    .prologue
    .line 887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    if-lez p6, :cond_0

    .line 892
    const/4 v14, 0x0

    .line 893
    .local v14, _p1_holder:I
    const/16 v16, 0x4

    .line 894
    .local v16, _p2_holder:I
    const/16 v15, 0x8

    .line 895
    .local v15, _p1_world:I
    const/16 v17, 0xc

    .line 896
    .local v17, _p2_world:I
    const/16 v13, 0x10

    .line 897
    .local v13, _invert:I
    const/16 v5, 0x20

    new-array v4, v5, [F

    .line 898
    .local v4, p:[F
    const/16 v5, 0x8

    new-array v6, v5, [F

    .line 901
    .local v6, hitLine:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[F)V

    .line 902
    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mTOfHitPoint:F

    move v10, v0

    move-object v8, v6

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIF)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    move-object v0, v5

    move/from16 v1, p4

    move/from16 v2, p5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[F)V

    .line 905
    const/16 v5, 0xc

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mTOfHitPoint:F

    move v10, v0

    move-object v8, v6

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIF)V

    .line 909
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFHolder;->mMatrix:[F

    move-object v6, v0

    .end local v6           #hitLine:[F
    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 910
    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 911
    const/4 v8, 0x0

    const/16 v10, 0x10

    const/16 v12, 0x8

    move-object v7, v4

    move-object v9, v4

    move-object v11, v4

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 912
    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 913
    const/4 v8, 0x4

    const/16 v10, 0x10

    const/16 v12, 0xc

    move-object v7, v4

    move-object v9, v4

    move-object v11, v4

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 917
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    const/16 v5, 0x8

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 918
    aget v5, v4, v18

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 919
    const-string v5, "TFHolder"

    const-string v6, "(%f,%f,%f,%f)->(%f,%f,%f,%f), %d"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x4

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x5

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x6

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x7

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v5, "TFHolder"

    const-string v6, "(%f,%f,%f,%f)->(%f,%f,%f,%f), %d"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x8

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x9

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0xa

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0xb

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0xc

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const/16 v9, 0xd

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const/16 v9, 0xe

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const/16 v9, 0xf

    aget v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v5, "TFHolder"

    const-string v6, "TOUCH CANCELLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 917
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 928
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFHolder;->applyTouchEvent(Lcom/nemustech/tiffany/world/TFModel;[FI)V

    goto/16 :goto_0
.end method

.method protected handleUp(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 5
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 868
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    .line 869
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mVelocity:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mVelocity:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDeceleration:F

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(FF)V

    .line 881
    :cond_0
    :goto_0
    iput v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMinorDrag:F

    .line 882
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDragged:Z

    .line 883
    iput v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mVelocity:F

    .line 884
    return-void

    .line 875
    :cond_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDragged:Z

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionMode:Z

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    iget v1, v1, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->mAutoRepositionDuration:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->repositionHeadModel(I)Z

    goto :goto_0
.end method

.method public isTouchDown()Z
    .locals 1

    .prologue
    .line 1001
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mTouchDown:Z

    return v0
.end method

.method public abstract layoutModels(F)V
.end method

.method loadTextures(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 666
    .local v1, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFModel;->loadTextures(Z)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .end local v1           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    return-void
.end method

.method public moveHeadModelStep(F)Z
    .locals 1
    .parameter "step"

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder;->moveHeadModelStep(FZ)Z

    move-result v0

    return v0
.end method

.method public abstract moveHeadModelStep(FZ)Z
.end method

.method public moveToIndex(IZ)Lcom/nemustech/tiffany/world/TFError;
    .locals 1
    .parameter "itemIndex"
    .parameter "bAnimation"

    .prologue
    .line 75
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    return-object v0
.end method

.method public moveToModel(Lcom/nemustech/tiffany/world/TFModel;Z)V
    .locals 1
    .parameter "model"
    .parameter "bAnimation"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getItemIndex()I

    move-result v0

    .line 87
    .local v0, itemIndex:I
    invoke-virtual {p0, v0, p2}, Lcom/nemustech/tiffany/world/TFHolder;->moveToIndex(IZ)Lcom/nemustech/tiffany/world/TFError;

    .line 88
    return-void
.end method

.method protected abstract onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
.end method

.method onBindingAnimationEnd(Lcom/nemustech/tiffany/world/TFAnimation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFAnimation;->getSubject()Lcom/nemustech/tiffany/world/TFObject;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFHolder;->getHolderBindings()Ljava/util/LinkedList;

    move-result-object v0

    .line 258
    .local v0, holderBindings:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFHolder;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFHolder;

    .line 259
    .local v2, m:Lcom/nemustech/tiffany/world/TFHolder;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mCurrentActingHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setOriginalAutoRepositionMode()V

    goto :goto_0

    .line 263
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_1
    return-void
.end method

.method onBindingAnimationStart(Lcom/nemustech/tiffany/world/TFAnimation;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFAnimation;->getSubject()Lcom/nemustech/tiffany/world/TFObject;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 246
    .local v0, holder:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->getHolderBindings()Ljava/util/LinkedList;

    move-result-object v1

    .line 247
    .local v1, holderBindings:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFHolder;>;"
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mCurrentActingHolder:Lcom/nemustech/tiffany/world/TFHolder;

    .line 248
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFHolder;

    .line 249
    .local v3, m:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v3, v0}, Lcom/nemustech/tiffany/world/TFHolder;->setCurrentActingHolder(Lcom/nemustech/tiffany/world/TFHolder;)V

    .line 250
    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->setTempAutoRepositionMode(Z)V

    .line 251
    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->stop()V

    goto :goto_0

    .line 253
    .end local v3           #m:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_0
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 4
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 314
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 316
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/nemustech/tiffany/world/TFHolder;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    .line 318
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 320
    .local v2, models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    sget-object v3, Lcom/nemustech/tiffany/world/TFObject;->compareAxisZ:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 326
    .local v1, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 327
    invoke-virtual {v1, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 328
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFModel;->checkEffectFinish()V

    .line 329
    iget-object v3, v1, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, v1, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFPlaceHolder;->checkEffectFinish()V

    .line 331
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_1

    .line 323
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #model:Lcom/nemustech/tiffany/world/TFModel;
    .end local v2           #models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    .restart local v2       #models:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    goto :goto_0

    .line 333
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected onModelattachTo(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "index"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 304
    return-void
.end method

.method protected onModeldetachFrom(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    .line 308
    .local v0, id:I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method protected abstract onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method protected onTouchDown(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 0
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 336
    return-void
.end method

.method protected onTouchDrag(Lcom/nemustech/tiffany/world/TFModel;FFFFI)V
    .locals 6
    .parameter "selectedModel"
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mActOnDrag:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 345
    invoke-super/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFObject;->calcForce(FFFFI)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mForceFromHead:F

    .line 350
    iput v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mForceFromSide:F

    goto :goto_0
.end method

.method protected onTouchUp(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 0
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 340
    return-void
.end method

.method public removeModel(I)Lcom/nemustech/tiffany/world/TFModel;
    .locals 1
    .parameter "modelIndex"

    .prologue
    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFHolder;->removeModel(IZ)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v0

    return-object v0
.end method

.method public removeModel(IZ)Lcom/nemustech/tiffany/world/TFModel;
    .locals 2
    .parameter "modelIndex"
    .parameter "showAnimation"

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v0

    .line 565
    .local v0, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/world/TFHolder;->onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 566
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 570
    return-object v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout(Z)V

    .line 774
    return-void
.end method

.method public requestLayout(Z)V
    .locals 1
    .parameter "associating"

    .prologue
    .line 776
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestLayoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestLayoutCount:I

    .line 777
    if-eqz p1, :cond_0

    .line 778
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestAssociatingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestAssociatingCount:I

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 780
    return-void
.end method

.method protected rotateModelList(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 707
    if-gez p1, :cond_0

    .line 708
    neg-int p1, p1

    .line 709
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 710
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 711
    .local v1, model:Lcom/nemustech/tiffany/world/TFModel;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v0           #i:I
    .end local v1           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    if-lez p1, :cond_1

    .line 715
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 716
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 717
    .restart local v1       #model:Lcom/nemustech/tiffany/world/TFModel;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    .end local v0           #i:I
    .end local v1           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelChangeListener:Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;

    if-eqz v2, :cond_2

    .line 723
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelChangeListener:Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder;->getHeadItemIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;->onHeadModelChange(I)V

    .line 724
    :cond_2
    return-void
.end method

.method public abstract scrollHeadItemIndex(I)I
.end method

.method public abstract scrollHeadModelIndex(I)I
.end method

.method public setBindingBehaviorDispatcher(Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

    .line 222
    return-void
.end method

.method protected setCurrentActingHolder(Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 0
    .parameter "activeHolder"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mCurrentActingHolder:Lcom/nemustech/tiffany/world/TFHolder;

    .line 241
    return-void
.end method

.method public setDeceleration(F)V
    .locals 0
    .parameter "deceleration"

    .prologue
    .line 1018
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mDeceleration:F

    .line 1019
    return-void
.end method

.method public setEndless(Z)V
    .locals 0
    .parameter "endless"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWraparound:Z

    .line 118
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 119
    return-void
.end method

.method public setHeadDeviation(F)Z
    .locals 1
    .parameter "deviation"

    .prologue
    .line 737
    const/high16 v0, 0x3f00

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x4100

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 738
    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    .line 739
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadDeviation:F

    .line 740
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract setHeadItemIndex(IZ)V
.end method

.method public setImageProvider(Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;)V
    .locals 0
    .parameter "iProvider"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    .line 175
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .parameter "itemCount"

    .prologue
    .line 99
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mItemCount:I

    .line 100
    return-void
.end method

.method protected setItemIndex(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 2
    .parameter "model"
    .parameter "itemIndex"

    .prologue
    .line 681
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getItemIndex()I

    move-result v0

    .line 683
    .local v0, oldItemIndex:I
    invoke-virtual {p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->setItemIndex(I)V

    .line 685
    if-gez p2, :cond_1

    .line 686
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    if-eq v0, p2, :cond_0

    .line 690
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    .line 692
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->deleteAllImageResource()V

    .line 695
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mImageProvider:Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;

    invoke-interface {v1, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$ImageProvider;->setImage(Lcom/nemustech/tiffany/world/TFModel;I)V

    goto :goto_0
.end method

.method public setModelChangeListener(Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;)V
    .locals 0
    .parameter "modelChangeListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelChangeListener:Lcom/nemustech/tiffany/world/TFHolder$OnModelChangeListener;

    .line 142
    return-void
.end method

.method public setMoveAnimation(Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;)V
    .locals 0
    .parameter "moveAnimation"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    .line 1256
    return-void
.end method

.method public setSensitivity(F)V
    .locals 0
    .parameter "sensitivityValue"

    .prologue
    .line 1036
    iput p1, p0, Lcom/nemustech/tiffany/world/TFHolder;->mSensitivity:F

    .line 1037
    return-void
.end method

.method public unbindHolder(Lcom/nemustech/tiffany/world/TFHolder;)Z
    .locals 1
    .parameter "holder"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract updateLayout(I)Z
.end method

.method protected updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z
    .locals 7
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v6, 0x0

    .line 795
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    move-result v3

    .line 796
    .local v3, ret:Z
    const/4 v4, 0x0

    .line 798
    .local v4, updated:Z
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFHolder;->updateLayout(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 799
    const/4 v4, 0x1

    .line 801
    :cond_0
    iget v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestAssociatingCount:I

    if-lez v5, :cond_2

    .line 802
    const/4 v2, 0x0

    .line 803
    .local v2, modelIndex:I
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mModelList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFModel;

    .line 804
    .local v1, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->associateModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v1           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_1
    iput v6, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestAssociatingCount:I

    .line 808
    const/4 v4, 0x1

    .line 810
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #modelIndex:I
    :cond_2
    iget v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestLayoutCount:I

    if-lez v5, :cond_3

    .line 811
    iget v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mHeadDeviation:F

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFHolder;->layoutModels(F)V

    .line 812
    iput v6, p0, Lcom/nemustech/tiffany/world/TFHolder;->mRequestLayoutCount:I

    .line 813
    const/4 v4, 0x1

    .line 816
    :cond_3
    if-eqz v4, :cond_4

    .line 817
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFHolder;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 819
    :cond_4
    return v3
.end method
