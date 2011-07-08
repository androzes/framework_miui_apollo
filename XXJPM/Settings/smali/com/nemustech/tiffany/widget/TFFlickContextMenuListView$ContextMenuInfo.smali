.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
.super Ljava/lang/Object;
.source "TFFlickContextMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;
    }
.end annotation


# instance fields
.field private mAnimationProgress:I

.field mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

.field mContextMenuItemIndex:I

.field mContextMenuStatus:I

.field mContextMenuView:Landroid/view/View;

.field mEmergingAnimation:Landroid/view/animation/Animation;

.field mWithdrawingAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;IILandroid/view/View;)V
    .locals 2
    .parameter
    .parameter "itemIndex"
    .parameter "status"
    .parameter "contextMenuView"

    .prologue
    const/4 v1, 0x0

    .line 168
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 149
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 161
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mAnimationProgress:I

    .line 169
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 170
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 171
    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 172
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mAnimationProgress:I

    .line 173
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    .line 174
    return-void
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->makeAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->initializeAnimation(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mAnimationProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mAnimationProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->onAnimationEnd()V

    return-void
.end method

.method private initializeAnimation(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x0

    .line 254
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 255
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 262
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 263
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 268
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 271
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 272
    .local v0, i:Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 273
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 274
    return-void
.end method

.method private makeAnimation(IZ)V
    .locals 10
    .parameter "effectType"
    .parameter "swap"

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 246
    :goto_0
    if-eqz p2, :cond_0

    .line 247
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 248
    .local v9, t:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 249
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 251
    .end local v9           #t:Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 188
    :pswitch_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 190
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 195
    :pswitch_1
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 197
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 202
    :pswitch_2
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 204
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 209
    :pswitch_3
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 211
    new-instance v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;-><init>(I)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 216
    :pswitch_4
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

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 222
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

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 231
    :pswitch_5
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

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 237
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

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onAnimationEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v1, v4, :cond_1

    .line 278
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 279
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->addFloatingView(Landroid/view/View;)V

    .line 281
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    invoke-static {v1, v4, v3, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;ZZI)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 284
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 286
    .local v0, itemIndex:I
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 288
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 290
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v1, v3, v3, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;ZZI)V

    goto :goto_0
.end method


# virtual methods
.method dump()V
    .locals 3

    .prologue
    const-string v2, "ContextMenuInfo"

    .line 177
    const-string v0, "ContextMenuInfo"

    const-string v0, "\t----dump begin----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuItemIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmContextMenuView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "ContextMenuInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmAnimationProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mAnimationProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "ContextMenuInfo"

    const-string v0, "\t----dump end----"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method
