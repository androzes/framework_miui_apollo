.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
.super Ljava/lang/Object;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepActionViewInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;
    }
.end annotation


# instance fields
.field mActionBarView:Landroid/view/View;

.field mActionStartReported:Z

.field mAllowLeftToRightSweep:Z

.field mAllowRightToLeftSweep:Z

.field mAnimation:Landroid/view/animation/Animation;

.field private mAnimationProgress:I

.field mChildIdForLocationHint:I

.field mEmergingDirection:I

.field mItemIndex:I

.field mStatus:I

.field mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;IILandroid/view/View;IZZI)V
    .locals 11
    .parameter
    .parameter "itemIndex"
    .parameter "status"
    .parameter "actionBarView"
    .parameter "emergingDirection"
    .parameter "allowLeftToRightSweep"
    .parameter "allowRightToLeftSweep"
    .parameter "childIdForLocationHint"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v2, -0x1

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 201
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    .line 228
    const/16 v2, 0x64

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimationProgress:I

    .line 232
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 243
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 244
    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 245
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    .line 246
    move/from16 v0, p6

    move-object v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    .line 247
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    .line 248
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    .line 249
    new-instance v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    .line 250
    return-void
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->initializeAnimation(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimationProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimationProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->onAnimationEnd()V

    return-void
.end method

.method private initializeAnimation(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 267
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 274
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 275
    return-void
.end method

.method private onAnimationEnd()V
    .locals 5

    .prologue
    .line 278
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 279
    const/4 v1, 0x4

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 281
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->addFloatingView(Landroid/view/View;)V

    .line 282
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 284
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    const/4 v2, 0x2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    invoke-static {v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;III)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 288
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 290
    .local v0, itemIndex:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 292
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 294
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-static {v1, v2, v0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;III)V

    goto :goto_0
.end method


# virtual methods
.method dump()V
    .locals 3

    .prologue
    const-string v2, "SweepActionViewInfo"

    .line 253
    const-string v0, "SweepActionViewInfo"

    const-string v0, "\t----dump begin----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmItemIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmActionBarView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmEmergingDirection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmAllowLeftToRightSweep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmAllowRightToLeftSweep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmChildIdForLocationHint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "SweepActionViewInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmAnimationProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAnimationProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "SweepActionViewInfo"

    const-string v0, "\t----dump end----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method
