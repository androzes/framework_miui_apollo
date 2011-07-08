.class final Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;
.super Ljava/lang/Object;
.source "SGS2LockScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SGS2LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private mCase:I

.field private mCount:I

.field private mPosition:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;III)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "Count"
    .parameter "Case"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput p2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    .line 403
    iput p3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    .line 404
    iput p4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCase:I

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;IIILcom/android/internal/policy/impl/SGS2LockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 396
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreen;III)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 412
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, Animation:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    .line 416
    .local v1, Dest:I
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCase:I

    if-nez v2, :cond_2

    .line 417
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 418
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    sub-int v1, v2, v6

    .line 419
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v2, v2

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 420
    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    .line 440
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    .line 441
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 442
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 443
    new-instance v2, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    iget v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    iget v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCase:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreen;III)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    .end local v1           #Dest:I
    :cond_0
    return-void

    .line 422
    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    .restart local v1       #Dest:I
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 424
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCase:I

    if-ne v2, v5, :cond_4

    .line 425
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_3

    .line 426
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    sub-int v1, v2, v6

    .line 427
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 428
    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    goto :goto_0

    .line 430
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 432
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mCount:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_5

    .line 433
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    sub-int v1, v2, v6

    .line 434
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v2, v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 435
    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    iput v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    goto :goto_0

    .line 437
    :cond_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #Animation:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$DisplayNextView;->mPosition:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #Animation:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 452
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 408
    return-void
.end method
