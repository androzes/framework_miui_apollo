.class Lcom/android/internal/policy/impl/FascinateLockScreen$1;
.super Ljava/lang/Object;
.source "FascinateLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/FascinateLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FascinateLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 492
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 493
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 494
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    .line 564
    :goto_0
    return v2

    .line 499
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 500
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 501
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$400(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$302(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 502
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$400(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$502(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 504
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$600(Lcom/android/internal/policy/impl/FascinateLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v7

    .line 564
    goto :goto_0

    .line 508
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$700(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x10803b7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 509
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$802(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 510
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$902(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 511
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$800(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1002(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$900(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1102(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    goto :goto_1

    .line 516
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1202(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 517
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1402(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 518
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1600(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1600(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1700(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1700(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 524
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$202(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 525
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->forceLayout()V

    .line 526
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1800(Lcom/android/internal/policy/impl/FascinateLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 528
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1902(Lcom/android/internal/policy/impl/FascinateLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 530
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/FascinateLockScreen$1$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FascinateLockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/FascinateLockScreen$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 542
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$100(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2000(Lcom/android/internal/policy/impl/FascinateLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2002(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 549
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->setSoundEffect(I)V

    .line 550
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1000(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1100(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->moveTo(II)V

    goto/16 :goto_1

    .line 559
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$700(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x10803b7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 560
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2002(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 561
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$800(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$900(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen$1;->moveTo(II)V

    goto/16 :goto_1

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
