.class Lcom/android/internal/policy/impl/SGS2LockScreen$3;
.super Ljava/lang/Object;
.source "SGS2LockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SGS2LockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 375
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 376
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 377
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const-string v9, "SGS2LockScreen"

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .line 387
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 388
    .local v2, rawY:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    .line 389
    .local v5, width2:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 391
    .local v0, height2:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v8

    .line 453
    :goto_1
    return v6

    .line 395
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$302(Lcom/android/internal/policy/impl/SGS2LockScreen;I)I

    .line 396
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$402(Lcom/android/internal/policy/impl/SGS2LockScreen;I)I

    .line 397
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$300(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$502(Lcom/android/internal/policy/impl/SGS2LockScreen;I)I

    .line 398
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$602(Lcom/android/internal/policy/impl/SGS2LockScreen;I)I

    .line 399
    const-string v6, "SGS2LockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SGS2lock receives touch event : values = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$700()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$700()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$800(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$702(Z)Z

    move v6, v8

    .line 407
    goto :goto_1

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$300(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$500(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$900(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    if-gt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$300(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$500(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$900(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    neg-int v7, v7

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1000(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    if-gt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1000(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    neg-int v7, v7

    if-ge v6, v7, :cond_4

    .line 417
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 418
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1100(Lcom/android/internal/policy/impl/SGS2LockScreen;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 420
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1102(Lcom/android/internal/policy/impl/SGS2LockScreen;Z)Z

    .line 422
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_sounds_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 423
    const-string v6, "file:///system/media/audio/ui/TW_Unlock_SGS2.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 424
    .local v4, soundUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1200(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 426
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_3

    .line 428
    invoke-virtual {v3, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 429
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_0

    .line 433
    :cond_3
    const-string v6, "SGS2LockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    .end local v3           #sfx:Landroid/media/Ringtone;
    .end local v4           #soundUri:Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$500(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$600(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->moveTo(II)V

    goto/16 :goto_0

    .line 449
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1102(Lcom/android/internal/policy/impl/SGS2LockScreen;Z)Z

    .line 450
    iget-object v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$300(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreen;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen$3;->moveTo(II)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
