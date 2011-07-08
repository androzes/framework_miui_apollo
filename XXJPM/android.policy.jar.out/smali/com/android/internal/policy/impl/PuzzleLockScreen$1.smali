.class Lcom/android/internal/policy/impl/PuzzleLockScreen$1;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 417
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 418
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 419
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v1, v4

    .line 424
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 425
    .local v2, rawY:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 426
    .local v3, width2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 428
    .local v0, height2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 470
    :cond_0
    :goto_0
    return v6

    .line 432
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 433
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 434
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 435
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 436
    const-string v4, "PuzzleLockScreen"

    const-string v5, "Puzzle lockscreen receives touch event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_3

    .line 447
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 452
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 453
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 454
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    goto/16 :goto_0

    .line 461
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 466
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 467
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
