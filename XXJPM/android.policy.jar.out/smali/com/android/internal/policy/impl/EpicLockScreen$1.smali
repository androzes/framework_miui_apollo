.class Lcom/android/internal/policy/impl/EpicLockScreen$1;
.super Ljava/lang/Object;
.source "EpicLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/EpicLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EpicLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EpicLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 559
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 560
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 561
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v5, "EpicLockScreen"

    .line 564
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 565
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 566
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$300(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/EpicUnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/EpicUnlockClock;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$202(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 567
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$300(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/EpicUnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/EpicUnlockClock;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$502(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 568
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$300(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/EpicUnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/EpicUnlockClock;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x8a

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$702(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$900(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$802(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 571
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 573
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 836
    :cond_0
    :goto_0
    return v9

    .line 576
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1100(Lcom/android/internal/policy/impl/EpicLockScreen;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es_US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1200(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x10803ff

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 581
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080402

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1302(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1402(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1502(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 586
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1602(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    goto :goto_0

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1200(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x10803fe

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 590
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1702(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 591
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1802(Lcom/android/internal/policy/impl/EpicLockScreen;I)I

    .line 592
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1700(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 593
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 596
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 597
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 598
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 600
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2100(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 604
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-nez v2, :cond_7

    .line 605
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1700(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 606
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 607
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 610
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-lez v2, :cond_5

    .line 611
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and One event Missed Call"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 617
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 618
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 619
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 613
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-lez v2, :cond_4

    .line 614
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and One event Missed Text"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    goto :goto_2

    .line 622
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 625
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_8

    .line 626
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 627
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 630
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 631
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and Missed Call"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 633
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 634
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 636
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$700(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 637
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 638
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 641
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 642
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and Missed Text"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 645
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 648
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 649
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 651
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 654
    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_c

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 660
    :cond_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-nez v2, :cond_11

    .line 661
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_e

    .line 662
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 663
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 666
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 667
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and One event Missed Call on landscape"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 669
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 670
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 673
    :cond_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 674
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 676
    :cond_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    goto :goto_4

    .line 679
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2200(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    if-lez v2, :cond_15

    .line 680
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$700(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 681
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 682
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 686
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and One event Missed Text on landscape"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 688
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 689
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 692
    :cond_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 693
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 695
    :cond_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    goto :goto_5

    .line 699
    :cond_15
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_16

    .line 700
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 701
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 704
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 705
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and Missed Call on landscape"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 707
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 708
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 710
    :cond_16
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$700(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1800(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->forceLayout()V

    .line 712
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1900(Lcom/android/internal/policy/impl/EpicLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 715
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2400(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 716
    const-string v2, "EpicLockScreen"

    const-string v2, "Unlock and Missed Text on landscape"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 718
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/EpicLockScreen;->setSoundEffect(I)V

    .line 719
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-virtual {v2, v8}, Lcom/android/internal/policy/impl/EpicLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 722
    :cond_17
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 723
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1600(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 725
    :cond_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1500(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 830
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2, v9}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1902(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 831
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1200(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x10803fd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 832
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$100(Lcom/android/internal/policy/impl/EpicLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080401

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 833
    iget-object v2, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1300(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/EpicLockScreen$1;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1400(Lcom/android/internal/policy/impl/EpicLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/EpicLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
