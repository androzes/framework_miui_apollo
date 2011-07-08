.class Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;
.super Ljava/lang/Object;
.source "SGS2LockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "com.android.music.musicservicecommand.rew.up"

    const-string v5, "musicplayer.from"

    const-string v4, "lockscreen"

    .line 514
    const-string v1, "Nawoong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evnet ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102025f

    if-ne v1, v2, :cond_0

    .line 519
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    return v6

    .line 522
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1100(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1500(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 527
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1402(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;Z)Z

    .line 530
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 535
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 547
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1300(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1402(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;Z)Z

    .line 550
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 555
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 560
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 565
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
