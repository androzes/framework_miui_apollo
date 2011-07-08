.class Lcom/android/internal/policy/impl/GlassLockScreen$3;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 374
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 375
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 376
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v1, v4

    .line 386
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 387
    .local v2, rawY:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 388
    .local v3, width2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 390
    .local v0, height2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v7

    .line 439
    :goto_1
    return v4

    .line 394
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$302(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 395
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 396
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 397
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 398
    const-string v4, "GlassLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Glasslock receives touch event : values = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$702(Z)Z

    move v4, v7

    .line 406
    goto :goto_1

    .line 410
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_3

    .line 416
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 417
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 422
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 423
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setSoundEffect(I)V

    .line 424
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 430
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_0

    .line 435
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1102(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 436
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
