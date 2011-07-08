.class Lcom/android/internal/policy/impl/FascinateLockScreen$3;
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
    .line 657
    iput-object p1, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 653
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 654
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 655
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 658
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    .line 726
    :goto_0
    return v2

    .line 660
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 661
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 662
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$400(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$302(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 663
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$400(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$502(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 665
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$600(Lcom/android/internal/policy/impl/FascinateLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 667
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v7

    .line 726
    goto :goto_0

    .line 669
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$700(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x1080589

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 670
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$802(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 671
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$902(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 672
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$800(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1002(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 673
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$900(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1102(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    goto :goto_1

    .line 677
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1202(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 678
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1402(Lcom/android/internal/policy/impl/FascinateLockScreen;I)I

    .line 679
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1600(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1600(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1700(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1700(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$202(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 686
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->forceLayout()V

    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2300(Lcom/android/internal/policy/impl/FascinateLockScreen;)V

    .line 690
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$300(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1200(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$500(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1400(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1902(Lcom/android/internal/policy/impl/FascinateLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 691
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 692
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 693
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/FascinateLockScreen$3$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/FascinateLockScreen$3$1;-><init>(Lcom/android/internal/policy/impl/FascinateLockScreen$3;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 704
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2200(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1900(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 708
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2000(Lcom/android/internal/policy/impl/FascinateLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2002(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->setSoundEffect(I)V

    .line 712
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 717
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1000(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$1100(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 721
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$700(Lcom/android/internal/policy/impl/FascinateLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x10803b7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 722
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2002(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 723
    iget-object v2, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$800(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$900(Lcom/android/internal/policy/impl/FascinateLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/FascinateLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
