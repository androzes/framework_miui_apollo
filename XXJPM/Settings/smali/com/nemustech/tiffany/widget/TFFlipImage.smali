.class public Lcom/nemustech/tiffany/widget/TFFlipImage;
.super Landroid/widget/FrameLayout;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$ArrayTFFlipImageAdapter;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;,
        Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;
    }
.end annotation


# static fields
.field private static final FLIP_ANIMATION_DURATION:I = 0x12c

.field private static final FLIP_BEFORE:I = 0x1

.field private static final FLIP_BEFORE_WAITING:I = 0x3

.field private static final FLIP_NEXT:I = 0x0

.field private static final FLIP_NEXT_WAITING:I = 0x2

.field private static final ID_BOTTOM:I = 0x20000000

.field private static final ID_TOP:I = 0x10000000

.field private static final TAG:Ljava/lang/String; = "TFFlipImage"


# instance fields
.field protected mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

.field private mAnimationDuration:I

.field private mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

.field private mBackFrame:Landroid/widget/LinearLayout;

.field private mCurrentPosition:I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFlipDirectionBefore:I

.field private mFrontFrame:Landroid/widget/LinearLayout;

.field private mItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemCount:I

.field private mOnAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    .line 797
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlipImage$5;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFFlipImage$5;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 109
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFFlipImage;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFFlipImage;->feedFrame(ZZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/nemustech/tiffany/widget/TFFlipImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mOnAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->doFlipNextAnimation()V

    return-void
.end method

.method static synthetic access$402(Lcom/nemustech/tiffany/widget/TFFlipImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFlipDirectionBefore:I

    return p1
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->doFlipBeforeAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFFlipImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->onDataChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->onDataInvalidated()V

    return-void
.end method

.method private createBackFrame()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 166
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 167
    .local v4, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v3, common:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, backFrame:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/content/Context;Z)V

    .line 175
    .local v2, backFrameTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setId(I)V

    .line 177
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    invoke-direct {v1, p0, v4, v6}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/content/Context;Z)V

    .line 178
    .local v1, backFrameBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v5, 0x2000

    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setId(I)V

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    .line 184
    return-void
.end method

