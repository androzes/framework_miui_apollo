.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
.super Ljava/lang/Object;
.source "TFFlickContextMenuExListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;
    }
.end annotation


# instance fields
.field private mAnimationProgress:I

.field mChildIdForLocationHint:I

.field mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

.field mContextMenuItemIndex:I

.field mContextMenuStatus:I

.field mContextMenuView:Landroid/view/View;

.field mEmergingAnimation:Landroid/view/animation/Animation;

.field mEmergingDirection:I

.field mWithdrawingAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;IILandroid/view/View;II)V
    .locals 2
    .parameter
    .parameter "itemIndex"
    .parameter "status"
    .parameter "contextMenuView"
    .parameter "emergingDirection"
    .parameter "childIdForLocationHint"

    .prologue
    const/4 v1, 0x0

    .line 202
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 176
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 195
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mAnimationProgress:I

    .line 203
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 204
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 205
    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 206
    iput p5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    .line 207
    iput p6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    .line 208
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mAnimationProgress:I

    .line 209
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    .line 210
    return-void
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->makeAnimation(IIZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->initializeAnimation(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mAnimationProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mAnimationProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->onAnimationEnd()V

    return-void
.end method

.method private initializeAnimation(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x0

    .line 277
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 278
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 285
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 286
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 294
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 295
    .local v0, i:Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    return-void
.end method

.method private makeAnimation(IIZ)V
    .locals 10
    .parameter "effectType"
    .parameter "directionType"
    .parameter "swap"

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 239
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 240
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 246
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 269
    :goto_0
    if-eqz p3, :cond_0

    .line 270
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 271
    .local v9, t:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 272
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 274
    .end local v9           #t:Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 224
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 225
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 227
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 232
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 253
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x4080

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 259
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onAnimationEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v1, v5, :cond_1

    .line 301
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 302
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->addFloatingView(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-static {v1, v5, v4, v2, v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;ZZII)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 307
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 309
    .local v0, itemIndex:I
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 311
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 313
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 315
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-static {v1, v4, v4, v0, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;ZZII)V

    goto :goto_0
.end method


# virtual methods
.method dump()V
    .locals 3

    .prologue
    const-string v2, "ContextMenuInfo"

    .line 213
    const-string v0, "ContextMenuInfo"

    const-string v0, "\t----dump begin----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuItemIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmAnimationProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mAnimationProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "ContextMenuInfo"

    const-string v0, "\t----dump end----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method