.method private createFrontFrame()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 145
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 146
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v0, common:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v2, frontFrame:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    new-instance v4, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/content/Context;Z)V

    .line 154
    .local v4, frontFrameTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setId(I)V

    .line 156
    new-instance v3, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    invoke-direct {v3, p0, v1, v6}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/content/Context;Z)V

    .line 157
    .local v3, frontFrameBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v5, 0x2000

    invoke-virtual {v3, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setId(I)V

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    .line 163
    return-void
.end method

.method private doFlipBeforeAnimation()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 452
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    .line 453
    .local v6, adapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;
    if-nez v6, :cond_0

    .line 522
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    .line 456
    .local v10, front:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    .line 458
    .local v8, back:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    const/high16 v1, 0x1000

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 461
    .local v11, frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v1, 0x2000

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 463
    .local v2, frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    if-eqz v11, :cond_1

    if-nez v2, :cond_2

    .line 464
    :cond_1
    const-string v1, "TFFlipImage"

    const-string v3, "Animation target views at doFlipNextAnimation() are null."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    if-lez v1, :cond_7

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    div-int/lit8 v1, v1, 0x2

    move v4, v1

    .line 470
    .local v4, duration:I
    :goto_1
    const/4 v7, 0x0

    .line 471
    .local v7, aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    new-instance v7, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;

    .end local v7           #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    invoke-direct {v7, p0, v11, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;II)V

    .line 475
    .restart local v7       #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    if-eqz v7, :cond_3

    .line 476
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlipImage$3;

    invoke-direct {v1, p0, v11}, Lcom/nemustech/tiffany/widget/TFFlipImage$3;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;)V

    invoke-virtual {v7, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 493
    :cond_3
    const/4 v0, 0x0

    .line 494
    .local v0, aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;

    .end local v0           #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;III)V

    .line 499
    .restart local v0       #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    if-eqz v0, :cond_4

    .line 500
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    invoke-interface {v6, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 501
    .local v9, currentDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlipImage$4;

    invoke-direct {v1, p0, v11, v2, v9}, Lcom/nemustech/tiffany/widget/TFFlipImage$4;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 518
    .end local v9           #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v7, :cond_5

    .line 519
    :cond_5
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v1, v7}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->post(Ljava/lang/Runnable;)Z

    .line 520
    if-eqz v0, :cond_6

    .line 521
    :cond_6
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    .end local v4           #duration:I
    .end local v7           #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    :cond_7
    move v4, v3

    .line 468
    goto :goto_1
.end method

.method private doFlipNextAnimation()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    .line 382
    .local v6, adapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;
    if-nez v6, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    .line 385
    .local v10, front:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    .line 387
    .local v8, back:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    const/high16 v1, 0x1000

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 390
    .local v11, frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v1, 0x2000

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 392
    .local v2, frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    if-eqz v11, :cond_2

    if-nez v2, :cond_3

    .line 393
    :cond_2
    const-string v1, "TFFlipImage"

    const-string v3, "Animation target views at doFlipNextAnimation() are null."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    if-lez v1, :cond_7

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    div-int/lit8 v1, v1, 0x2

    move v4, v1

    .line 399
    .local v4, duration:I
    :goto_1
    const/4 v7, 0x0

    .line 400
    .local v7, aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    new-instance v7, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;

    .end local v7           #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    invoke-direct {v7, p0, v11, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;II)V

    .line 404
    .restart local v7       #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    if-eqz v7, :cond_4

    .line 405
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlipImage$1;

    invoke-direct {v1, p0, v11}, Lcom/nemustech/tiffany/widget/TFFlipImage$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;)V

    invoke-virtual {v7, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    :cond_4
    const/4 v0, 0x0

    .line 421
    .local v0, aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;

    .end local v0           #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;III)V

    .line 426
    .restart local v0       #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    if-eqz v0, :cond_5

    .line 427
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    invoke-interface {v6, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 428
    .local v9, currentDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlipImage$2;

    invoke-direct {v1, p0, v11, v2, v9}, Lcom/nemustech/tiffany/widget/TFFlipImage$2;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    .end local v9           #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v7, :cond_6

    .line 446
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v1, v7}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_6
    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #aniBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    .end local v4           #duration:I
    .end local v7           #aniTop:Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
    :cond_7
    move v4, v3

    .line 397
    goto :goto_1
.end method

.method private feedFrame(ZZ)V
    .locals 14
    .parameter "countBack"
    .parameter "hideBackFrame"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    .line 270
    .local v0, adapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    .line 271
    .local v9, itemCount:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 273
    .local v4, current:I
    if-eqz v0, :cond_0

    if-gtz v9, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    .line 276
    .local v6, front:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    .line 278
    .local v1, back:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_2

    if-nez v1, :cond_3

    .line 279
    :cond_2
    const-string v12, "TFFlipImage"

    const-string v13, "basic frame on feed is null."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_3
    const/high16 v12, 0x1000

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 284
    .local v8, frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v12, 0x2000

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 285
    .local v7, frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v12, 0x1000

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 286
    .local v3, backTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    const/high16 v12, 0x2000

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 288
    .local v2, backBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    if-nez v2, :cond_5

    .line 290
    :cond_4
    const-string v12, "TFFlipImage"

    const-string v13, "inner item on feed is null."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_5
    const/4 v10, 0x0

    .line 295
    .local v10, next:I
    if-eqz p1, :cond_7

    .line 296
    if-gtz v4, :cond_6

    const/4 v12, 0x1

    sub-int v12, v9, v12

    move v10, v12

    .line 301
    :goto_1
    invoke-interface {v0, v10}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 302
    .local v11, nextDrawable:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 304
    .local v5, currentDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v11}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameImage(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {v2, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameImage(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {v8, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameImage(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {v7, v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameImage(Landroid/graphics/drawable/Drawable;)V

    .line 309
    if-eqz p2, :cond_9

    .line 310
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 296
    .end local v5           #currentDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #nextDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v12, 0x1

    sub-int v12, v4, v12

    move v10, v12

    goto :goto_1

    .line 298
    :cond_7
    const/4 v12, 0x1

    sub-int v12, v9, v12

    if-lt v4, v12, :cond_8

    const/4 v12, 0x0

    move v10, v12

    :goto_2
    goto :goto_1

    :cond_8
    add-int/lit8 v12, v4, 0x1

    move v10, v12

    goto :goto_2

    .line 312
    .restart local v5       #currentDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v11       #nextDrawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->getChildCount()I

    move-result v0

    .line 124
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->removeAllViews()V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->createFrontFrame()V

    .line 129
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->createBackFrame()V

    .line 131
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 133
    :cond_1
    const-string v1, "TFFlipImage"

    const-string v2, "basic frame inflate on initialize failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->setItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage;->feedFrame(ZZ)V

    .line 140
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->addView(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onDataChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    .line 814
    :goto_0
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 815
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->init()V

    .line 816
    return-void

    .line 811
    :cond_0
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    goto :goto_0
.end method

.method private onDataInvalidated()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->onDataChanged()V

    .line 820
    return-void
.end method


# virtual methods
.method public flipToNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 321
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    .line 322
    .local v0, itemCount:I
    if-gtz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mOnAnimation:Z

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 327
    :cond_1
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mOnAnimation:Z

    .line 329
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFlipDirectionBefore:I

    if-ne v1, v2, :cond_2

    .line 330
    invoke-direct {p0, v3, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage;->feedFrame(ZZ)V

    .line 332
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    sub-int v2, v0, v2

    if-lt v1, v2, :cond_3

    .line 333
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 335
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    goto :goto_1
.end method

.method public flipToPosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 374
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Sorry. Not yet implemented."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 376
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    return-void
.end method

.method public flipToPrev()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 346
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    .line 347
    .local v0, itemCount:I
    if-gtz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mOnAnimation:Z

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 352
    :cond_1
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mOnAnimation:Z

    .line 354
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFlipDirectionBefore:I

    if-nez v1, :cond_2

    .line 355
    invoke-direct {p0, v3, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage;->feedFrame(ZZ)V

    .line 357
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    if-gtz v1, :cond_3

    .line 358
    sub-int v1, v0, v3

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 362
    :goto_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 360
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    goto :goto_1
.end method

.method public getAdapter()Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    return-object v0
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    return v0
.end method

.method public getItemPosition()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationHandler:Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->removeMessages(I)V

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 120
    return-void
.end method

.method public setAdapter(Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 833
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    .line 835
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 839
    :cond_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->onDataChanged()V

    .line 840
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 219
    if-gez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAnimationDuration:I

    .line 224
    return-void
.end method

.method public setItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "d"

    .prologue
    const/high16 v6, 0x2000

    const/high16 v5, 0x1000

    .line 250
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 253
    .local v3, frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mFrontFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 254
    .local v2, frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 255
    .local v1, backTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mBackFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    .line 257
    .local v0, backBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    const-string v4, "TFFlipImage"

    const-string v5, "basic frame on setItemBackgroundDrawable() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {v3, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v2, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->setItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-void
.end method

.method public setItemPosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mAdapter:Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mItemCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 196
    :cond_2
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage;->mCurrentPosition:I

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->feedFrame(ZZ)V

    goto :goto_0
.end method
